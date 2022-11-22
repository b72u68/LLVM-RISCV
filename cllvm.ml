(* IIT CS 443 - Fall 2022 *)
(* C to LLVM Compiler *)
(* Project 3 *)
(* Your name(s) here *)

open C.Ast
module L = LLVM.Ast
open C.Typecheck

exception CompileError of string * loc

exception Unimplemented

let new_temp = L.new_temp
let new_label = L.new_label

let compile_var s = L.Var (L.Local s)

let btype = L.TInteger 1
let ctype = L.TInteger 8
let itype = L.TInteger 32

(* Will probably be useful *)
let word_size = Config.word_size
let malloc = L.Global "malloc"
                 
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

and compile_stmt ctx break_lbl cont_lbl (s: t_stmt): L.inst list =
  raise Unimplemented

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
