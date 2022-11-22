(* MiniIITRAN to LLVM Compiler *)
(* IIT CS 443, Fall 2022 *)
(* Project 2 *)
(* Your name(s) here *)

open IITRAN.Ast
module L = LLVM.Ast

exception CompileError of string * loc

let result_var = L.Local "result"
let itype = L.TInteger 64
let btype = L.TInteger 1

let compile_typ =
  function TInteger | TCharacter -> itype
           | TLogical -> btype

let ctr = ref 0
let new_temp () =
  ctr := !ctr + 1;
  L.Local ("temp" ^ (string_of_int !ctr))

let lctr = ref 0
let new_label () =
  lctr := !lctr + 1;
  "label" ^ (string_of_int !lctr)

let compile_var s = L.Var (L.Local s)

let move (dest: L.var) (typ: L.typ) (value: L.value) =
  L.ISet (dest, typ, value)

exception Unimplemented
  
(* You should probably define some other functions here *)

let rec compile_stmt (s: t_stmt) : L.inst list =
  raise Unimplemented

let compile_prog (p: t_stmt list) : L.prog =
  [L.make_func "main" itype []
     ((L.ILabel "main__entry")::
        (List.concat (List.map compile_stmt p))
      @ [L.IRet (Some (itype, L.Var result_var))]
  )]
