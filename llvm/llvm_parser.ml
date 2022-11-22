
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | ZEXT
    | XOR
    | TYP
    | TVOID
    | TSTRUCT of (
# 53 "llvm_parser.mly"
       (string)
# 15 "llvm_parser.ml"
  )
    | TRUNC
    | TO
    | TINT of (
# 65 "llvm_parser.mly"
       (int)
# 22 "llvm_parser.ml"
  )
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
    | LVAR of (
# 51 "llvm_parser.mly"
       (string)
# 39 "llvm_parser.ml"
  )
    | LSQ
    | LPAREN
    | LOAD
    | LBRACE
    | LABEL
    | KEYWORD of (
# 50 "llvm_parser.mly"
       (string)
# 49 "llvm_parser.ml"
  )
    | INTTOPTR
    | ICMP
    | GVAR of (
# 52 "llvm_parser.mly"
       (string)
# 56 "llvm_parser.ml"
  )
    | GETELEMENTPTR
    | EQUAL
    | EOF
    | DIV
    | DEFINE
    | DECLARE
    | CONST of (
# 54 "llvm_parser.mly"
       (int)
# 67 "llvm_parser.ml"
  )
    | COMMA
    | COLON
    | CALL
    | BR
    | BITCAST
    | AND
    | ALLOCA
    | ADD
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState162
  | MenhirState160
  | MenhirState157
  | MenhirState155
  | MenhirState153
  | MenhirState151
  | MenhirState147
  | MenhirState145
  | MenhirState144
  | MenhirState143
  | MenhirState142
  | MenhirState140
  | MenhirState139
  | MenhirState136
  | MenhirState135
  | MenhirState132
  | MenhirState130
  | MenhirState126
  | MenhirState121
  | MenhirState119
  | MenhirState118
  | MenhirState115
  | MenhirState111
  | MenhirState110
  | MenhirState109
  | MenhirState108
  | MenhirState106
  | MenhirState104
  | MenhirState103
  | MenhirState99
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState91
  | MenhirState85
  | MenhirState84
  | MenhirState83
  | MenhirState68
  | MenhirState65
  | MenhirState58
  | MenhirState57
  | MenhirState53
  | MenhirState52
  | MenhirState50
  | MenhirState49
  | MenhirState47
  | MenhirState43
  | MenhirState34
  | MenhirState33
  | MenhirState30
  | MenhirState29
  | MenhirState26
  | MenhirState24
  | MenhirState20
  | MenhirState17
  | MenhirState14
  | MenhirState5
  | MenhirState0

# 1 "llvm_parser.mly"
  
    open Llvm_ast
    open Lexing
    open Llvm_lexer

    exception SyntaxError

    let syn_err = Llvm_ast.syn_err SyntaxError

    let mk_name s = "p" ^ s
		
    let mk_args loc ops =
      List.map
	(function (t, Var (Local v)) -> (t, v)
		| (_, _) ->
		   syn_err "Argument must be local var" loc
	)
        ops

    let bop_of_s loc =
      function
      | "add" -> BAdd
      | "sub" -> BSub
      | "mul" -> BMul
      | "sdiv" -> BDiv
      | "and" -> BAnd
      | "or" -> BOr
      | "xor" -> BXor
      | _ -> syn_err "Invalid opcode" loc

    let cmp_of_s loc =
      function
      | "eq" -> CEq
      | "ne" -> CNe
      | "sgt" -> CSGt
      | "sge" -> CSGe
      | "slt" -> CSLt
      | "sle" -> CSLe
      | _ -> syn_err "Invalid comparison" loc

    let cast_of_s loc =
      function
      | "bitcast" -> CBitcast
      | "zext" -> CZext
      | "ptrtoint" -> CPtrtoint
      | "inttoptr" -> CInttoptr
      | _ -> syn_err "Invalid opcode" loc

# 201 "llvm_parser.ml"

let rec _menhir_error42 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 206 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error146 : _menhir_env -> (((('ttv_tail * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 215 "llvm_parser.ml"
) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 219 "llvm_parser.ml"
)) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 223 "llvm_parser.ml"
)) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 227 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error141 : _menhir_env -> (((('ttv_tail * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 236 "llvm_parser.ml"
) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 240 "llvm_parser.ml"
)) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 244 "llvm_parser.ml"
)) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 248 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error105 : _menhir_env -> ((((('ttv_tail * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 257 "llvm_parser.ml"
) * Lexing.position))) * (
# 50 "llvm_parser.mly"
       (string)
# 261 "llvm_parser.ml"
)) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 265 "llvm_parser.ml"
)) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 269 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error86 : _menhir_env -> ('ttv_tail * _menhir_state) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 278 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error69 : _menhir_env -> (('ttv_tail * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 287 "llvm_parser.ml"
)) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 291 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error51 : _menhir_env -> (('ttv_tail * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 300 "llvm_parser.ml"
)) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 304 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce38 : _menhir_env -> ('ttv_tail * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 313 "llvm_parser.ml"
)) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 317 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 323 "llvm_parser.ml"
    ))), _endpos_v_, _, (v : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 327 "llvm_parser.ml"
    ))) = _menhir_stack in
    let _endpos = _endpos_v_ in
    let _v : (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 333 "llvm_parser.ml"
    ) = 
# 194 "llvm_parser.mly"
                       ( (t, v) )
# 337 "llvm_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv533) = _menhir_stack in
    let (_endpos : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 346 "llvm_parser.ml"
    )) = _v in
    ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState121 | MenhirState43 | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv527 * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 355 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error42 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv525 * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 367 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | TINT _v ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
              | TSTRUCT _v ->
                  _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
              | TVOID ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv526)
          | RPAREN ->
              _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error42 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv528)
    | MenhirState115 | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv531 * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 393 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error114 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv529 * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 405 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | TINT _v ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
              | TSTRUCT _v ->
                  _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
              | TVOID ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState115
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv530)
          | BR | GVAR _ | KEYWORD _ | LVAR _ | RBRACE | RET | STORE ->
              _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error114 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv532)
    | _ ->
        _menhir_fail ()) : 'freshtv534)

and _menhir_error120 : _menhir_env -> (((('ttv_tail * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 432 "llvm_parser.ml"
) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 436 "llvm_parser.ml"
)) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 440 "llvm_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_cast : _menhir_env -> 'ttv_tail -> (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 449 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv523 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 457 "llvm_parser.ml"
    ) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 461 "llvm_parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TINT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | TSTRUCT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | TVOID ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv524)

and _menhir_run127 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run128 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "llvm_parser.mly"
       (string)
# 485 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v

and _menhir_run129 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "llvm_parser.mly"
       (int)
# 494 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v

and _menhir_goto_binop : _menhir_env -> 'ttv_tail -> (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 503 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv521 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 511 "llvm_parser.ml"
    ) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 515 "llvm_parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TINT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | TSTRUCT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | TVOID ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv522)

and _menhir_error76 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 534 "llvm_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce64 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 543 "llvm_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_v_, _menhir_s, (v : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 549 "llvm_parser.ml"
    )), _startpos_v_) = _menhir_stack in
    let _endpos = _endpos_v_ in
    let _v : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 555 "llvm_parser.ml"
    ) = 
# 188 "llvm_parser.mly"
              ( Var v )
# 559 "llvm_parser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_goto_value : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 566 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv439 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 576 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 580 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) : 'freshtv440)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 588 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 592 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error51 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv441 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 604 "llvm_parser.ml"
              )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 608 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | TINT _v ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
              | TSTRUCT _v ->
                  _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
              | TVOID ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState52
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv442)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error51 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv444)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv447 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 632 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 636 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv445 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 642 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 646 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 651 "llvm_parser.ml"
        ))), _endpos_v_, _, (v : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 655 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 660 "llvm_parser.ml"
        ) = 
# 146 "llvm_parser.mly"
    ( IRet (Some (t, v)) )
# 664 "llvm_parser.ml"
         in
        _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)) : 'freshtv448)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv473 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 672 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 676 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error69 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv471 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 688 "llvm_parser.ml"
              )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 692 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | LABEL ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((('freshtv467 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 702 "llvm_parser.ml"
                  )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 706 "llvm_parser.ml"
                  ))) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | LVAR _v ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : (((('freshtv463 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 716 "llvm_parser.ml"
                      )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 720 "llvm_parser.ml"
                      )))) = Obj.magic _menhir_stack in
                      let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                      let (_v : (
# 51 "llvm_parser.mly"
       (string)
# 726 "llvm_parser.ml"
                      )) = _v in
                      let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                      ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                      let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | COMMA ->
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : ((((('freshtv459 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 738 "llvm_parser.ml"
                          )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 742 "llvm_parser.ml"
                          )))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 746 "llvm_parser.ml"
                          ) * Lexing.position) = Obj.magic _menhir_stack in
                          ((let _menhir_env = _menhir_discard _menhir_env in
                          let _tok = _menhir_env._menhir_token in
                          match _tok with
                          | LABEL ->
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : (((((('freshtv455 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 756 "llvm_parser.ml"
                              )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 760 "llvm_parser.ml"
                              )))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 764 "llvm_parser.ml"
                              ) * Lexing.position)) = Obj.magic _menhir_stack in
                              ((let _menhir_env = _menhir_discard _menhir_env in
                              let _tok = _menhir_env._menhir_token in
                              match _tok with
                              | LVAR _v ->
                                  let (_menhir_env : _menhir_env) = _menhir_env in
                                  let (_menhir_stack : ((((((('freshtv451 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 774 "llvm_parser.ml"
                                  )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 778 "llvm_parser.ml"
                                  )))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 782 "llvm_parser.ml"
                                  ) * Lexing.position))) = Obj.magic _menhir_stack in
                                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                                  let (_v : (
# 51 "llvm_parser.mly"
       (string)
# 788 "llvm_parser.ml"
                                  )) = _v in
                                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                                  ((let _menhir_env = _menhir_discard _menhir_env in
                                  let (_menhir_env : _menhir_env) = _menhir_env in
                                  let (_menhir_stack : ((((((('freshtv449 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 796 "llvm_parser.ml"
                                  )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 800 "llvm_parser.ml"
                                  )))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 804 "llvm_parser.ml"
                                  ) * Lexing.position))) = Obj.magic _menhir_stack in
                                  let (_endpos_l2_ : Lexing.position) = _endpos in
                                  let ((l2 : (
# 51 "llvm_parser.mly"
       (string)
# 810 "llvm_parser.ml"
                                  )) : (
# 51 "llvm_parser.mly"
       (string)
# 814 "llvm_parser.ml"
                                  )) = _v in
                                  let (_startpos_l2_ : Lexing.position) = _startpos in
                                  ((let ((((_menhir_stack, _menhir_s), _, _), _endpos_v_, _, (v : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 820 "llvm_parser.ml"
                                  ))), _endpos_l1_, (l1 : (
# 51 "llvm_parser.mly"
       (string)
# 824 "llvm_parser.ml"
                                  )), _startpos_l1_) = _menhir_stack in
                                  let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 829 "llvm_parser.ml"
                                  ) = 
# 143 "llvm_parser.mly"
    ( ICondBr (v, l1, l2)
    )
# 834 "llvm_parser.ml"
                                   in
                                  _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)
                              | _ ->
                                  assert (not _menhir_env._menhir_error);
                                  _menhir_env._menhir_error <- true;
                                  let (_menhir_env : _menhir_env) = _menhir_env in
                                  let (_menhir_stack : ((((((('freshtv453 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 844 "llvm_parser.ml"
                                  )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 848 "llvm_parser.ml"
                                  )))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 852 "llvm_parser.ml"
                                  ) * Lexing.position))) = Obj.magic _menhir_stack in
                                  ((let ((_menhir_stack, _, _menhir_s, _), _, _, _) = _menhir_stack in
                                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv454)) : 'freshtv456)
                          | _ ->
                              assert (not _menhir_env._menhir_error);
                              _menhir_env._menhir_error <- true;
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : (((((('freshtv457 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 863 "llvm_parser.ml"
                              )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 867 "llvm_parser.ml"
                              )))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 871 "llvm_parser.ml"
                              ) * Lexing.position)) = Obj.magic _menhir_stack in
                              ((let ((_menhir_stack, _, _menhir_s, _), _, _, _) = _menhir_stack in
                              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)) : 'freshtv460)
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : ((((('freshtv461 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 882 "llvm_parser.ml"
                          )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 886 "llvm_parser.ml"
                          )))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 890 "llvm_parser.ml"
                          ) * Lexing.position) = Obj.magic _menhir_stack in
                          ((let ((_menhir_stack, _, _menhir_s, _), _, _, _) = _menhir_stack in
                          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : (((('freshtv465 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 901 "llvm_parser.ml"
                      )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 905 "llvm_parser.ml"
                      )))) = Obj.magic _menhir_stack in
                      ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)) : 'freshtv468)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((('freshtv469 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 916 "llvm_parser.ml"
                  )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 920 "llvm_parser.ml"
                  ))) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error69 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv474)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv493 * _menhir_state) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 933 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error86 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv491 * _menhir_state) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 945 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | LVAR _v ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv487 * _menhir_state) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 955 "llvm_parser.ml"
                  ))) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_v : (
# 51 "llvm_parser.mly"
       (string)
# 961 "llvm_parser.ml"
                  )) = _v in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                  let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | RSQ ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv483 * _menhir_state) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 973 "llvm_parser.ml"
                      ))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 977 "llvm_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv481 * _menhir_state) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 984 "llvm_parser.ml"
                      ))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 988 "llvm_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let (((_menhir_stack, _menhir_s), _endpos_v_, _, (v : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 993 "llvm_parser.ml"
                      ))), _endpos_l_, (l : (
# 51 "llvm_parser.mly"
       (string)
# 997 "llvm_parser.ml"
                      )), _startpos_l_) = _menhir_stack in
                      let _v : (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 1002 "llvm_parser.ml"
                      ) = 
# 209 "llvm_parser.mly"
                                     ( (l, v) )
# 1006 "llvm_parser.ml"
                       in
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : 'freshtv479) = _menhir_stack in
                      let (_menhir_s : _menhir_state) = _menhir_s in
                      let (_v : (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 1014 "llvm_parser.ml"
                      )) = _v in
                      ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : 'freshtv477 * _menhir_state * (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 1021 "llvm_parser.ml"
                      )) = Obj.magic _menhir_stack in
                      ((if _menhir_env._menhir_error then
                        _menhir_error90 _menhir_env (Obj.magic _menhir_stack)
                      else
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | COMMA ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : 'freshtv475 * _menhir_state * (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 1033 "llvm_parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | LSQ ->
                                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState91
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv476)
                        | BR | GVAR _ | KEYWORD _ | LVAR _ | RBRACE | RET | STORE ->
                            _menhir_reduce8 _menhir_env (Obj.magic _menhir_stack)
                        | _ ->
                            (assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_error90 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv478)) : 'freshtv480)) : 'freshtv482)) : 'freshtv484)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv485 * _menhir_state) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1057 "llvm_parser.ml"
                      ))) * Lexing.position * (
# 51 "llvm_parser.mly"
       (string)
# 1061 "llvm_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let ((_menhir_stack, _, _menhir_s, _), _, _, _) = _menhir_stack in
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv489 * _menhir_state) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1072 "llvm_parser.ml"
                  ))) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error86 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv494)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv497 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1085 "llvm_parser.ml"
        ) * Lexing.position))) * (
# 50 "llvm_parser.mly"
       (string)
# 1089 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1093 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1097 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error105 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((((('freshtv495 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1109 "llvm_parser.ml"
              ) * Lexing.position))) * (
# 50 "llvm_parser.mly"
       (string)
# 1113 "llvm_parser.ml"
              )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1117 "llvm_parser.ml"
              )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1121 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | CONST _v ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v
              | GVAR _v ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LVAR _v ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NULL ->
                  _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv496)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error105 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv498)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv501 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1147 "llvm_parser.ml"
        ) * Lexing.position))) * (
# 50 "llvm_parser.mly"
       (string)
# 1151 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1155 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1159 "llvm_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1163 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv499 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1169 "llvm_parser.ml"
        ) * Lexing.position))) * (
# 50 "llvm_parser.mly"
       (string)
# 1173 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1177 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1181 "llvm_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1185 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _endpos_d_, _menhir_s, (d : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1190 "llvm_parser.ml"
        )), _startpos_d_), (c : (
# 50 "llvm_parser.mly"
       (string)
# 1194 "llvm_parser.ml"
        ))), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1198 "llvm_parser.ml"
        ))), _endpos_v1_, _, (v1 : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1202 "llvm_parser.ml"
        ))), _endpos_v2_, _, (v2 : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1206 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 1211 "llvm_parser.ml"
        ) = let _endpos = _endpos_v2_ in
        let _startpos = _startpos_d_ in
        let _loc = (_startpos, _endpos) in
        
# 149 "llvm_parser.mly"
    ( ICmp (d, cmp_of_s _loc c, t, v1, v2)
    )
# 1219 "llvm_parser.ml"
         in
        _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv503 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1227 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1231 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) : 'freshtv504)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv507 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1239 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1243 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1247 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1251 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv505 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1257 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1261 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1265 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1269 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _endpos_d_, _menhir_s, (d : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1274 "llvm_parser.ml"
        )), _startpos_d_), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1278 "llvm_parser.ml"
        ))), _), _, _), _endpos_v_, _, (v : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1282 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 1287 "llvm_parser.ml"
        ) = let _endpos = _endpos_v_ in
        let _startpos = _startpos_d_ in
        let _loc = (_startpos, _endpos) in
        
# 165 "llvm_parser.mly"
    ( match v with
      | Const n -> IAlloca (d, t, n)
      | _ -> syn_err "Invalid instruction" _loc
    )
# 1297 "llvm_parser.ml"
         in
        _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)) : 'freshtv508)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv511 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1305 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 1309 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1313 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1317 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error141 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | TO ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (((('freshtv509 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1329 "llvm_parser.ml"
              ) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 1333 "llvm_parser.ml"
              )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1337 "llvm_parser.ml"
              )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1341 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | TINT _v ->
                  _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
              | TSTRUCT _v ->
                  _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
              | TVOID ->
                  _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState142
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142) : 'freshtv510)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error141 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv512)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv515 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1365 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1369 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1373 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1377 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error146 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (((('freshtv513 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1389 "llvm_parser.ml"
              ) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1393 "llvm_parser.ml"
              )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1397 "llvm_parser.ml"
              )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1401 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | CONST _v ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState147 _v
              | GVAR _v ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState147 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LVAR _v ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState147 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NULL ->
                  _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState147
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv514)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error146 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv516)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv519 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1427 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1431 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1435 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1439 "llvm_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1443 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv517 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1449 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1453 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1457 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1461 "llvm_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1465 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _endpos_d_, _menhir_s, (d : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1470 "llvm_parser.ml"
        )), _startpos_d_), (b : (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1474 "llvm_parser.ml"
        ))), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1478 "llvm_parser.ml"
        ))), _endpos_v1_, _, (v1 : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1482 "llvm_parser.ml"
        ))), _endpos_v2_, _, (v2 : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1486 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 1491 "llvm_parser.ml"
        ) = 
# 136 "llvm_parser.mly"
    ( IBinop (d, b, t, v1, v2)
    )
# 1496 "llvm_parser.ml"
         in
        _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1505 "llvm_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState145 | MenhirState140 | MenhirState104 | MenhirState85 | MenhirState68 | MenhirState50 | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1515 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) : 'freshtv354)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv357 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1523 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1527 "llvm_parser.ml"
        ))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1531 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1535 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv355 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1541 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1545 "llvm_parser.ml"
        ))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1549 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1553 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1558 "llvm_parser.ml"
        ))), _endpos_va_, _, (va : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 1562 "llvm_parser.ml"
        ))), _, _), _endpos_vr_, _, (vr : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1566 "llvm_parser.ml"
        )), _startpos_vr_) = _menhir_stack in
        let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 1571 "llvm_parser.ml"
        ) = 
# 139 "llvm_parser.mly"
    ( IStore (t, va, vr)
    )
# 1576 "llvm_parser.ml"
         in
        _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
    | MenhirState147 | MenhirState136 | MenhirState111 | MenhirState106 | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1584 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) : 'freshtv360)
    | MenhirState151 | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1592 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error76 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | EQUAL ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv427 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1604 "llvm_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | ADD ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv363) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
                  ((let _v : (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1618 "llvm_parser.ml"
                  ) = 
# 116 "llvm_parser.mly"
        ( BAdd)
# 1622 "llvm_parser.ml"
                   in
                  _menhir_goto_binop _menhir_env _menhir_stack _v) : 'freshtv362)) : 'freshtv364)
              | ALLOCA ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv365 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1630 "llvm_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | TINT _v ->
                      _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
                  | TSTRUCT _v ->
                      _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
                  | TVOID ->
                      _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState126
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv366)
              | AND ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv369) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
                  ((let _v : (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1654 "llvm_parser.ml"
                  ) = 
# 120 "llvm_parser.mly"
        ( BAnd )
# 1658 "llvm_parser.ml"
                   in
                  _menhir_goto_binop _menhir_env _menhir_stack _v) : 'freshtv368)) : 'freshtv370)
              | BITCAST ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv373) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv371) = Obj.magic _menhir_stack in
                  ((let _v : (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 1670 "llvm_parser.ml"
                  ) = 
# 126 "llvm_parser.mly"
            ( CBitcast )
# 1674 "llvm_parser.ml"
                   in
                  _menhir_goto_cast _menhir_env _menhir_stack _v) : 'freshtv372)) : 'freshtv374)
              | CALL ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv375 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1682 "llvm_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | TINT _v ->
                      _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
                  | TSTRUCT _v ->
                      _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
                  | TVOID ->
                      _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState118
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv376)
              | DIV ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv379) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv377) = Obj.magic _menhir_stack in
                  ((let _v : (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1706 "llvm_parser.ml"
                  ) = 
# 119 "llvm_parser.mly"
        ( BDiv )
# 1710 "llvm_parser.ml"
                   in
                  _menhir_goto_binop _menhir_env _menhir_stack _v) : 'freshtv378)) : 'freshtv380)
              | GETELEMENTPTR ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv381 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1718 "llvm_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | TINT _v ->
                      _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
                  | TSTRUCT _v ->
                      _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
                  | TVOID ->
                      _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv382)
              | ICMP ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv387 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1738 "llvm_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | KEYWORD _v ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : (('freshtv383 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1748 "llvm_parser.ml"
                      ) * Lexing.position))) = Obj.magic _menhir_stack in
                      let (_v : (
# 50 "llvm_parser.mly"
       (string)
# 1753 "llvm_parser.ml"
                      )) = _v in
                      ((let _menhir_stack = (_menhir_stack, _v) in
                      let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | TINT _v ->
                          _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                      | TSTRUCT _v ->
                          _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                      | TVOID ->
                          _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv384)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : (('freshtv385 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1776 "llvm_parser.ml"
                      ) * Lexing.position))) = Obj.magic _menhir_stack in
                      ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
              | INTTOPTR ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv391) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv389) = Obj.magic _menhir_stack in
                  ((let _v : (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 1789 "llvm_parser.ml"
                  ) = 
# 128 "llvm_parser.mly"
             ( CInttoptr )
# 1793 "llvm_parser.ml"
                   in
                  _menhir_goto_cast _menhir_env _menhir_stack _v) : 'freshtv390)) : 'freshtv392)
              | LOAD ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv393 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1801 "llvm_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | TINT _v ->
                      _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
                  | TSTRUCT _v ->
                      _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
                  | TVOID ->
                      _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv394)
              | MUL ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv395) = Obj.magic _menhir_stack in
                  ((let _v : (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1825 "llvm_parser.ml"
                  ) = 
# 118 "llvm_parser.mly"
        ( BMul )
# 1829 "llvm_parser.ml"
                   in
                  _menhir_goto_binop _menhir_env _menhir_stack _v) : 'freshtv396)) : 'freshtv398)
              | OR ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
                  ((let _v : (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1841 "llvm_parser.ml"
                  ) = 
# 121 "llvm_parser.mly"
       ( BOr )
# 1845 "llvm_parser.ml"
                   in
                  _menhir_goto_binop _menhir_env _menhir_stack _v) : 'freshtv400)) : 'freshtv402)
              | PHI ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv403 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1853 "llvm_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | TINT _v ->
                      _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                  | TSTRUCT _v ->
                      _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                  | TVOID ->
                      _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv404)
              | PTRTOINT ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
                  ((let _v : (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 1877 "llvm_parser.ml"
                  ) = 
# 127 "llvm_parser.mly"
             ( CPtrtoint )
# 1881 "llvm_parser.ml"
                   in
                  _menhir_goto_cast _menhir_env _menhir_stack _v) : 'freshtv406)) : 'freshtv408)
              | SUB ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
                  ((let _v : (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1893 "llvm_parser.ml"
                  ) = 
# 117 "llvm_parser.mly"
        ( BSub )
# 1897 "llvm_parser.ml"
                   in
                  _menhir_goto_binop _menhir_env _menhir_stack _v) : 'freshtv410)) : 'freshtv412)
              | TRUNC ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
                  ((let _v : (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 1909 "llvm_parser.ml"
                  ) = 
# 130 "llvm_parser.mly"
          ( CTrunc )
# 1913 "llvm_parser.ml"
                   in
                  _menhir_goto_cast _menhir_env _menhir_stack _v) : 'freshtv414)) : 'freshtv416)
              | XOR ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
                  ((let _v : (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 1925 "llvm_parser.ml"
                  ) = 
# 122 "llvm_parser.mly"
        ( BXor )
# 1929 "llvm_parser.ml"
                   in
                  _menhir_goto_binop _menhir_env _menhir_stack _v) : 'freshtv418)) : 'freshtv420)
              | ZEXT ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv423) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
                  ((let _v : (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 1941 "llvm_parser.ml"
                  ) = 
# 129 "llvm_parser.mly"
         ( CZext )
# 1945 "llvm_parser.ml"
                   in
                  _menhir_goto_cast _menhir_env _menhir_stack _v) : 'freshtv422)) : 'freshtv424)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv425 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1955 "llvm_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error76 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv430)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv433 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1968 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1972 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1976 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1980 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv431 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1986 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1990 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 1994 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 1998 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _endpos_d_, _menhir_s, (d : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2003 "llvm_parser.ml"
        )), _startpos_d_), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2007 "llvm_parser.ml"
        ))), _), _, _), _endpos_v_, _, (v : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2011 "llvm_parser.ml"
        )), _startpos_v_) = _menhir_stack in
        let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 2016 "llvm_parser.ml"
        ) = 
# 170 "llvm_parser.mly"
    ( ILoad (d, t, v)
    )
# 2021 "llvm_parser.ml"
         in
        _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)) : 'freshtv434)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv437 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2029 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2033 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2037 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error120 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (((('freshtv435 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2049 "llvm_parser.ml"
              ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2053 "llvm_parser.ml"
              )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2057 "llvm_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | TINT _v ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
              | TSTRUCT _v ->
                  _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
              | TVOID ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState121
              | RPAREN ->
                  _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState121
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv436)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error120 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv438)
    | _ ->
        _menhir_fail ()

and _menhir_reduce66 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s ->
    let _endpos = _endpos__1_ in
    let _v : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 2087 "llvm_parser.ml"
    ) = 
# 190 "llvm_parser.mly"
              ( Const 0 )
# 2091 "llvm_parser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce65 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 54 "llvm_parser.mly"
       (int)
# 2098 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_n_ _menhir_s (n : (
# 54 "llvm_parser.mly"
       (int)
# 2103 "llvm_parser.ml"
  )) ->
    let _endpos = _endpos_n_ in
    let _v : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 2109 "llvm_parser.ml"
    ) = 
# 189 "llvm_parser.mly"
              ( Const n )
# 2113 "llvm_parser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce46 : _menhir_env -> (('ttv_tail * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2120 "llvm_parser.ml"
)) * _menhir_state) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2124 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, (rt : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2130 "llvm_parser.ml"
    ))), _), _, (args : (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2134 "llvm_parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2139 "llvm_parser.ml"
    ) = 
# 219 "llvm_parser.mly"
    ( TFunction (rt, args) )
# 2143 "llvm_parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce47 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2150 "llvm_parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _ ->
    let (_menhir_stack, _menhir_s, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2156 "llvm_parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2161 "llvm_parser.ml"
    ) = 
# 221 "llvm_parser.mly"
    ( TPointer t )
# 2165 "llvm_parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce40 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 2172 "llvm_parser.ml"
)) -> Lexing.position -> _menhir_state -> (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2176 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_os_ _ (os : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2181 "llvm_parser.ml"
  )) ->
    let (_menhir_stack, _endpos_o_, _menhir_s, (o : (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 2186 "llvm_parser.ml"
    ))) = _menhir_stack in
    let _endpos = _endpos_os_ in
    let _v : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2192 "llvm_parser.ml"
    ) = 
# 200 "llvm_parser.mly"
                        ( o::os )
# 2196 "llvm_parser.ml"
     in
    _menhir_goto_ops _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_goto_maybeops : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2203 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv343 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2213 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2217 "llvm_parser.ml"
        ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2221 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv339 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2231 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2235 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2239 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv335 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2249 "llvm_parser.ml"
                )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2253 "llvm_parser.ml"
                ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2257 "llvm_parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BR ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                | GVAR _v ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | KEYWORD _v ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
                | LVAR _v ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RET ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                | STORE ->
                    _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                | RBRACE ->
                    _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv336)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv337 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2287 "llvm_parser.ml"
                )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2291 "llvm_parser.ml"
                ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2295 "llvm_parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv341 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2306 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2310 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2314 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)) : 'freshtv344)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv351 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2323 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2327 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2331 "llvm_parser.ml"
        ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2335 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv347 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2345 "llvm_parser.ml"
            ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2349 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2353 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2357 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv345 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2364 "llvm_parser.ml"
            ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2368 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2372 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2376 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _endpos_d_, _menhir_s, (d : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2381 "llvm_parser.ml"
            )), _startpos_d_), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2385 "llvm_parser.ml"
            ))), _endpos_f_, _, (f : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2389 "llvm_parser.ml"
            )), _startpos_f_), _, (args : (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2393 "llvm_parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 2398 "llvm_parser.ml"
            ) = 
# 155 "llvm_parser.mly"
    ( ICall (d, t, f, args) )
# 2402 "llvm_parser.ml"
             in
            _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv349 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2412 "llvm_parser.ml"
            ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2416 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2420 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2424 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | _ ->
        _menhir_fail ()

and _menhir_goto_insts : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2434 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv329 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2444 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2448 "llvm_parser.ml"
        ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2452 "llvm_parser.ml"
        )))) * _menhir_state * (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2456 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv325 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2466 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2470 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2474 "llvm_parser.ml"
            )))) * _menhir_state * (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2478 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv323 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2486 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2490 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2494 "llvm_parser.ml"
            )))) * _menhir_state * (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2498 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_endpos__9_ : Lexing.position) = _endpos in
            ((let (((((_menhir_stack, _menhir_s, _startpos__1_), _, (rt : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2504 "llvm_parser.ml"
            ))), _endpos_f_, _, (f : (
# 52 "llvm_parser.mly"
       (string)
# 2508 "llvm_parser.ml"
            )), _startpos_f_), _, (args : (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2512 "llvm_parser.ml"
            ))), _, (b : (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2516 "llvm_parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 75 "llvm_parser.mly"
      (Llvm_ast.func option)
# 2521 "llvm_parser.ml"
            ) = let _endpos = _endpos__9_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 112 "llvm_parser.mly"
    ( Some (make_func f rt (mk_args _loc args) b)  )
# 2528 "llvm_parser.ml"
             in
            _menhir_goto_func _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv327 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2538 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2542 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 2546 "llvm_parser.ml"
            )))) * _menhir_state * (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2550 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 2559 "llvm_parser.ml"
        )) * _menhir_state * (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2563 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv331 * _menhir_state * (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 2569 "llvm_parser.ml"
        )) * _menhir_state * (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2573 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (i : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 2578 "llvm_parser.ml"
        ))), _, (is : (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2582 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 2587 "llvm_parser.ml"
        ) = 
# 179 "llvm_parser.mly"
                     ( i::is )
# 2591 "llvm_parser.ml"
         in
        _menhir_goto_insts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
    | _ ->
        _menhir_fail ()

and _menhir_reduce67 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 51 "llvm_parser.mly"
       (string)
# 2600 "llvm_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_v_ _menhir_s (v : (
# 51 "llvm_parser.mly"
       (string)
# 2605 "llvm_parser.ml"
  )) _startpos_v_ ->
    let _startpos = _startpos_v_ in
    let _endpos = _endpos_v_ in
    let _v : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2612 "llvm_parser.ml"
    ) = 
# 183 "llvm_parser.mly"
           ( Local (mk_name v) )
# 2616 "llvm_parser.ml"
     in
    _menhir_goto_var _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce68 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 52 "llvm_parser.mly"
       (string)
# 2623 "llvm_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_v_ _menhir_s (v : (
# 52 "llvm_parser.mly"
       (string)
# 2628 "llvm_parser.ml"
  )) _startpos_v_ ->
    let _startpos = _startpos_v_ in
    let _endpos = _endpos_v_ in
    let _v : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 2635 "llvm_parser.ml"
    ) = 
# 184 "llvm_parser.mly"
           ( Global v )
# 2639 "llvm_parser.ml"
     in
    _menhir_goto_var _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run131 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2646 "llvm_parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run132 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2655 "llvm_parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TINT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
    | TSTRUCT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
    | TVOID ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState132
    | RPAREN ->
        _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState132
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONST _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _v
    | GVAR _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LVAR _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NULL ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85

and _menhir_run59 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run60 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 54 "llvm_parser.mly"
       (int)
# 2702 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce65 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v

and _menhir_run54 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 51 "llvm_parser.mly"
       (string)
# 2711 "llvm_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce67 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run55 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 52 "llvm_parser.mly"
       (string)
# 2720 "llvm_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run35 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run38 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 54 "llvm_parser.mly"
       (int)
# 2734 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce65 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v

and _menhir_goto_typs : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2743 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2753 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2757 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2767 "llvm_parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2771 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv301 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2782 "llvm_parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2786 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2795 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2799 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv305 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2805 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2809 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2814 "llvm_parser.ml"
        ))), _), _, (ts : (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2818 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2823 "llvm_parser.ml"
        ) = 
# 242 "llvm_parser.mly"
                          ( t::ts )
# 2827 "llvm_parser.ml"
         in
        _menhir_goto_typs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv313 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2835 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2839 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2849 "llvm_parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2853 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2864 "llvm_parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2868 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv321 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2877 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2881 "llvm_parser.ml"
        ) * Lexing.position)) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2885 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv317 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2895 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2899 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2903 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv315 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2910 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2914 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2918 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (rt : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2923 "llvm_parser.ml"
            ))), _endpos_f_, _, (f : (
# 52 "llvm_parser.mly"
       (string)
# 2927 "llvm_parser.ml"
            )), _startpos_f_), _, _) = _menhir_stack in
            let _v : (
# 75 "llvm_parser.mly"
      (Llvm_ast.func option)
# 2932 "llvm_parser.ml"
            ) = 
# 109 "llvm_parser.mly"
                                                  ( None )
# 2936 "llvm_parser.ml"
             in
            _menhir_goto_func _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv319 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2946 "llvm_parser.ml"
            )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 2950 "llvm_parser.ml"
            ) * Lexing.position)) * _menhir_state * (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2954 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | _ ->
        _menhir_fail ()

and _menhir_reduce52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 2966 "llvm_parser.ml"
    ) = 
# 240 "llvm_parser.mly"
                          ( [] )
# 2970 "llvm_parser.ml"
     in
    _menhir_goto_typs _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2977 "llvm_parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run26 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 2986 "llvm_parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TINT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | TSTRUCT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | TVOID ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | RPAREN ->
        _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_reduce36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3011 "llvm_parser.ml"
    ) = 
# 204 "llvm_parser.mly"
           ( [] )
# 3015 "llvm_parser.ml"
     in
    _menhir_goto_maybeops _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_brackops : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 83 "llvm_parser.mly"
      ((Llvm_ast.label * Llvm_ast.value) list)
# 3022 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv293 * _menhir_state * (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 3031 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 83 "llvm_parser.mly"
      ((Llvm_ast.label * Llvm_ast.value) list)
# 3037 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv291 * _menhir_state * (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 3043 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ps : (
# 83 "llvm_parser.mly"
      ((Llvm_ast.label * Llvm_ast.value) list)
# 3049 "llvm_parser.ml"
        )) : (
# 83 "llvm_parser.mly"
      ((Llvm_ast.label * Llvm_ast.value) list)
# 3053 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (p : (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 3058 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 83 "llvm_parser.mly"
      ((Llvm_ast.label * Llvm_ast.value) list)
# 3063 "llvm_parser.ml"
        ) = 
# 214 "llvm_parser.mly"
                               ( p::ps )
# 3067 "llvm_parser.ml"
         in
        _menhir_goto_brackops _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)) : 'freshtv294)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv297 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3075 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3079 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 83 "llvm_parser.mly"
      ((Llvm_ast.label * Llvm_ast.value) list)
# 3085 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv295 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3091 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3095 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((preds : (
# 83 "llvm_parser.mly"
      ((Llvm_ast.label * Llvm_ast.value) list)
# 3101 "llvm_parser.ml"
        )) : (
# 83 "llvm_parser.mly"
      ((Llvm_ast.label * Llvm_ast.value) list)
# 3105 "llvm_parser.ml"
        )) = _v in
        ((let ((_menhir_stack, _endpos_d_, _menhir_s, (d : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3110 "llvm_parser.ml"
        )), _startpos_d_), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3114 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 3119 "llvm_parser.ml"
        ) = 
# 173 "llvm_parser.mly"
    ( should_be_ssa := true; IPhi (d, t, preds) )
# 3123 "llvm_parser.ml"
         in
        _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ops : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3132 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState121 | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3144 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
        let (_endpos_o_ : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((o : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3153 "llvm_parser.ml"
        )) : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3157 "llvm_parser.ml"
        )) = _v in
        ((let _v : (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3162 "llvm_parser.ml"
        ) = 
# 205 "llvm_parser.mly"
           ( o )
# 3166 "llvm_parser.ml"
         in
        _menhir_goto_maybeops _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)) : 'freshtv282)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv283 * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 3174 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3181 "llvm_parser.ml"
        )) = _v in
        (_menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v : 'freshtv284)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv287 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3189 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3193 "llvm_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3200 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv285 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3206 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3210 "llvm_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos_args_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((args : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3217 "llvm_parser.ml"
        )) : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3221 "llvm_parser.ml"
        )) = _v in
        ((let (((_menhir_stack, _endpos_d_, _menhir_s, (d : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3226 "llvm_parser.ml"
        )), _startpos_d_), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3230 "llvm_parser.ml"
        ))), _) = _menhir_stack in
        let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 3235 "llvm_parser.ml"
        ) = let _endpos = _endpos_args_ in
        let _startpos = _startpos_d_ in
        let _loc = (_startpos, _endpos) in
        
# 157 "llvm_parser.mly"
    ( match args with
      | (_, Var v)::args ->
	 IGetElementPtr (d, t, v, args)
      | _ -> syn_err "Invalid instruction" _loc
    )
# 3246 "llvm_parser.ml"
         in
        _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)) : 'freshtv288)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv289 * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 3254 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 3261 "llvm_parser.ml"
        )) = _v in
        (_menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v : 'freshtv290)
    | _ ->
        _menhir_fail ()

and _menhir_reduce34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 77 "llvm_parser.mly"
      (Llvm_ast.inst list)
# 3272 "llvm_parser.ml"
    ) = 
# 178 "llvm_parser.mly"
                         ( [] )
# 3276 "llvm_parser.ml"
     in
    _menhir_goto_insts _menhir_env _menhir_stack _menhir_s _v

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TINT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | TSTRUCT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | TVOID ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TINT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | TSTRUCT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | TVOID ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | BR | GVAR _ | KEYWORD _ | LVAR _ | RBRACE | RET | STORE ->
        _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run36 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 51 "llvm_parser.mly"
       (string)
# 3319 "llvm_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce67 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "llvm_parser.mly"
       (string)
# 3328 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * (
# 50 "llvm_parser.mly"
       (string)
# 3340 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state * (
# 50 "llvm_parser.mly"
       (string)
# 3347 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (l : (
# 50 "llvm_parser.mly"
       (string)
# 3352 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 3357 "llvm_parser.ml"
        ) = 
# 134 "llvm_parser.mly"
                     ( ILabel l )
# 3361 "llvm_parser.ml"
         in
        _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state * (
# 50 "llvm_parser.mly"
       (string)
# 3371 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 52 "llvm_parser.mly"
       (string)
# 3379 "llvm_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState65 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LVAR _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv267 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_v : (
# 51 "llvm_parser.mly"
       (string)
# 3406 "llvm_parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv265 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            let (_endpos_l_ : Lexing.position) = _endpos in
            let ((l : (
# 51 "llvm_parser.mly"
       (string)
# 3416 "llvm_parser.ml"
            )) : (
# 51 "llvm_parser.mly"
       (string)
# 3420 "llvm_parser.ml"
            )) = _v in
            let (_startpos_l_ : Lexing.position) = _startpos in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 3427 "llvm_parser.ml"
            ) = 
# 141 "llvm_parser.mly"
                      ( IBr l )
# 3431 "llvm_parser.ml"
             in
            _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)) : 'freshtv272)
    | TINT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | TSTRUCT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | TVOID ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3455 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3465 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | GVAR _v ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv207 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3477 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState24 in
              let (_v : (
# 52 "llvm_parser.mly"
       (string)
# 3484 "llvm_parser.ml"
              )) = _v in
              let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
              ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | LPAREN ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv203 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3496 "llvm_parser.ml"
                  )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 3500 "llvm_parser.ml"
                  ) * Lexing.position) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | TINT _v ->
                      _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
                  | TSTRUCT _v ->
                      _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
                  | TVOID ->
                      _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                  | RPAREN ->
                      _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv204)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv205 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3524 "llvm_parser.ml"
                  )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 3528 "llvm_parser.ml"
                  ) * Lexing.position) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)) : 'freshtv210)
    | MenhirState157 | MenhirState132 | MenhirState30 | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3545 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv211 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3557 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState29 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | TINT _v ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
              | TSTRUCT _v ->
                  _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
              | TVOID ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30
              | RPAREN ->
                  _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState30
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv212)
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv213 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3585 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              ((let (_menhir_stack, _menhir_s, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3590 "llvm_parser.ml"
              ))) = _menhir_stack in
              let _v : (
# 86 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 3595 "llvm_parser.ml"
              ) = 
# 241 "llvm_parser.mly"
                          ( [t] )
# 3599 "llvm_parser.ml"
               in
              _menhir_goto_typs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)) : 'freshtv216)
    | MenhirState121 | MenhirState43 | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3611 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONST _v ->
              _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState34 _v
          | GVAR _v ->
              _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
          | LVAR _v ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NULL ->
              _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState34
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)) : 'freshtv218)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3639 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONST _v ->
              _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v
          | GVAR _v ->
              _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50
          | LVAR _v ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NULL ->
              _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)) : 'freshtv220)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv221 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3667 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 3671 "llvm_parser.ml"
        ))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3675 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | GVAR _v ->
              _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53
          | LVAR _v ->
              _menhir_run54 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)) : 'freshtv222)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3699 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONST _v ->
              _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v
          | GVAR _v ->
              _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
          | LVAR _v ->
              _menhir_run54 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NULL ->
              _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)) : 'freshtv224)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3727 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONST _v ->
              _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v
          | GVAR _v ->
              _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState68
          | LVAR _v ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NULL ->
              _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState68
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)) : 'freshtv226)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv227 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3755 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3759 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | LSQ ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)) : 'freshtv228)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv231 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3781 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3785 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv229 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3797 "llvm_parser.ml"
              ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3801 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState97 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | TINT _v ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
              | TSTRUCT _v ->
                  _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
              | TVOID ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState98
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv230)
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState97
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState97
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)) : 'freshtv232)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv233 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3831 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3835 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3839 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | GVAR _v ->
              _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState99
          | LVAR _v ->
              _menhir_run54 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState99
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)) : 'freshtv234)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv235 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3863 "llvm_parser.ml"
        ) * Lexing.position))) * (
# 50 "llvm_parser.mly"
       (string)
# 3867 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3871 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONST _v ->
              _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v
          | GVAR _v ->
              _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | LVAR _v ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NULL ->
              _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)) : 'freshtv236)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv239 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3899 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3903 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv237 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3915 "llvm_parser.ml"
              ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3919 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState109 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | TINT _v ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
              | TSTRUCT _v ->
                  _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
              | TVOID ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState110
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv238)
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState109
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState109
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)) : 'freshtv240)
    | MenhirState115 | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3949 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONST _v ->
              _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111 _v
          | GVAR _v ->
              _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState111
          | LVAR _v ->
              _menhir_run54 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NULL ->
              _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState111
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111)) : 'freshtv242)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv243 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 3977 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 3981 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | GVAR _v ->
              _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | LVAR _v ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119)) : 'freshtv244)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv247 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4005 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4009 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv245 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4021 "llvm_parser.ml"
              ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4025 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState130 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | TINT _v ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
              | TSTRUCT _v ->
                  _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
              | TVOID ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState135
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv246)
          | LPAREN ->
              _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState130
          | STAR ->
              _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState130
          | BR | GVAR _ | KEYWORD _ | LVAR _ | RBRACE | RET | STORE ->
              _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130)) : 'freshtv248)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv249 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4057 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4061 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4065 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONST _v ->
              _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState136 _v
          | GVAR _v ->
              _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState136 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState136
          | LVAR _v ->
              _menhir_run54 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState136 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NULL ->
              _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState136
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState136
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136)) : 'freshtv250)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv251 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4093 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 4097 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4101 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONST _v ->
              _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _v
          | GVAR _v ->
              _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState140
          | LVAR _v ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NULL ->
              _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState140
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140)) : 'freshtv252)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv253 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4129 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 4133 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4137 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 4141 "llvm_parser.ml"
        ))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4145 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState143
          | STAR ->
              _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState143
          | BR | GVAR _ | KEYWORD _ | LVAR _ | RBRACE | RET | STORE ->
              _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143)) : 'freshtv254)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv255 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4167 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 4171 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4175 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONST _v ->
              _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState145 _v
          | GVAR _v ->
              _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState145 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState145
          | LVAR _v ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState145 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NULL ->
              _menhir_run35 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState145
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState145
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145)) : 'freshtv256)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4203 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | GVAR _v ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv261 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4215 "llvm_parser.ml"
              )) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState155 in
              let (_v : (
# 52 "llvm_parser.mly"
       (string)
# 4222 "llvm_parser.ml"
              )) = _v in
              let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
              ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | LPAREN ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv257 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4234 "llvm_parser.ml"
                  )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 4238 "llvm_parser.ml"
                  ) * Lexing.position) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | TINT _v ->
                      _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState157 _v
                  | TSTRUCT _v ->
                      _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState157 _v
                  | TVOID ->
                      _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState157
                  | RPAREN ->
                      _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState157
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv258)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv259 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4262 "llvm_parser.ml"
                  )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 4266 "llvm_parser.ml"
                  ) * Lexing.position) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
          | LPAREN ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState155
          | STAR ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState155
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155)) : 'freshtv264)
    | _ ->
        _menhir_fail ()

and _menhir_reduce8 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 4284 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (p : (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 4290 "llvm_parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 83 "llvm_parser.mly"
      ((Llvm_ast.label * Llvm_ast.value) list)
# 4295 "llvm_parser.ml"
    ) = 
# 213 "llvm_parser.mly"
                              ( [p] )
# 4299 "llvm_parser.ml"
     in
    _menhir_goto_brackops _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce39 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 4306 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_o_, _menhir_s, (o : (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 4312 "llvm_parser.ml"
    ))) = _menhir_stack in
    let _endpos = _endpos_o_ in
    let _v : (
# 80 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 4318 "llvm_parser.ml"
    ) = 
# 199 "llvm_parser.mly"
                        ( [o] )
# 4322 "llvm_parser.ml"
     in
    _menhir_goto_ops _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_goto_inst : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 4329 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv201 * _menhir_state * (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 4337 "llvm_parser.ml"
    )) = Obj.magic _menhir_stack in
    ((if _menhir_env._menhir_error then
      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151
    else
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | BR ->
          _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState151
      | GVAR _v ->
          _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState151 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | KEYWORD _v ->
          _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
      | LVAR _v ->
          _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState151 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | RET ->
          _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState151
      | STORE ->
          _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState151
      | RBRACE ->
          _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState151
      | _ ->
          (assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151)) : 'freshtv202)

and _menhir_goto_unchecked_typs : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4366 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv187 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 4376 "llvm_parser.ml"
        ) * Lexing.position)))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4380 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv183 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 4390 "llvm_parser.ml"
            ) * Lexing.position)))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4394 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv181 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 4402 "llvm_parser.ml"
            ) * Lexing.position)))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4406 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_endpos__6_ : Lexing.position) = _endpos in
            ((let ((_menhir_stack, _endpos_t_, _menhir_s, (t : (
# 51 "llvm_parser.mly"
       (string)
# 4412 "llvm_parser.ml"
            )), _startpos_t_), _, (fs : (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4416 "llvm_parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 91 "llvm_parser.mly"
      (unit)
# 4421 "llvm_parser.ml"
            ) = 
# 97 "llvm_parser.mly"
  ( structs := Varmap.add t fs (!structs) )
# 4425 "llvm_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 91 "llvm_parser.mly"
      (unit)
# 4433 "llvm_parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 91 "llvm_parser.mly"
      (unit)
# 4440 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((if _menhir_env._menhir_error then
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160
            else
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | DECLARE ->
                  _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | DEFINE ->
                  _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | EOF ->
                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState160
              | LVAR _v ->
                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  (assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160)) : 'freshtv178)) : 'freshtv180)) : 'freshtv182)) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv185 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 4466 "llvm_parser.ml"
            ) * Lexing.position)))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4470 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4479 "llvm_parser.ml"
        ))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4483 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv191 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4493 "llvm_parser.ml"
            ))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4497 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv189 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4504 "llvm_parser.ml"
            ))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4508 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (rt : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4513 "llvm_parser.ml"
            ))), _, (args : (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4517 "llvm_parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4522 "llvm_parser.ml"
            ) = 
# 229 "llvm_parser.mly"
    ( TFunction (rt, args) )
# 4526 "llvm_parser.ml"
             in
            _menhir_goto_unchecked_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv193 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4536 "llvm_parser.ml"
            ))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4540 "llvm_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4549 "llvm_parser.ml"
        ))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4553 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv197 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4559 "llvm_parser.ml"
        ))) * _menhir_state * (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4563 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (t : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4568 "llvm_parser.ml"
        ))), _, (ts : (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4572 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4577 "llvm_parser.ml"
        ) = 
# 248 "llvm_parser.mly"
                                              ( t::ts )
# 4581 "llvm_parser.ml"
         in
        _menhir_goto_unchecked_typs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
    | _ ->
        _menhir_fail ()

and _menhir_goto_unchecked_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4590 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4598 "llvm_parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4608 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LVAR _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState17 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | TSTRUCT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | TVOID ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | RBRACE | RPAREN ->
            _menhir_reduce61 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv164)
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4632 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LVAR _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | TSTRUCT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | TVOID ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | RPAREN ->
            _menhir_reduce61 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv166)
    | STAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4656 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4663 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (t : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4668 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4673 "llvm_parser.ml"
        ) = 
# 231 "llvm_parser.mly"
    ( TPointer t )
# 4677 "llvm_parser.ml"
         in
        _menhir_goto_unchecked_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
    | RBRACE | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4685 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (t : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4690 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4695 "llvm_parser.ml"
        ) = 
# 247 "llvm_parser.mly"
                          ( [t] )
# 4699 "llvm_parser.ml"
         in
        _menhir_goto_unchecked_typs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4709 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4724 "llvm_parser.ml"
    ) = 
# 222 "llvm_parser.mly"
          ( TVoid )
# 4728 "llvm_parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce50 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "llvm_parser.mly"
       (string)
# 4735 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s (t : (
# 53 "llvm_parser.mly"
       (string)
# 4740 "llvm_parser.ml"
  )) ->
    let _v : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4745 "llvm_parser.ml"
    ) = 
# 224 "llvm_parser.mly"
              ( TStruct t )
# 4749 "llvm_parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "llvm_parser.mly"
       (int)
# 4756 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s (n : (
# 65 "llvm_parser.mly"
       (int)
# 4761 "llvm_parser.ml"
  )) ->
    let _v : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4766 "llvm_parser.ml"
    ) = 
# 223 "llvm_parser.mly"
           ( TInteger n )
# 4770 "llvm_parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce24 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 4780 "llvm_parser.ml"
    ) = 
# 147 "llvm_parser.mly"
        ( IRet None )
# 4784 "llvm_parser.ml"
     in
    _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v

and _menhir_error90 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 4791 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce8 _menhir_env (Obj.magic _menhir_stack)

and _menhir_error114 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 4799 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce29 : _menhir_env -> ((('ttv_tail * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4807 "llvm_parser.ml"
) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4811 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _endpos_d_, _menhir_s, (d : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4817 "llvm_parser.ml"
    )), _startpos_d_), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4821 "llvm_parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 4826 "llvm_parser.ml"
    ) = 
# 163 "llvm_parser.mly"
    ( IAlloca (d, t, 1) )
# 4830 "llvm_parser.ml"
     in
    _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce26 : _menhir_env -> (((((('ttv_tail * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4837 "llvm_parser.ml"
) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 4841 "llvm_parser.ml"
)) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4845 "llvm_parser.ml"
)) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 4849 "llvm_parser.ml"
))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4853 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((_menhir_stack, _endpos_d_, _menhir_s, (d : (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 4859 "llvm_parser.ml"
    )), _startpos_d_), (c : (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 4863 "llvm_parser.ml"
    ))), _, (t1 : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4867 "llvm_parser.ml"
    ))), _endpos_v_, _, (v : (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 4871 "llvm_parser.ml"
    ))), _, (t : (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4875 "llvm_parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 4880 "llvm_parser.ml"
    ) = 
# 152 "llvm_parser.mly"
    ( ICast (d, c, t1, v, t)
    )
# 4885 "llvm_parser.ml"
     in
    _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v

and _menhir_run48 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _v : (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 4900 "llvm_parser.ml"
    ) = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 174 "llvm_parser.mly"
          ( syn_err "Invalid instruction" _loc )
# 4907 "llvm_parser.ml"
     in
    _menhir_goto_inst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)

and _menhir_goto_func : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 75 "llvm_parser.mly"
      (Llvm_ast.func option)
# 4914 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159 * _menhir_state * (
# 75 "llvm_parser.mly"
      (Llvm_ast.func option)
# 4922 "llvm_parser.ml"
    )) = Obj.magic _menhir_stack in
    ((if _menhir_env._menhir_error then
      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162
    else
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | DECLARE ->
          _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | DEFINE ->
          _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | EOF ->
          _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState162
      | LVAR _v ->
          _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState162 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | _ ->
          (assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162)) : 'freshtv160)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _v : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 4952 "llvm_parser.ml"
    ) = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 105 "llvm_parser.mly"
           ( syn_err "Invalid declaration/definition" _loc )
# 4959 "llvm_parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)

and _menhir_reduce61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 88 "llvm_parser.mly"
      (Llvm_ast.typ list)
# 4968 "llvm_parser.ml"
    ) = 
# 246 "llvm_parser.mly"
                          ( [] )
# 4972 "llvm_parser.ml"
     in
    _menhir_goto_unchecked_typs _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 4985 "llvm_parser.ml"
    ) = 
# 232 "llvm_parser.mly"
          ( TVoid )
# 4989 "llvm_parser.ml"
     in
    _menhir_goto_unchecked_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "llvm_parser.mly"
       (string)
# 4996 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((t : (
# 53 "llvm_parser.mly"
       (string)
# 5006 "llvm_parser.ml"
    )) : (
# 53 "llvm_parser.mly"
       (string)
# 5010 "llvm_parser.ml"
    )) = _v in
    ((let _v : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5015 "llvm_parser.ml"
    ) = 
# 234 "llvm_parser.mly"
              ( TStruct t )
# 5019 "llvm_parser.ml"
     in
    _menhir_goto_unchecked_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "llvm_parser.mly"
       (int)
# 5026 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv151) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 65 "llvm_parser.mly"
       (int)
# 5036 "llvm_parser.ml"
    )) : (
# 65 "llvm_parser.mly"
       (int)
# 5040 "llvm_parser.ml"
    )) = _v in
    ((let _v : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5045 "llvm_parser.ml"
    ) = 
# 233 "llvm_parser.mly"
           ( TInteger n )
# 5049 "llvm_parser.ml"
     in
    _menhir_goto_unchecked_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 51 "llvm_parser.mly"
       (string)
# 5056 "llvm_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
    let (_endpos_t_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((t : (
# 51 "llvm_parser.mly"
       (string)
# 5067 "llvm_parser.ml"
    )) : (
# 51 "llvm_parser.mly"
       (string)
# 5071 "llvm_parser.ml"
    )) = _v in
    let (_startpos_t_ : Lexing.position) = _startpos in
    ((let _v : (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5077 "llvm_parser.ml"
    ) = 
# 235 "llvm_parser.mly"
           ( TStruct t )
# 5081 "llvm_parser.ml"
     in
    _menhir_goto_unchecked_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)

and _menhir_goto_prog : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5088 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 91 "llvm_parser.mly"
      (unit)
# 5097 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5103 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 91 "llvm_parser.mly"
      (unit)
# 5109 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((p : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5115 "llvm_parser.ml"
        )) : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5119 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        let _v : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5125 "llvm_parser.ml"
        ) = 
# 103 "llvm_parser.mly"
    ( p )
# 5129 "llvm_parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)) : 'freshtv140)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 75 "llvm_parser.mly"
      (Llvm_ast.func option)
# 5137 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5143 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 75 "llvm_parser.mly"
      (Llvm_ast.func option)
# 5149 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((p : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5155 "llvm_parser.ml"
        )) : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5159 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (f : (
# 75 "llvm_parser.mly"
      (Llvm_ast.func option)
# 5164 "llvm_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5169 "llvm_parser.ml"
        ) = 
# 104 "llvm_parser.mly"
                   ( (match f with Some f -> f::p | None -> p) )
# 5173 "llvm_parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)) : 'freshtv144)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5183 "llvm_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5191 "llvm_parser.ml"
        )) : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 5195 "llvm_parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv146)) : 'freshtv148)
    | _ ->
        _menhir_fail ()

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "llvm_parser.mly"
       (string)
# 5209 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "llvm_parser.mly"
       (int)
# 5218 "llvm_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 75 "llvm_parser.mly"
      (Llvm_ast.func option)
# 5232 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState162 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv18)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 91 "llvm_parser.mly"
      (unit)
# 5240 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv20)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv21 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5248 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 5252 "llvm_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5261 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState153 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos__2_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let (_startpos__2_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _v : (
# 75 "llvm_parser.mly"
      (Llvm_ast.func option)
# 5283 "llvm_parser.ml"
        ) = let _endpos = _endpos__2_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 110 "llvm_parser.mly"
                  ( syn_err "Invalid function declaration" _loc )
# 5290 "llvm_parser.ml"
         in
        _menhir_goto_func _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)) : 'freshtv28)) : 'freshtv30)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 76 "llvm_parser.mly"
      (Llvm_ast.inst)
# 5298 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_run48 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState151 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv32)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv33 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5306 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 5310 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5314 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 5318 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv35 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5327 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 5331 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5335 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5344 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 89 "llvm_parser.mly"
      (Llvm_ast.bop)
# 5348 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv39 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5357 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 5361 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5365 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 5369 "llvm_parser.ml"
        ))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5373 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce26 _menhir_env (Obj.magic _menhir_stack) : 'freshtv40)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv41 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5381 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 5385 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5389 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 5393 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv43 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5402 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 5406 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5410 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5419 "llvm_parser.ml"
        ) * Lexing.position)) * (
# 90 "llvm_parser.mly"
      (Llvm_ast.cast)
# 5423 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv47 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5432 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5436 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5440 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv49 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5449 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5453 "llvm_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5462 "llvm_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv53 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5471 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5475 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) : 'freshtv54)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5483 "llvm_parser.ml"
        ) * Lexing.position))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv57 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5492 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5496 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5500 "llvm_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5509 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5513 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5522 "llvm_parser.ml"
        ) * Lexing.position))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 5531 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        (_menhir_error114 _menhir_env (Obj.magic _menhir_stack) : 'freshtv64)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5539 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv67 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5548 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5552 "llvm_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5561 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5565 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5574 "llvm_parser.ml"
        ) * Lexing.position))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv73 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5583 "llvm_parser.ml"
        ) * Lexing.position))) * (
# 50 "llvm_parser.mly"
       (string)
# 5587 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5591 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 5595 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv75 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5604 "llvm_parser.ml"
        ) * Lexing.position))) * (
# 50 "llvm_parser.mly"
       (string)
# 5608 "llvm_parser.ml"
        )) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5612 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv77 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5621 "llvm_parser.ml"
        ) * Lexing.position))) * (
# 50 "llvm_parser.mly"
       (string)
# 5625 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv79 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5634 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5638 "llvm_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5642 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv81 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5651 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5655 "llvm_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv83 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5664 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5668 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5677 "llvm_parser.ml"
        ) * Lexing.position))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 82 "llvm_parser.mly"
      (Llvm_ast.label * Llvm_ast.value)
# 5686 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        (_menhir_error90 _menhir_env (Obj.magic _menhir_stack) : 'freshtv88)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv91 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5699 "llvm_parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5703 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * Lexing.position * _menhir_state * (
# 84 "llvm_parser.mly"
      (Llvm_ast.var)
# 5712 "llvm_parser.ml"
        ) * Lexing.position))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5721 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5735 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        (_menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) : 'freshtv102)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv103 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5748 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 5752 "llvm_parser.ml"
        ))) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5756 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv105 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5765 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 78 "llvm_parser.mly"
      (Llvm_ast.value)
# 5769 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5778 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv111 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5792 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 5796 "llvm_parser.ml"
        ) * Lexing.position)) * _menhir_state * (
# 81 "llvm_parser.mly"
      ((Llvm_ast.typ * Llvm_ast.value) list)
# 5800 "llvm_parser.ml"
        )))) = Obj.magic _menhir_stack in
        (_menhir_run48 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv112)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * Lexing.position * _menhir_state * (
# 79 "llvm_parser.mly"
      (Llvm_ast.typ * Llvm_ast.value)
# 5808 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5817 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv117 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5826 "llvm_parser.ml"
        )) * Lexing.position * _menhir_state * (
# 52 "llvm_parser.mly"
       (string)
# 5830 "llvm_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5839 "llvm_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5848 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5857 "llvm_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * Lexing.position) * _menhir_state * (
# 85 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5866 "llvm_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5880 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * (
# 87 "llvm_parser.mly"
      (Llvm_ast.typ)
# 5889 "llvm_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv133 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 5898 "llvm_parser.ml"
        ) * Lexing.position)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
        (_menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv136)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 51 "llvm_parser.mly"
       (string)
# 5910 "llvm_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 5922 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TYP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 5932 "llvm_parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv5 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 5942 "llvm_parser.ml"
                ) * Lexing.position))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LVAR _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
                | TSTRUCT _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
                | TVOID ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | RBRACE ->
                    _menhir_reduce61 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv6)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv7 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 5968 "llvm_parser.ml"
                ) * Lexing.position))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)) : 'freshtv10)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv11 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 5979 "llvm_parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * Lexing.position * _menhir_state * (
# 51 "llvm_parser.mly"
       (string)
# 5990 "llvm_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 6003 "llvm_parser.ml"
    ) = 
# 101 "llvm_parser.mly"
        ( [] )
# 6007 "llvm_parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TINT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | TSTRUCT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | TVOID ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run153 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TINT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | TSTRUCT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | TVOID ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 74 "llvm_parser.mly"
      (Llvm_ast.prog)
# 6060 "llvm_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DECLARE ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DEFINE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LVAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 6090 "llvm_parser.ml"
