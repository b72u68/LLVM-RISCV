exception RuntimeError of Iit_ast.loc * string

module Env = Varmap
type value = int
type env = (value * Iit_ast.typ) Env.t

val empty_env : env
val val_of_const : Iit_ast.const -> int * Iit_ast.typ

val interp_exp : env -> 'a Iit_ast.exp -> value * Iit_ast.typ * env
val interp_stmt : env -> 'a Iit_ast.stmt -> env
