
(* The type of tokens. *)

type token = 
  | WHILE
  | TLOGICAL
  | TINT
  | TIMES
  | TCHARACTER
  | STOP
  | RPAREN
  | PLUS
  | OR
  | NOT
  | NEG
  | NE
  | MINUS
  | LT
  | LPAREN
  | LE
  | INT of (int)
  | IF
  | IDENT of (string)
  | GT
  | GE
  | EQUAL
  | EOF
  | END
  | ELSE
  | DO
  | DIV
  | COMMA
  | CLG
  | CINT
  | CHAR of (char)
  | CCHAR
  | ASSIGN
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Iit_ast.p_stmt list)
