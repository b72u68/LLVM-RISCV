(** IIT CS443 **)
(** ML to C Compiler **)
(** Project 4 **)
(** Your name(s) here **)
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

exception Unimplemented

(* Compile the body of a function *)
let rec compile_body (env: env) (name: string) (x: var) (tx: typ) (body: t_exp)
  =
  raise Unimplemented

(* Compile an expression *)
and compile_exp (env: env) (e: t_exp)
          : Ca.p_stmt list * Ca.p_exp * closure_typ list =
  raise Unimplemented

let lib_structs =
  [(Ca.DStructDef (list_struct, list_fields));
   (Ca.DStructDef (pair_struct, pair_fields));
   (Ca.DStructDef (clos_struct, clos_fields))
  ]
let lib_structs = List.map (fun d -> Ca.mk_def d dummy_loc) lib_structs
                     
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
