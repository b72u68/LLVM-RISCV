
(* The type of tokens. *)

type token = 
  | WITH
  | UNIT
  | TUNIT
  | TRUE
  | TLIST
  | TINT
  | TIMES
  | THEN
  | TBOOL
  | RPAREN
  | REC
  | PLUS
  | PIPE
  | OR
  | NUM of (int)
  | NOT
  | NIL
  | NEG
  | NE
  | MINUS
  | MATCH
  | LT
  | LPAREN
  | LET
  | LE
  | IN
  | IF
  | IDENT of (string)
  | GT
  | GE
  | FUN
  | FALSE
  | EQUAL
  | EOF
  | ELSE
  | DOUBLESEMI
  | DIV
  | CONS
  | COMMA
  | COLON
  | ARROW
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ml_ast.p_prog)
