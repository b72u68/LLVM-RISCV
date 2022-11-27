(** IIT CS443 **)
(** ML to C Compiler **)
(** Project 4 **)
(** SOLUTIONS **)
open ML.Ast

module Ca = C.Ast

type env = (var * int) list

type closure_typ = { cname : string;
                     cret : Ca.typ;
                     cparam : string * Ca.typ;
                     cbody: Ca.p_stmt }

(* The default type for values of unknown type *)
let def_typ = Ca.TInt
(* The default type of function pointers *)
let fptr_typ = Ca.TFunction (Ca.TInt, [])

let cloc_of_mlloc (stpos, _) = (stpos.Lexing.pos_fname, stpos.Lexing.pos_lnum)
let dummy_loc = ("", 0)
let mk_exp e = { Ca.edesc = e;
                 Ca.eloc = dummy_loc;
                 Ca.einfo = ()
               }
let mk_lhs e = { Ca.ldesc = e;
                 Ca.lloc = dummy_loc;
                 Ca.linfo = ()
               }
let mk_stmt s = { Ca.sdesc = s;
                  Ca.sloc = dummy_loc;
                }

(* Convenience functions *)

(* Produce code to declare and initialize a struct with given values for fields
 *)
let init_struct (stype: string) (fields : (string * Ca.p_exp) list) 
: Ca.p_stmt list * Ca.p_exp * closure_typ list =
  let svar = new_var () in
  ((mk_stmt (Ca.SDecl (svar, Ca.TStruct stype, Some (mk_exp (ENewStruct stype)))))
   ::
     (List.fold_left
        (fun ss (f, v) ->
          (mk_stmt (Ca.SExp (mk_exp (Ca.EAssign (mk_lhs (LHField (svar, (), f)),
                                               v)))))
          ::ss
        )
        []
        fields)
  ,
    mk_exp (EVar svar),
  []
  )


let mk_assign v e =
  mk_exp (Ca.EAssign (mk_lhs (Ca.LHVar v), e))

let mk_assign_s v e =
  mk_stmt (Ca.SExp (mk_assign v e))

let mk_cast_e e t =
  mk_exp (Ca.ECast (e, t))

let mk_cast e t = mk_cast_e (mk_exp e) t

(* Definitions for compiling lists *)
let list_struct : string = "__list"
let list_hd : string = "list_hd"
let list_tl : string = "list_tl"
let list_fields : (string * Ca.typ) list =
  [(list_hd, def_typ); (list_tl, Ca.TStruct list_struct)]
let compile_nil : Ca.p_exp =
  mk_exp (Ca.ECast (mk_exp (Ca.EConst (Ca.CInt 0)), Ca.TStruct list_struct))
let compile_cons h t : Ca.p_stmt list * Ca.p_exp * closure_typ list =
  init_struct
    list_struct
    [(list_hd, h); (list_tl, t)]

(* Definitions for compiling pairs *)
let pair_struct : string = "__pair"
let pair_fst : string = "pair_fst"
let pair_snd : string = "pair_snd"
let pair_fields = [(pair_fst, def_typ); (pair_snd, def_typ)]

(* Definitions for compiling environments *)
let env_var : string = "__env"
let env_type : Ca.typ = Ca.TStruct list_struct
let lookup_fun = "__lookup"

(* Produce code to get the ith value in the environment, cast to type t *)
let lookup_in_env i t =
  ([],
   mk_cast (Ca.ECall (mk_exp (Ca.EVar lookup_fun),
                      [mk_exp (Ca.EConst (Ca.CInt i));
                       mk_exp (Ca.EVar env_var)])) t,
   [])

    (* The C code for the "lookup" function.
     * Don't confuse this with lookup_in_env, which is what you will call
     * from your code, to generate a call to lookup.
     * This isn't a function, it's just a pile of compiled C code *)
let lookup =
  let ivar = "i" in
  let evar = env_var in
  Ca.mk_def
    (Ca.DFun
    (lookup_fun,
     Ca.TFunction (def_typ, [(Ca.TInt, ivar); (env_type, env_var)]),
     mk_stmt
       (Ca.SBlock
          [mk_stmt (Ca.SWhile (mk_exp (Ca.EBinop (Ca.BGt, mk_exp (Ca.EVar ivar),
                                                  mk_exp (Ca.EConst (Ca.CInt 0)))),
                               mk_stmt
                                 (Ca.SBlock
                                    [mk_assign_s
                                       evar
                                       (mk_exp (Ca.EField (mk_exp (Ca.EVar evar),
                                                           list_tl)));
                                     mk_assign_s
                                       ivar
                                       (mk_exp
                                          (Ca.EBinop (Ca.BSub,
                                                      mk_exp (Ca.EVar ivar),
                                                      mk_exp (Ca.EConst (Ca.CInt 1)))))]
                                 )
             ));
           mk_stmt (Ca.SReturn
                      (Some
                         (mk_exp
                            (Ca.EField (mk_exp (Ca.EVar evar), list_hd)))))
       ])
    )
    )
    dummy_loc

(* Generate code to extend the environment with variable x, bound to
 * value v, and add it to the environment record. *)
(* Returns the C code to extend the env, and the new environment record *)
let extend_env env x v
  : (Ca.p_stmt list * Ca.p_exp * closure_typ list) * (string * int) list =
  let (is, e, c) = compile_cons (mk_cast_e v def_typ) (mk_exp (Ca.EVar env_var))
  in
  ((is @ [mk_assign_s env_var e], mk_exp (Ca.EVar env_var), c),
   (x, 0)::(List.map (fun (x, n) -> (x, n + 1)) env)
  )

(* Add a placeholder for variable x to the environment record. *)
let extend_with_placeholder env x =
  (x, 0)::(List.map (fun (x, n) -> (x, n + 1)) env)

(* Pop the first entry from both the environment and environment record
* when we leave a scope. Returns a pair of the C code to do the pop, and the
* new environment record. *)
let pop_env env =
  match env with
  | _::t ->
     (([mk_assign_s env_var
          (mk_exp (Ca.EField (mk_exp (Ca.EVar env_var), list_tl)))],
       [],
       []),
     List.map (fun (x, n) -> (x, n - 1)) env)
  | _ -> failwith "empty env"

(* Definitions for compiling closures *)
let clos_struct : string = "__clos"
let clos_env : string = "clos_env"
let clos_fun : string = "clos_fun"
let clos_fields = [(clos_env, env_type); (clos_fun, fptr_typ)]


let rec compile_typ t =
  match t with
  | TInt -> Ca.TInt
  | TBool -> Ca.TBool
  | TUnit -> Ca.TInt
  | TList _ -> Ca.TStruct list_struct
  | TArrow (t1, t2) -> Ca.TStruct clos_struct
  | TProd _ -> Ca.TStruct pair_struct

let compile_const c =
  match c with
  | CNum n -> ([], mk_exp (Ca.EConst (Ca.CInt n)), [])
  | CBool b ->
     ([], mk_cast (Ca.EConst (Ca.CInt (if b then 1 else 0))) Ca.TBool, [])
  | CTriv -> ([], mk_exp (Ca.EConst (Ca.CInt 0)), [])
  | CNil -> ([], compile_nil, [])

let compile_bop =
  function BAdd -> Ca.BAdd | BSub -> Ca.BSub | BMul -> Ca.BMul
           | BDiv -> Ca.BDiv | BAnd -> Ca.BAnd | BOr -> Ca.BOr
           | BGt -> Ca.BGt | BGe -> Ca.BGe | BLt -> Ca.BLt
           | BLe -> Ca.BLe | BNe -> Ca.BNe | BEq -> Ca.BEq

(* Compile the body of a function *)
let rec compile_body (env: env) (name: string) (x: var) (tx: typ) (body: t_exp)
  =
  let ((extis, _, extc), env') = extend_env env x (mk_exp (Ca.EVar x)) in
  let (bodyis, body', bc) = compile_exp env' body in
  let n = new_mangle name in
  let clos =
    { cname = n;
      cret = compile_typ body.einfo;
      cparam = (x, compile_typ tx);
      cbody = mk_stmt (Ca.SBlock (extis @ bodyis @ [mk_stmt
                                                     (Ca.SReturn (Some body'))]))
    }
  in
  let (is, e, c) =
    init_struct
      clos_struct
      [(clos_fun, mk_cast (Ca.EVar n) fptr_typ);
       (clos_env, mk_exp (Ca.EVar env_var))]
  in
  (is, e, clos::(bc @ c))

(* Compile an expression *)
and compile_exp (env: env) (e: t_exp)
          : Ca.p_stmt list * Ca.p_exp * closure_typ list =
    match e.edesc with
    | EVar v ->
       (try
          lookup_in_env (List.assoc v env) (compile_typ e.einfo)
        with Not_found ->
          ([], mk_exp (Ca.EVar v), []))
    | EConst c -> compile_const c
    | EBinop (b, e1, e2) ->
       let (is1, e1', c1) = compile_exp env e1 in
       let (is2, e2', c2) = compile_exp env e2 in
       (is1 @ is2,
        mk_exp (Ca.EBinop (compile_bop b, e1', e2')),
        c1 @ c2)
    | EUnop (u, e1) ->
        let (is1, e1', c1) = compile_exp env e1 in
        (is1, mk_exp (Ca.EUnop ((match u with UNot -> Ca.UNot | UNeg -> Ca.UNeg),
                               e1')),
         c1)
    | EFun (x, t, body) -> compile_body env "fun" x t body
    | EIf (e1, e2, e3) ->
       let (is1, e1', c1) = compile_exp env e1 in
       let (is2, e2', c2) = compile_exp env e2 in
       let (is3, e3', c3) = compile_exp env e3 in
       let v = new_var () in
       ([mk_stmt (Ca.SDecl (v, compile_typ e2.einfo, None))]
        @ is1
        @ [
            mk_stmt (Ca.SIf (e1', mk_stmt (Ca.SBlock (is2 @ [mk_assign_s v e2'])),
                            mk_stmt (Ca.SBlock (is3 @ [mk_assign_s v e3']))))
          ]
       ,
         mk_exp (Ca.EVar v)
       , c1 @ c2 @ c3)
    | ELet (x, _, e1, e2) ->
       let (is1, e1', c1) = compile_exp env e1 in
       let ((extis, _, extc), env') = extend_env env x e1' in
       let (is2, e2', c2) = compile_exp env' e2 in
       let ((popis, _, popc), env'') = pop_env env' in
       let temp = new_var () in
       (is1 @ extis @ is2
        @ [mk_stmt (Ca.SDecl (temp, compile_typ e2.einfo, Some e2'))]
        @ popis,
        mk_exp (Ca.EVar temp),
        c1 @ extc @ c2 @ popc)
    | ELetFun (_, f, x, t, _, body, e2) ->
       (* Because of alpha conversion, we can add f to the environment
        * whether or not the function is recursive. *)
       let env' = extend_with_placeholder env f in
       let (fis, fe, fc) = compile_body env' f x t body in
       let ((extis, _, extc), env') = extend_env env f fe in
       let (is2, e2', c2) = compile_exp env' e2 in
       let ((popis, _, popc), env'') = pop_env env' in
       let temp = new_var () in
       let fevar = match fe.edesc with
         | Ca.EVar v -> v
         | _ -> failwith "compile_body should return a var"
       in
       (fis @ extis
        (* Backpatch fe's environment field to point to the new environment
         * with fe bound *)
        @ [mk_stmt (Ca.SExp
                      (mk_exp
                         (Ca.EAssign
                            (mk_lhs (Ca.LHField (fevar, (), clos_env)),
                             mk_exp (Ca.EVar env_var)))))]
        @ is2
        @ [mk_stmt (Ca.SDecl (temp, compile_typ e2.einfo, Some e2'))]
        @ popis,
        mk_exp (Ca.EVar temp),
        fc @ extc @ c2 @ popc)
    | ELetPair (x, y, e1, e2) ->
       let (is1, e1', c1) = compile_exp env e1 in
       let pairv = new_var () in
       let ((extis1, _, extc1), env') =
         extend_env env x (mk_exp (Ca.EField (mk_exp (Ca.EVar pairv), pair_fst)))
       in
       let ((extis2, _, extc2), env') =
         extend_env env' y (mk_exp (Ca.EField (mk_exp (Ca.EVar pairv), pair_snd)))
       in
       let (is2, e2', c2) = compile_exp env' e2 in
       let ((popis1, _, popc1), env') = pop_env env' in
       let ((popis2, _, popc2), env') = pop_env env' in
       let temp = new_var () in
       (is1
        @ [mk_stmt (Ca.SDecl (pairv, compile_typ e1.einfo, Some e1'))]
        @ extis1 @ extis2
        @ is2
        @ [mk_stmt (Ca.SDecl (temp, compile_typ e2.einfo, Some e2'))]
        @ popis1 @ popis2,
        mk_exp (Ca.EVar temp),
        c1 @ extc1 @ extc2 @ c2 @ popc1 @ popc2)
    | EApp (e1, e2) ->
       let (is1, e1', c1) = compile_exp env e1 in
       let (is2, e2', c2) = compile_exp env e2 in
       let (rtyp, ftyp) =
         match e1.einfo with
         | TArrow (t1, t2) ->
            let rtyp = compile_typ t2 in
            (rtyp,
             Ca.TFunction (rtyp,
                           [(compile_typ t1, "arg");
                            (env_type, "__env")])
            )
         | _ -> failwith "expected fn"
       in
       let v = new_var () in
       let vret = new_var () in
       let calle =
         mk_exp (Ca.ECall
                   (mk_cast (Ca.EField (mk_exp (Ca.EVar v), clos_fun)) ftyp,
                    [e2'; mk_exp (Ca.EField (mk_exp (Ca.EVar v), clos_env))]))
       in
       (is1 @ is2 @
          [mk_stmt (Ca.SDecl (v, compile_typ (e1.einfo), Some e1'));
           mk_stmt (Ca.SDecl (vret, rtyp, Some calle))]
       , mk_exp (Ca.EVar vret)
       , c1 @ c2)
    | EMatchList (e1, e2, h, t, e3) ->
       let (is1, e1', c1) = compile_exp env e1 in
       let lv = new_var () in
       let (is2, e2', c2) = compile_exp env e2 in
       let listt =
         match e1.einfo with
         | TList ty -> ty
         | _ -> failwith "Error: list not of list type"
       in
       let ((extis1, _, extc1), env') =
         extend_env env h (mk_cast (Ca.EField (mk_exp (Ca.EVar lv), list_hd))
                             (compile_typ listt))
       in
       let ((extis2, _, extc2), env') =
         extend_env env' t (mk_exp (Ca.EField (mk_exp (Ca.EVar lv), list_tl)))
       in
       let (is3, e3', c3) = compile_exp env' e3 in
       let ((popis1, _, popc1), env') = pop_env env' in
       let ((popis2, _, popc2), env') = pop_env env' in
       let v = new_var () in
       (is1
        @
          [mk_stmt (Ca.SDecl (lv, compile_typ e1.einfo, Some e1'));
           mk_stmt (Ca.SDecl (v, compile_typ e2.einfo, None));
           mk_stmt (Ca.SIf (mk_exp (Ca.EBinop (Ca.BEq,
                                             mk_cast_e e1' Ca.TInt,
                                             mk_exp (Ca.EConst (Ca.CInt 0)))),
                           mk_stmt (Ca.SBlock (is2 @ [mk_assign_s v e2'])),
                           mk_stmt (Ca.SBlock
                                      (extis1 @ extis2 @ is3 @
                                         [mk_assign_s v e3'] @ popis1 @ popis2))
             ))
          ],
        mk_exp (Ca.EVar v),
        c1 @ c2 @ extc1 @ extc2 @ c3 @ popc1 @ popc2)
    | EPair (e1, e2) ->
       let (is1, e1', c1) = compile_exp env e1 in
       let (is2, e2', c2) = compile_exp env e2 in
       let (pis, pe, pc) = init_struct pair_struct
                             [(pair_fst, mk_exp (Ca.ECast (e1', Ca.TInt)));
                              (pair_snd, mk_exp (Ca.ECast (e2', Ca.TInt)))]
       in
       (is1 @ is2 @ pis, pe, c1 @ c2 @ pc)
    | ECons (e1, e2) ->
       let (is1, e1', c1) = compile_exp env e1 in
       let (is2, e2', c2) = compile_exp env e2 in
       let (pis, pe, pc) = init_struct list_struct
                             [(list_hd, mk_exp (Ca.ECast (e1', Ca.TInt)));
                              (list_tl, e2')]
       in
       (is1 @ is2 @ pis, pe, c1 @ c2 @ pc)
    | EAnnot (e, _) -> compile_exp env e

let lib_structs =
  [(Ca.DStructDef (list_struct, list_fields));
   (Ca.DStructDef (pair_struct, pair_fields));
   (Ca.DStructDef (clos_struct, clos_fields))
  ]
let lib_structs = List.map (fun d -> Ca.mk_def d dummy_loc) lib_structs

let compile_exp env e =
  compile_exp env (ML.Alpha.alpha_prog e)

let compile_prog p =
  let (mainis, maine, c) = compile_exp [] p in
  let mainis =
    (Ca.mk_stmt
       (Ca.SDecl (env_var, Ca.TStruct list_struct, Some (compile_nil)))
       dummy_loc)
    ::mainis
  in
  let adddefs (sds, fds) c =
    let tfun = Ca.TFunction (c.cret,
                            [(snd c.cparam, fst c.cparam);
                             (env_type, env_var)])
    in
    (sds,
     (Ca.mk_def (Ca.DFun (c.cname,
                          tfun,
                          c.cbody))
        dummy_loc)::fds
    )
  in
  let main =
    Ca.mk_def
      (Ca.DFun ("main",
               Ca.TFunction (compile_typ p.einfo, []),
               mk_stmt (Ca.SBlock (mainis @ [mk_stmt
                                              (Ca.SReturn (Some maine))]))
      ))
      dummy_loc
  in

  let (sds, fds) = List.fold_left adddefs (lib_structs, []) c in
  sds @ [lookup] @ fds @ [main]
