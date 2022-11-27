(* IIT CS 443 - Fall 2022 *)
(* C to LLVM Compiler *)
(* Project 3 *)
(* SOLUTIONS *)

open C.Ast
module L = LLVM.Ast
open C.Typecheck

exception CompileError of string * loc

let new_temp = L.new_temp
let new_label = L.new_label

let compile_var s = L.Var (L.Local s)

let btype = L.TInteger 1
let ctype = L.TInteger 8
let itype = L.TInteger 32
                 
let rec compile_typ ctx t =
  match t with
  | TVoid -> L.TVoid
  | TBool -> btype
  | TChar -> ctype
  | TInt -> itype
  | TArray t -> L.TPointer (compile_typ ctx t)
  | TStruct s -> L.TPointer (L.TStruct s)
  | TFunction (rt, args) ->
     L.TPointer (L.TFunction
                   (compile_typ ctx rt,
                    List.map (fun (t, _) -> compile_typ ctx t) args))
  
let move (dest: L.var) (typ: L.typ) (value: L.value) =
  L.ISet (dest, typ, value)

  
let rec compile_binop ctx (dest: L.var) (b: bop) (e1: t_exp) (e2: t_exp)
        : L.inst list =
  match b with
  | BAnd ->
     let continue_lbl = new_label () in
     let short_lbl = new_label () in
     let join_lbl = new_label () in
     let is = compile_branch_exp ctx e1 continue_lbl short_lbl in
     is @ [L.ILabel short_lbl; move dest btype (L.Const 0); L.IBr join_lbl]
     @ [L.ILabel continue_lbl] @ (compile_exp ctx dest e2)
     @ [L.IBr join_lbl; L.ILabel join_lbl];
  | BOr ->
     let continue_lbl = new_label () in
     let short_lbl = new_label () in
     let join_lbl = new_label () in
     let is = compile_branch_exp ctx e1 short_lbl continue_lbl in
     is @ [L.ILabel short_lbl; move dest btype (L.Const 1); L.IBr join_lbl]
     @ [L.ILabel continue_lbl] @ (compile_exp ctx dest e2)
     @ [L.IBr join_lbl; L.ILabel join_lbl];
  | _ ->
  let dest1 = new_temp () in
  let dest2 = new_temp () in
  let is1 = compile_exp ctx dest1 e1 in
  let is2 = compile_exp ctx dest2 e2 in
  let ty = compile_typ ctx e1.einfo in
  is1 @ is2 @
    (match b with
     | BAdd -> [L.IBinop (dest, L.BAdd, ty, L.Var dest1, L.Var dest2)]
     | BSub -> [L.IBinop (dest, L.BSub, ty, L.Var dest1, L.Var dest2)]
     | BMul -> [L.IBinop (dest, L.BMul, ty, L.Var dest1, L.Var dest2)]
     | BDiv -> [L.IBinop (dest, L.BDiv, ty, L.Var dest1, L.Var dest2)]
     | BAnd -> [L.IBinop (dest, L.BAnd, ty, L.Var dest1, L.Var dest2)]
     | BOr -> [L.IBinop (dest, L.BOr, ty, L.Var dest1, L.Var dest2)]
     | BGt -> [L.ICmp (dest, L.CSGt, ty, L.Var dest1, L.Var dest2)]
     | BGe -> [L.ICmp (dest, L.CSGe, ty, L.Var dest1, L.Var dest2)]
     | BLt -> [L.ICmp (dest, L.CSLt, ty, L.Var dest1, L.Var dest2)]
     | BLe -> [L.ICmp (dest, L.CSLe, ty, L.Var dest1, L.Var dest2)]
     | BNe -> [L.ICmp (dest, L.CNe, ty, L.Var dest1, L.Var dest2)]
     | BEq -> [L.ICmp (dest, L.CEq, ty, L.Var dest1, L.Var dest2)]
    )
and compile_unop ctx (dest: L.var) (u: unop) (e: t_exp) : L.inst list =
  let dest1 = new_temp () in
  let is = compile_exp ctx dest1 e in
  let ty = compile_typ ctx e.einfo in
  is @
    (match u with
     | UNeg -> [L.IBinop (dest, L.BSub, ty, L.Const 0, L.Var dest1)]
     | UNot -> [L.IBinop (dest, L.BXor, ty, L.Const 1, L.Var dest1)]
    )
and compile_branch_exp ctx (e: t_exp) tlabel flabel : L.inst list =
  let dest = new_temp () in
  let is = compile_exp ctx dest e in
  is @ [L.ICondBr (L.Var dest, tlabel, flabel)]
and compile_exp ctx (dest: L.var) (e: t_exp) : L.inst list =
  let (cctx, tds) = ctx in
  match e.edesc with
  | EConst (CChar c) -> [move dest ctype (L.Const (Char.code c))]
  | EConst (CInt i) -> [move dest itype (L.Const i)]
  | EVar v ->
     (match e.einfo with
      | TFunction _ ->
         [move dest (compile_typ ctx e.einfo) (L.Var (L.Global v))]
      | _ ->
         [move dest (compile_typ ctx e.einfo) (compile_var v)]
     )
  | EBinop (b, e1, e2) -> compile_binop ctx dest b e1 e2
  | EAssign ({ldesc = LHVar v}, e2) ->
     (compile_exp ctx (L.Local v) e2)
     @ [move dest (compile_typ ctx e2.einfo) (compile_var v)]
  | EAssign ({ldesc = LHArr (v, e1)}, e2) ->
     let dest1 = new_temp () in
     let dest2 = new_temp () in
     let addr = new_temp () in
     let is1 = compile_exp ctx dest1 e1 in
     let is2 = compile_exp ctx dest2 e2 in
     let ty = compile_typ ctx e2.einfo in
     is1 @ is2 @
       [L.IGetElementPtr
          (addr, ty, L.Local v,
           [itype, L.Var dest1]);
        L.IStore (ty, L.Var dest2, addr);
        move dest ty (L.Var dest2)]
  | EAssign ({ldesc = LHField (v, st, f)}, e2) ->
     (match st with
      | TStruct s ->
         let dest2 = new_temp () in
         let addr = new_temp () in
         let is2 = compile_exp ctx dest2 e2 in
         let ety = compile_typ ctx e2.einfo in
         let sty =
           match compile_typ ctx (TStruct s) with
           | L.TPointer t -> t
           | _ -> failwith "Must be a ptr type"
         in
         let fieldi =
           match get_field_i cctx s f with
           | Some i -> i
           | None -> raise (CompileError ("field not found", e.eloc))
         in
         is2 @
           [L.IGetElementPtr
              (addr, sty, L.Local v,
               [itype, L.Const 0;
                itype, L.Const fieldi]);
            L.IStore (ety, L.Var dest2, addr);
            move dest ety (L.Var dest2)]
      | _ -> raise (CompileError ("accessing mem of non-struct", e.eloc))
     )
  | ENewStruct s ->
     let ty = match compile_typ ctx (TStruct s) with
       | L.TPointer t -> t
       | _ -> failwith "must be a ptr"
     in
     let dest1 = new_temp () in
     [L.ICall (dest1, L.TPointer (L.TInteger 8), Global "malloc",
               [(itype, L.Const (Config.word_size * (L.sizeof tds ty)))]);
      L.ICast (dest, L.CBitcast,
               L.TPointer (L.TInteger 8), Var dest1, L.TPointer ty)]
      (* [L.IAlloca (dest, ty, 1)]*)
  | ENewArray (t, n) ->
     let ty = compile_typ ctx t in
     let dest1 = new_temp () in
     [L.ICall (dest1, L.TPointer (L.TInteger 8), Global "malloc",
               [(itype, L.Const (Config.word_size * (L.sizeof tds ty) * n))]);
      L.ICast (dest, L.CBitcast,
                  L.TPointer (L.TInteger 8), Var dest1, L.TPointer ty)]
  (* [L.IAlloca (dest, ty, n)] *)
  | EUnop (u, e) -> compile_unop ctx dest u e
  | ECall (ef, args) ->
     let destf = new_temp () in
     let dargs = List.map (fun _ -> new_temp ()) args in
     let isf = compile_exp ctx destf ef in
     let isargs = List.map2 (compile_exp ctx) dargs args in
     let rett =
       match ef.einfo with
       | TFunction (t, _) -> compile_typ ctx t
       | _ -> raise (CompileError ("calling non-function", e.eloc))
     in
     let targs = List.map (fun e -> compile_typ ctx e.einfo) args in
     isf @ (List.concat isargs)
     @ [L.ICall (dest, rett, destf,
                 List.map2 (fun t v -> (t, L.Var v)) targs dargs)]
  | EArrIndex (e1, e2) ->
     let dest1 = new_temp () in
     let dest2 = new_temp () in
     let addr = new_temp () in
     let is1 = compile_exp ctx dest1 e1 in
     let is2 = compile_exp ctx dest2 e2 in
     let ety =
       match e1.einfo with
       | TArray t -> compile_typ ctx t
       | _ -> raise (CompileError ("indexing non-array", e.eloc))
     in
     is1 @ is2 @
       [L.IGetElementPtr
          (addr, ety, dest1, [itype, L.Var dest2]);
        L.ILoad (dest, ety, addr)]
  | EField (e1, f) ->
     let dest1 = new_temp () in
     let addr = new_temp () in
     let is1 = compile_exp ctx dest1 e1 in
     let sty =
       match compile_typ ctx e1.einfo with
       | L.TPointer t -> t
       | _ -> failwith "Must be a ptr type"
     in
     let (fieldi, ety) =
       match e1.einfo with
       | TStruct s -> (match get_field_i_and_typ cctx s f with
                       | Some (i, t) -> (i, compile_typ ctx t)
                       | None ->
                          raise (CompileError ("field not found", e.eloc))
                      )
       | _ -> raise (CompileError ("indexing non-array", e.eloc))
     in
     is1 @
       [L.IGetElementPtr
          (addr, sty, dest1,
           [itype, L.Const 0;
            itype, L.Const fieldi]);
        L.ILoad (dest, ety, addr)]
  | ECast (e0, t) ->
     let dest1 = new_temp () in
     let is1 = compile_exp ctx dest1 e0 in
     let it = compile_typ ctx (e0.einfo) in
     let ot = compile_typ ctx t in
     let ct =
       match (it, ot) with
       | (L.TInteger n1, L.TInteger n2) ->
          if n1 > n2 then L.CTrunc
          else if n1 = n2 then L.CBitcast
          else L.CZext
       | (L.TPointer _, L.TPointer _) -> L.CBitcast
       | (L.TInteger _, L.TPointer _) -> L.CInttoptr
       | (L.TPointer _, L.TInteger _) -> L.CPtrtoint
     in
     is1 @ [L.ICast (dest, ct, it, L.Var dest1, ot)]
and compile_stmt ctx break_lbl cont_lbl (s: t_stmt): L.inst list =
  match s.sdesc with
  | SDecl (v, _, Some e) -> compile_exp ctx (L.Local v) e
  | SDecl _ -> []
  | SBlock ss -> List.concat (List.map (compile_stmt ctx break_lbl cont_lbl) ss)
  | SExp e -> compile_exp ctx (new_temp ()) e
  | SIf (e, if_branch, else_branch) ->
     let iflabel = new_label () in
     let elselabel = new_label () in
     let outlabel = new_label () in
     let ifis = compile_stmt ctx break_lbl cont_lbl if_branch in
     let elseis = compile_stmt ctx break_lbl cont_lbl else_branch in
     (compile_branch_exp ctx e iflabel elselabel)
     @ [L.ILabel iflabel]
     @ ifis
     @ [L.IBr outlabel; L.ILabel elselabel]
     @ elseis
     @ [L.IBr outlabel; L.ILabel outlabel]
  | SWhile (e, body) ->
     let testlabel = new_label () in
     let bodylabel = new_label () in
     let outlabel = new_label () in
     let bodyis = compile_stmt ctx (Some outlabel) (Some testlabel) body in
     [L.IBr testlabel; L.ILabel testlabel]
     @ (compile_branch_exp ctx e bodylabel outlabel)
     @ [L.ILabel bodylabel]
     @ bodyis
     @ [L.IBr testlabel; L.ILabel outlabel]
  | SBreak ->
     (match break_lbl with
      | Some l -> [L.IBr l; L.ILabel (new_label ())]
      | None -> raise (CompileError ("Break outside loop", s.sloc))
     )
  | SContinue ->
     (match cont_lbl with
      | Some l -> [L.IBr l; L.ILabel (new_label ())]
      | None -> raise (CompileError ("Break outside loop", s.sloc))
     )
  | SReturn None -> [L.IRet None; L.ILabel (new_label ())]
  | SReturn (Some e) ->
     let dest = new_temp () in
     let eis = compile_exp ctx dest e in
     let ty = compile_typ ctx e.einfo in
     eis @ [L.IRet (Some (ty, L.Var dest)); L.ILabel (new_label ())]

let compile_func ctx (name, t, body) : L.func =
  match t with
  | TFunction (tret, args) ->
     let tret = compile_typ ctx tret in
     let targs = List.map (fun (t, s) -> (compile_typ ctx t, s)) args in
     L.make_func name tret targs
       ((L.ILabel (name ^ "__entry"))::(compile_stmt ctx None None body)
        @ [match tret with
           | L.TVoid -> L.IRet None
           | _ -> L.IRet (Some (tret, Const 0))])
  | _ -> raise (CompileError ("not a function type", ("", 0)))

let rec compile_def ctx d : L.func list =
  match d.ddesc with
  | DFun (s, t, b) -> [compile_func ctx (s, t, b)]
  | _ -> []

let compile_prog (ctx, ds) : L.prog * L.typdefs =
  let tds = Varmap.map (List.map (compile_typ ctx)) (get_typedefs ctx) in
  (List.concat (List.map (compile_def (ctx, tds)) ds), tds)
