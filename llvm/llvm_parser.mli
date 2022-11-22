
(* The type of tokens. *)

type token = 
  | ZEXT
  | XOR
  | TYP
  | TVOID
  | TSTRUCT of (string)
  | TRUNC
  | TO
  | TINT of (int)
  | SUB
  | STORE
  | STAR
  | RSQ
  | RPAREN
  | RET
  | RBRACE
  | PTRTOINT
  | PHI
  | OR
  | NULL
  | MUL
  | LVAR of (string)
  | LSQ
  | LPAREN
  | LOAD
  | LBRACE
  | LABEL
  | KEYWORD of (string)
  | INTTOPTR
  | ICMP
  | GVAR of (string)
  | GETELEMENTPTR
  | EQUAL
  | EOF
  | DIV
  | DEFINE
  | DECLARE
  | CONST of (int)
  | COMMA
  | COLON
  | CALL
  | BR
  | BITCAST
  | AND
  | ALLOCA
  | ADD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Llvm_ast.prog)
