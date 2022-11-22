
module MenhirBasics = struct
  
  exception Error
  
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
    | NUM of (
# 9 "ml_parser.mly"
       (int)
# 25 "ml_parser.ml"
  )
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
    | IDENT of (
# 10 "ml_parser.mly"
       (string)
# 42 "ml_parser.ml"
  )
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
  | MenhirState411
  | MenhirState410
  | MenhirState409
  | MenhirState406
  | MenhirState405
  | MenhirState404
  | MenhirState402
  | MenhirState401
  | MenhirState398
  | MenhirState395
  | MenhirState394
  | MenhirState393
  | MenhirState391
  | MenhirState390
  | MenhirState389
  | MenhirState388
  | MenhirState383
  | MenhirState377
  | MenhirState374
  | MenhirState371
  | MenhirState365
  | MenhirState353
  | MenhirState349
  | MenhirState341
  | MenhirState329
  | MenhirState325
  | MenhirState317
  | MenhirState315
  | MenhirState313
  | MenhirState309
  | MenhirState307
  | MenhirState305
  | MenhirState302
  | MenhirState300
  | MenhirState297
  | MenhirState293
  | MenhirState281
  | MenhirState280
  | MenhirState277
  | MenhirState275
  | MenhirState274
  | MenhirState273
  | MenhirState271
  | MenhirState270
  | MenhirState269
  | MenhirState268
  | MenhirState266
  | MenhirState265
  | MenhirState263
  | MenhirState262
  | MenhirState260
  | MenhirState259
  | MenhirState257
  | MenhirState256
  | MenhirState254
  | MenhirState253
  | MenhirState251
  | MenhirState250
  | MenhirState248
  | MenhirState247
  | MenhirState245
  | MenhirState242
  | MenhirState238
  | MenhirState237
  | MenhirState234
  | MenhirState233
  | MenhirState229
  | MenhirState225
  | MenhirState222
  | MenhirState218
  | MenhirState214
  | MenhirState212
  | MenhirState210
  | MenhirState208
  | MenhirState205
  | MenhirState203
  | MenhirState201
  | MenhirState199
  | MenhirState198
  | MenhirState190
  | MenhirState189
  | MenhirState180
  | MenhirState178
  | MenhirState176
  | MenhirState172
  | MenhirState170
  | MenhirState168
  | MenhirState165
  | MenhirState163
  | MenhirState160
  | MenhirState156
  | MenhirState144
  | MenhirState142
  | MenhirState139
  | MenhirState135
  | MenhirState132
  | MenhirState131
  | MenhirState128
  | MenhirState126
  | MenhirState125
  | MenhirState124
  | MenhirState122
  | MenhirState121
  | MenhirState120
  | MenhirState119
  | MenhirState117
  | MenhirState116
  | MenhirState114
  | MenhirState113
  | MenhirState111
  | MenhirState110
  | MenhirState108
  | MenhirState107
  | MenhirState105
  | MenhirState104
  | MenhirState102
  | MenhirState101
  | MenhirState99
  | MenhirState98
  | MenhirState96
  | MenhirState93
  | MenhirState89
  | MenhirState88
  | MenhirState85
  | MenhirState84
  | MenhirState80
  | MenhirState76
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState68
  | MenhirState66
  | MenhirState61
  | MenhirState59
  | MenhirState57
  | MenhirState55
  | MenhirState52
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState40
  | MenhirState39
  | MenhirState35
  | MenhirState31
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState19
  | MenhirState17
  | MenhirState14
  | MenhirState9
  | MenhirState7
  | MenhirState4
  | MenhirState0

# 1 "ml_parser.mly"
  
    open Ml_ast

    exception SyntaxError
    let syn_err = syn_err SyntaxError
       

# 238 "ml_parser.ml"

let rec _menhir_reduce31 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 243 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 247 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__7_ ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _startpos__4_), _endpos__6_, _, _, _startpos__6_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__7_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 256 "ml_parser.ml"
    ) = let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 81 "ml_parser.mly"
    ( syn_err "Invalid pattern match:\n  Only pattern matches of the form | [] -> e | h::t -> e are supported" _loc)
# 263 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce35 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 270 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 279 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 87 "ml_parser.mly"
                   ( syn_err "Expected WITH" _loc )
# 286 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce58 : _menhir_env -> ((((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 293 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 297 "ml_parser.ml"
) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 301 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__9_ ->
    let ((((((_menhir_stack, _menhir_s, _startpos__1_), _, _startpos__2_), _endpos__3_, _, _startpos__3_), _endpos__5_, _, _startpos__5_), _endpos__6_), _endpos__8_, _, _, _startpos__8_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__9_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 310 "ml_parser.ml"
    ) = let _endpos = _endpos__9_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 127 "ml_parser.mly"
    ( syn_err "Expected IN" _loc )
# 317 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce38 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 324 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 328 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__5_ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _, _, _startpos__4_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__5_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 337 "ml_parser.ml"
    ) = let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 90 "ml_parser.mly"
                          ( syn_err "Invalid token" _loc )
# 344 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce40 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 351 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 360 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 92 "ml_parser.mly"
                ( syn_err "Expected THEN" _loc )
# 367 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce65 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 374 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _, _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 383 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 139 "ml_parser.mly"
                 ( syn_err "Expected ->" _loc )
# 390 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_prog : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 397 "ml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState395 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv1069 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 406 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 410 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 414 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 418 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 425 "ml_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv1067 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 431 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 435 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 439 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 443 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos__9_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((_9 : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 450 "ml_parser.ml"
        )) : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 454 "ml_parser.ml"
        )) = _v in
        ((let (((((((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos__3_, _, (_3 : (
# 10 "ml_parser.mly"
       (string)
# 459 "ml_parser.ml"
        )), _startpos__3_), _, (_4 : (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 463 "ml_parser.ml"
        ))), _, (_5 : (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 467 "ml_parser.ml"
        ))), _endpos__7_, _, (_7 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 471 "ml_parser.ml"
        )), _startpos__7_), _) = _menhir_stack in
        let _endpos = _endpos__9_ in
        let _v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 477 "ml_parser.ml"
        ) = let _endpos = _endpos__9_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 244 "ml_parser.mly"
    ( Ml_ast.mk_exp (ELetFun (true, _3, fst _4, snd _4, _5, _7, _9)) _loc )
# 484 "ml_parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1068)) : 'freshtv1070)
    | MenhirState398 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1073 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 492 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 499 "ml_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1071 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 505 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos__3_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 512 "ml_parser.ml"
        )) : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 516 "ml_parser.ml"
        )) = _v in
        ((let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 521 "ml_parser.ml"
        )), _startpos__1_) = _menhir_stack in
        let _endpos = _endpos__3_ in
        let _v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 527 "ml_parser.ml"
        ) = let _endpos = _endpos__3_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 248 "ml_parser.mly"
    ( Ml_ast.mk_exp (ELet ("_", None, _1, _3)) _loc )
# 534 "ml_parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1072)) : 'freshtv1074)
    | MenhirState406 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv1077 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 542 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 546 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 550 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 554 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 561 "ml_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv1075 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 567 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 571 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 575 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 579 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos__8_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((_8 : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 586 "ml_parser.ml"
        )) : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 590 "ml_parser.ml"
        )) = _v in
        ((let ((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 10 "ml_parser.mly"
       (string)
# 595 "ml_parser.ml"
        )), _startpos__2_), _, (_3 : (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 599 "ml_parser.ml"
        ))), _, (_4 : (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 603 "ml_parser.ml"
        ))), _endpos__6_, _, (_6 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 607 "ml_parser.ml"
        )), _startpos__6_), _) = _menhir_stack in
        let _endpos = _endpos__8_ in
        let _v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 613 "ml_parser.ml"
        ) = let _endpos = _endpos__8_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 246 "ml_parser.mly"
    ( Ml_ast.mk_exp (ELetFun (false, _2, fst _3, snd _3, _4, _6, _8)) _loc )
# 620 "ml_parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1076)) : 'freshtv1078)
    | MenhirState411 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1081 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 628 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 632 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 636 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 643 "ml_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1079 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 649 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 653 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 657 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos__7_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((_7 : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 664 "ml_parser.ml"
        )) : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 668 "ml_parser.ml"
        )) = _v in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 10 "ml_parser.mly"
       (string)
# 673 "ml_parser.ml"
        )), _startpos__2_), _, (_3 : (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 677 "ml_parser.ml"
        ))), _endpos__5_, _, (_5 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 681 "ml_parser.ml"
        )), _startpos__5_), _) = _menhir_stack in
        let _endpos = _endpos__7_ in
        let _v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 687 "ml_parser.ml"
        ) = let _endpos = _endpos__7_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 242 "ml_parser.mly"
    ( Ml_ast.mk_exp (ELet (_2, _3, _5, _7)) _loc )
# 694 "ml_parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1080)) : 'freshtv1082)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1085) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 705 "ml_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1083) = Obj.magic _menhir_stack in
        let (_endpos__1_ : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 714 "ml_parser.ml"
        )) : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 718 "ml_parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv1084)) : 'freshtv1086)
    | _ ->
        _menhir_fail ()

and _menhir_error397 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 727 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce94 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 736 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 742 "ml_parser.ml"
    )), _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 749 "ml_parser.ml"
    ) = 
# 173 "ml_parser.mly"
                                           ( _2.edesc )
# 753 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run374 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 760 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState374 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState374 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState374 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState374

and _menhir_error355 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 801 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 805 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv1065 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 812 "ml_parser.ml"
    ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 816 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1066)

and _menhir_error344 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 825 "ml_parser.ml"
) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 829 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce16 : _menhir_env -> ((((((((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 838 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 842 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 846 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 850 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 854 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 860 "ml_parser.ml"
    )), _startpos__2_), _endpos__4_, _startpos__4_), _endpos__6_, _, (_6 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 864 "ml_parser.ml"
    )), _startpos__6_), _endpos__8_, (_8 : (
# 10 "ml_parser.mly"
       (string)
# 868 "ml_parser.ml"
    )), _startpos__8_), _endpos__10_, (_10 : (
# 10 "ml_parser.mly"
       (string)
# 872 "ml_parser.ml"
    )), _startpos__10_), _endpos__12_, _, (_12 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 876 "ml_parser.ml"
    )), _startpos__12_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__12_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 883 "ml_parser.ml"
    ) = 
# 56 "ml_parser.mly"
                                           ( EMatchList (_2, _6, _8, _10, _12) )
# 887 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce30 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 894 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 898 "ml_parser.ml"
) * Lexing.position) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__8_ ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _startpos__4_), _endpos__6_, _, _, _startpos__6_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__8_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 907 "ml_parser.ml"
    ) = let _endpos = _endpos__8_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 79 "ml_parser.mly"
    ( syn_err "Invalid pattern match:\n  Only pattern matches of the form | [] -> e | h::t -> e are supported" _loc)
# 914 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce29 : _menhir_env -> ((((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 921 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 925 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 929 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__9_ ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _startpos__4_), _endpos__6_, _, _, _startpos__6_), _endpos__8_, _, _startpos__8_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__9_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 938 "ml_parser.ml"
    ) = let _endpos = _endpos__9_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 77 "ml_parser.mly"
    ( syn_err "Invalid pattern match:\n  Only pattern matches of the form | [] -> e | h::t -> e are supported" _loc)
# 945 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce28 : _menhir_env -> (((((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 952 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 956 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 960 "ml_parser.ml"
) * Lexing.position) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__10_ ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _startpos__4_), _endpos__6_, _, _, _startpos__6_), _endpos__8_, _, _startpos__8_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__10_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 969 "ml_parser.ml"
    ) = let _endpos = _endpos__10_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 75 "ml_parser.mly"
    ( syn_err "Invalid pattern match:\n  Only pattern matches of the form | [] -> e | h::t -> e are supported" _loc)
# 976 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce27 : _menhir_env -> ((((((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 983 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 987 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 991 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 995 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__11_ ->
    let ((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _startpos__4_), _endpos__6_, _, _, _startpos__6_), _endpos__8_, _, _startpos__8_), _endpos__10_, _, _startpos__10_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__11_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1004 "ml_parser.ml"
    ) = let _endpos = _endpos__11_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 73 "ml_parser.mly"
    ( syn_err "Invalid pattern match:\n  Only pattern matches of the form | [] -> e | h::t -> e are supported" _loc)
# 1011 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error331 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1018 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1022 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv1063 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1029 "ml_parser.ml"
    ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1033 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1064)

and _menhir_reduce17 : _menhir_env -> (((((((((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1042 "ml_parser.ml"
) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1046 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1050 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1054 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1058 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1064 "ml_parser.ml"
    )), _startpos__2_), _endpos__5_, _startpos__5_), _endpos__7_, _, (_7 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1068 "ml_parser.ml"
    )), _startpos__7_), _endpos__9_, (_9 : (
# 10 "ml_parser.mly"
       (string)
# 1072 "ml_parser.ml"
    )), _startpos__9_), _endpos__11_, (_11 : (
# 10 "ml_parser.mly"
       (string)
# 1076 "ml_parser.ml"
    )), _startpos__11_), _endpos__13_, _, (_13 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1080 "ml_parser.ml"
    )), _startpos__13_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__13_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1087 "ml_parser.ml"
    ) = 
# 58 "ml_parser.mly"
                                           ( EMatchList (_2, _7, _9, _11, _13) )
# 1091 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error320 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1098 "ml_parser.ml"
) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1102 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run317 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 1111 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 1115 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1119 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState317 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState317 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState317

and _menhir_run309 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 1160 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 1164 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 1168 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1172 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState309

and _menhir_error295 : _menhir_env -> ((((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1213 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1217 "ml_parser.ml"
) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1221 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((('freshtv1061 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1228 "ml_parser.ml"
    ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1232 "ml_parser.ml"
    ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1236 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1062)

and _menhir_error220 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1245 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1249 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv1059 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1256 "ml_parser.ml"
    ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1260 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1060)

and _menhir_error216 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1269 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1057 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1276 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1058)

and _menhir_run212 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 1285 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 1289 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 1293 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1297 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState212 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState212 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState212

and _menhir_error192 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1338 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1055 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1345 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1056)

and _menhir_reduce33 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1354 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__5_ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _startpos__4_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__5_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1363 "ml_parser.ml"
    ) = let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 85 "ml_parser.mly"
    ( syn_err "Invalid pattern match:\n  Only pattern matches of the form | [] -> e | h::t -> e are supported" _loc)
# 1370 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error183 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1377 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1053 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1384 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1054)

and _menhir_reduce19 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 1393 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 1397 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1401 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1405 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 10 "ml_parser.mly"
       (string)
# 1411 "ml_parser.ml"
    )), _startpos__2_), _, (_3 : (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 1415 "ml_parser.ml"
    ))), _endpos__5_, _, (_5 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1419 "ml_parser.ml"
    )), _startpos__5_), _), _endpos__7_, _, (_7 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1423 "ml_parser.ml"
    )), _startpos__7_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__7_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1430 "ml_parser.ml"
    ) = 
# 60 "ml_parser.mly"
                                           ( ELet (_2, _3, _5, _7) )
# 1434 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce21 : _menhir_env -> ((((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 1441 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 1445 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 1449 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1453 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1457 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 10 "ml_parser.mly"
       (string)
# 1463 "ml_parser.ml"
    )), _startpos__2_), _, (_3 : (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 1467 "ml_parser.ml"
    ))), _, (_4 : (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 1471 "ml_parser.ml"
    ))), _endpos__6_, _, (_6 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1475 "ml_parser.ml"
    )), _startpos__6_), _), _endpos__8_, _, (_8 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1479 "ml_parser.ml"
    )), _startpos__8_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__8_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1486 "ml_parser.ml"
    ) = 
# 64 "ml_parser.mly"
                           ( ELetFun (false, _2, fst _3, snd _3, _4, _6, _8) )
# 1490 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce22 : _menhir_env -> ((((((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1497 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1501 "ml_parser.ml"
) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1505 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1509 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((((_menhir_stack, _menhir_s, _startpos__1_), _, _startpos__2_), _endpos__3_, (_3 : (
# 10 "ml_parser.mly"
       (string)
# 1515 "ml_parser.ml"
    )), _startpos__3_), _endpos__5_, (_5 : (
# 10 "ml_parser.mly"
       (string)
# 1519 "ml_parser.ml"
    )), _startpos__5_), _endpos__6_), _endpos__8_, _, (_8 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1523 "ml_parser.ml"
    )), _startpos__8_), _endpos__10_, _, (_10 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1527 "ml_parser.ml"
    )), _startpos__10_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__10_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1534 "ml_parser.ml"
    ) = 
# 66 "ml_parser.mly"
    ( ELetPair (_3, _5, _8, _10) )
# 1538 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error158 : _menhir_env -> ((((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1545 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1549 "ml_parser.ml"
) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1553 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((('freshtv1051 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1560 "ml_parser.ml"
    ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 1564 "ml_parser.ml"
    ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1568 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1052)

and _menhir_reduce20 : _menhir_env -> (((((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 1577 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 1581 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 1585 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1589 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1593 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((((((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos__3_, _, (_3 : (
# 10 "ml_parser.mly"
       (string)
# 1599 "ml_parser.ml"
    )), _startpos__3_), _, (_4 : (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 1603 "ml_parser.ml"
    ))), _, (_5 : (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 1607 "ml_parser.ml"
    ))), _endpos__7_, _, (_7 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1611 "ml_parser.ml"
    )), _startpos__7_), _), _endpos__9_, _, (_9 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1615 "ml_parser.ml"
    )), _startpos__9_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__9_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1622 "ml_parser.ml"
    ) = 
# 62 "ml_parser.mly"
                           ( ELetFun (true, _3, fst _4, snd _4, _5, _7, _9) )
# 1626 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce18 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1633 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1637 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1641 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1647 "ml_parser.ml"
    )), _startpos__2_), _endpos__4_, _, (_4 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1651 "ml_parser.ml"
    )), _startpos__4_), _endpos__6_, _, (_6 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1655 "ml_parser.ml"
    )), _startpos__6_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__6_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1662 "ml_parser.ml"
    ) = 
# 59 "ml_parser.mly"
                                           ( EIf (_2, _4, _6) )
# 1666 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error137 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1673 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1677 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv1049 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1684 "ml_parser.ml"
    ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1688 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1050)

and _menhir_error133 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1697 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1047 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1704 "ml_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1048)

and _menhir_reduce23 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 1713 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1717 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _, (_2 : (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 1723 "ml_parser.ml"
    ))), _endpos__4_, _, (_4 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1727 "ml_parser.ml"
    )), _startpos__4_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__4_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1734 "ml_parser.ml"
    ) = 
# 67 "ml_parser.mly"
                                           ( EFun (fst _2, snd _2, _4) )
# 1738 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce89 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1745 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1751 "ml_parser.ml"
    )), _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1758 "ml_parser.ml"
    ) = 
# 168 "ml_parser.mly"
                                                     ( EUnop (UNot, _2) )
# 1762 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce90 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1769 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1775 "ml_parser.ml"
    )), _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 1782 "ml_parser.ml"
    ) = 
# 169 "ml_parser.mly"
                                                     ( EUnop (UNeg, _2) )
# 1786 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run274 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1793 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState274 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState274 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState274 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState274 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState274 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState274 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState274

and _menhir_run234 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1826 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState234 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState234 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState234 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState234 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState234 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState234 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState234

and _menhir_run245 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1859 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState245 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState245 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245

and _menhir_run238 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1892 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState238

and _menhir_run251 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1925 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState251 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState251 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState251 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState251 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState251 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState251 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState251

and _menhir_run254 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1958 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState254 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState254 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState254 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState254 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState254 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState254 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState254 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState254 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState254 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState254

and _menhir_run257 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 1991 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState257 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState257 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState257 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState257 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState257 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState257 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState257

and _menhir_run260 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2024 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState260 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState260 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState260

and _menhir_run263 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2057 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState263

and _menhir_run266 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2090 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState266

and _menhir_run269 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2123 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState269 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState269 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState269 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState269 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState269 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState269 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState269

and _menhir_run248 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2156 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState248

and _menhir_run242 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2189 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState242 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState242 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState242 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState242 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState242 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState242 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState242

and _menhir_run125 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2222 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState125 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState125 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125

and _menhir_reduce81 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2255 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2259 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2265 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2269 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 2276 "ml_parser.ml"
    ) = 
# 160 "ml_parser.mly"
                                                     ( EBinop (BAnd, _1, _3) )
# 2280 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce82 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2287 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2291 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2297 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2301 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 2308 "ml_parser.ml"
    ) = 
# 161 "ml_parser.mly"
                                                     ( EBinop (BOr, _1, _3) )
# 2312 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run85 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2319 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85

and _menhir_run96 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2352 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_run89 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2385 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89

and _menhir_run102 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2418 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102

and _menhir_run105 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2451 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState105 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState105 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState105 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState105 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState105 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState105 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105

and _menhir_run108 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2484 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108

and _menhir_run111 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2517 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111

and _menhir_run114 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2550 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114

and _menhir_run117 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2583 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState117 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState117 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117

and _menhir_run120 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2616 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120

and _menhir_run99 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2649 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99

and _menhir_run93 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 2682 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93

and _menhir_error64 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 2715 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce112 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 2724 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 2730 "ml_parser.ml"
    )), _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 2737 "ml_parser.ml"
    ) = 
# 229 "ml_parser.mly"
                                           ( _1 )
# 2741 "ml_parser.ml"
     in
    _menhir_goto_ttyp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce6 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 2748 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__2_ ->
    let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 2754 "ml_parser.ml"
    )), _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 2761 "ml_parser.ml"
    ) = 
# 223 "ml_parser.mly"
                                           ( TList _1 )
# 2765 "ml_parser.ml"
     in
    _menhir_goto_atyp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error50 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 2772 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce112 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run199 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1041 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState199 in
        let (_v : (
# 10 "ml_parser.mly"
       (string)
# 2791 "ml_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState300
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState300 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQUAL ->
            _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState300
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState300) : 'freshtv1042)
    | LPAREN ->
        _menhir_run284 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1045 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState199 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1043 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_menhir_s : _menhir_state) = MenhirState201 in
            let (_v : (
# 10 "ml_parser.mly"
       (string)
# 2826 "ml_parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203) : 'freshtv1044)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState201) : 'freshtv1046)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState199

and _menhir_error227 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 2851 "ml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1039 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 2858 "ml_parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce65 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1040)

and _menhir_error78 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 2867 "ml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1037 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 2874 "ml_parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce65 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1038)

and _menhir_run57 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 2883 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TUNIT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_reduce7 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 2906 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 2912 "ml_parser.ml"
    )), _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 2919 "ml_parser.ml"
    ) = 
# 224 "ml_parser.mly"
                                           ( _2 )
# 2923 "ml_parser.ml"
     in
    _menhir_goto_atyp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run43 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 2930 "ml_parser.ml"
) * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TUNIT ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_error60 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 2953 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce113 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 2962 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 2966 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 2972 "ml_parser.ml"
    )), _startpos__1_), _endpos__3_, _, (_3 : (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 2976 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 2983 "ml_parser.ml"
    ) = 
# 230 "ml_parser.mly"
                                            ( TProd (_1, _3) )
# 2987 "ml_parser.ml"
     in
    _menhir_goto_ttyp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce118 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 2994 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 3000 "ml_parser.ml"
    )), _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 3007 "ml_parser.ml"
    ) = 
# 235 "ml_parser.mly"
                                           ( _1 )
# 3011 "ml_parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error46 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 3018 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce14 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 3026 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s (_1 : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 3031 "ml_parser.ml"
  )) _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3038 "ml_parser.ml"
    ) = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 194 "ml_parser.mly"
                                           ( mk_exp _1 _loc )
# 3045 "ml_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1035) = _menhir_stack in
    let (_endpos : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3054 "ml_parser.ml"
    )) = _v in
    let (_startpos : Lexing.position) = _startpos in
    ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv791 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 3064 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3068 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) : 'freshtv792)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv795 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3076 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error133 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | THEN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv793 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3088 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState135 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState135 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv794)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error133 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv796)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv799 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3132 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3136 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error137 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ELSE ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv797 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3148 "ml_parser.ml"
              ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3152 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState139 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState139 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState139 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv798)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error137 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv800)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv801 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3196 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3200 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3204 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce18 _menhir_env (Obj.magic _menhir_stack) : 'freshtv802)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv805 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3212 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 3216 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3220 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3224 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (((((('freshtv803 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3236 "ml_parser.ml"
              ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 3240 "ml_parser.ml"
              )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3244 "ml_parser.ml"
              ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3248 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState142 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv804)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142)) : 'freshtv806)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv807 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3294 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 3298 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3302 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3306 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3310 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) : 'freshtv808)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv811 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 3318 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 3322 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3326 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error158 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((((((('freshtv809 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 3338 "ml_parser.ml"
              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 3342 "ml_parser.ml"
              ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3346 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160) : 'freshtv810)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error158 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv812)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv813 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 3390 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 3394 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3398 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3402 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) : 'freshtv814)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv817 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3410 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 3414 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3418 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3422 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((((('freshtv815 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3434 "ml_parser.ml"
              ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 3438 "ml_parser.ml"
              )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3442 "ml_parser.ml"
              ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3446 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState170 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState172 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState172 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState172 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv816)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170)) : 'freshtv818)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv819 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3492 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 3496 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3500 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3504 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3508 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) : 'freshtv820)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv823 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3516 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3520 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3524 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (((('freshtv821 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3536 "ml_parser.ml"
              ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3540 "ml_parser.ml"
              ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3544 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState178 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState180 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState180 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState180 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180) : 'freshtv822)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178)) : 'freshtv824)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv825 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3590 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3594 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3598 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3602 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) : 'freshtv826)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv847 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3610 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error183 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | WITH ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv845 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3622 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | NIL ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv833 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3632 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
                  let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | ARROW ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv827 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3645 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | FALSE ->
                          _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | FUN ->
                          _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | IDENT _v ->
                          _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState353 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | IF ->
                          _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | LET ->
                          _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | LPAREN ->
                          _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | MATCH ->
                          _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | NEG ->
                          _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | NIL ->
                          _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | NOT ->
                          _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | NUM _v ->
                          _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState353 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | TRUE ->
                          _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | UNIT ->
                          _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState353 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState353) : 'freshtv828)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv831 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3687 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                      ((let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv829 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3693 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                      let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv830)) : 'freshtv832)) : 'freshtv834)
              | PIPE ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv843 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3703 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | NIL ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv839 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3713 "ml_parser.ml"
                      ) * Lexing.position))) = Obj.magic _menhir_stack in
                      let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                      let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                      ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
                      let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | ARROW ->
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((('freshtv835 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3726 "ml_parser.ml"
                          ) * Lexing.position))) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                          ((let _menhir_env = _menhir_discard _menhir_env in
                          let _tok = _menhir_env._menhir_token in
                          match _tok with
                          | FALSE ->
                              _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | FUN ->
                              _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | IDENT _v ->
                              _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | IF ->
                              _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | LET ->
                              _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | LPAREN ->
                              _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | MATCH ->
                              _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | NEG ->
                              _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | NIL ->
                              _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | NOT ->
                              _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | NUM _v ->
                              _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | TRUE ->
                              _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | UNIT ->
                              _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | _ ->
                              assert (not _menhir_env._menhir_error);
                              _menhir_env._menhir_error <- true;
                              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState189) : 'freshtv836)
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((('freshtv837 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3768 "ml_parser.ml"
                          ) * Lexing.position))) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                          ((let (_menhir_stack, _, _) = _menhir_stack in
                          _menhir_error185 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv838)) : 'freshtv840)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv841 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3779 "ml_parser.ml"
                      ) * Lexing.position))) = Obj.magic _menhir_stack in
                      (_menhir_error185 _menhir_env (Obj.magic _menhir_stack) : 'freshtv842)) : 'freshtv844)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_error185 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv846)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error183 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv848)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv869 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3795 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error192 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | WITH ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv867 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3807 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | NIL ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv855 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3817 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
                  let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | ARROW ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv849 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3830 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | FALSE ->
                          _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | FUN ->
                          _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | IDENT _v ->
                          _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState329 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | IF ->
                          _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | LET ->
                          _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | LPAREN ->
                          _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | MATCH ->
                          _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | NEG ->
                          _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | NIL ->
                          _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | NOT ->
                          _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | NUM _v ->
                          _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState329 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | TRUE ->
                          _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | UNIT ->
                          _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState329 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState329) : 'freshtv850)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv853 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3872 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                      ((let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv851 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3878 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                      let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv852)) : 'freshtv854)) : 'freshtv856)
              | PIPE ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv865 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3888 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | NIL ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv861 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3898 "ml_parser.ml"
                      ) * Lexing.position))) = Obj.magic _menhir_stack in
                      let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                      let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                      ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
                      let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | ARROW ->
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((('freshtv857 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3911 "ml_parser.ml"
                          ) * Lexing.position))) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                          ((let _menhir_env = _menhir_discard _menhir_env in
                          let _tok = _menhir_env._menhir_token in
                          match _tok with
                          | FALSE ->
                              _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | FUN ->
                              _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | IDENT _v ->
                              _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState198 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | IF ->
                              _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | LET ->
                              _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | LPAREN ->
                              _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | MATCH ->
                              _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | NEG ->
                              _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | NIL ->
                              _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | NOT ->
                              _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | NUM _v ->
                              _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState198 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | TRUE ->
                              _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | UNIT ->
                              _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState198 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                          | _ ->
                              assert (not _menhir_env._menhir_error);
                              _menhir_env._menhir_error <- true;
                              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState198) : 'freshtv858)
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((('freshtv859 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3953 "ml_parser.ml"
                          ) * Lexing.position))) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                          ((let (_menhir_stack, _, _) = _menhir_stack in
                          _menhir_error194 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv860)) : 'freshtv862)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((('freshtv863 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3964 "ml_parser.ml"
                      ) * Lexing.position))) = Obj.magic _menhir_stack in
                      (_menhir_error194 _menhir_env (Obj.magic _menhir_stack) : 'freshtv864)) : 'freshtv866)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_error194 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv868)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error192 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv870)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv871 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 3980 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 3984 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 3988 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 3992 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState210
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210)) : 'freshtv872)
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv875 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4010 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error216 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | THEN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv873 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4022 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState218 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState218 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState218) : 'freshtv874)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error216 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv876)
    | MenhirState218 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv879 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4066 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4070 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error220 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ELSE ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv877 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4082 "ml_parser.ml"
              ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4086 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState222) : 'freshtv878)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error220 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv880)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv881 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 4130 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4134 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) : 'freshtv882)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv883 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4142 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4146 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4150 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce18 _menhir_env (Obj.magic _menhir_stack) : 'freshtv884)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv885 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 4158 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 4162 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 4166 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4170 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4174 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) : 'freshtv886)
    | MenhirState293 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv889 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4182 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4186 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4190 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error295 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((((((('freshtv887 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4202 "ml_parser.ml"
              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4206 "ml_parser.ml"
              ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4210 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState297) : 'freshtv888)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error295 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv890)
    | MenhirState297 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv891 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4254 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4258 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4262 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4266 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) : 'freshtv892)
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv893 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 4274 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 4278 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 4282 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4286 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState307
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              _menhir_run309 _menhir_env (Obj.magic _menhir_stack) MenhirState307
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState307)) : 'freshtv894)
    | MenhirState309 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv895 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 4304 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 4308 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 4312 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4316 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4320 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) : 'freshtv896)
    | MenhirState313 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv897 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 4328 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 4332 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4336 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState315
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              _menhir_run317 _menhir_env (Obj.magic _menhir_stack) MenhirState315
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState315)) : 'freshtv898)
    | MenhirState317 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv899 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 4354 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 4358 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4362 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4366 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) : 'freshtv900)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv919 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4374 "ml_parser.ml"
        ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4378 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error320 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | PIPE ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (((((('freshtv917 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4390 "ml_parser.ml"
              ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4394 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((((((('freshtv913 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4404 "ml_parser.ml"
                  ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4408 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_v : (
# 10 "ml_parser.mly"
       (string)
# 4414 "ml_parser.ml"
                  )) = _v in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                  let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | CONS ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : (((((((('freshtv909 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4426 "ml_parser.ml"
                      ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4430 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4434 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | IDENT _v ->
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : ((((((((('freshtv905 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4444 "ml_parser.ml"
                          ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4448 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4452 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                          let (_v : (
# 10 "ml_parser.mly"
       (string)
# 4458 "ml_parser.ml"
                          )) = _v in
                          let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                          ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                          let _menhir_env = _menhir_discard _menhir_env in
                          let _tok = _menhir_env._menhir_token in
                          match _tok with
                          | ARROW ->
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : (((((((((('freshtv901 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4470 "ml_parser.ml"
                              ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4474 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4478 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4482 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              ((let _menhir_env = _menhir_discard _menhir_env in
                              let _tok = _menhir_env._menhir_token in
                              match _tok with
                              | FALSE ->
                                  _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | FUN ->
                                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | IDENT _v ->
                                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | IF ->
                                  _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | LET ->
                                  _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | LPAREN ->
                                  _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | MATCH ->
                                  _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NEG ->
                                  _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NIL ->
                                  _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NOT ->
                                  _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NUM _v ->
                                  _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | TRUE ->
                                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | UNIT ->
                                  _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | _ ->
                                  assert (not _menhir_env._menhir_error);
                                  _menhir_env._menhir_error <- true;
                                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState325) : 'freshtv902)
                          | _ ->
                              assert (not _menhir_env._menhir_error);
                              _menhir_env._menhir_error <- true;
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : (((((((((('freshtv903 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4524 "ml_parser.ml"
                              ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4528 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4532 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4536 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              ((let (((_menhir_stack, _, _menhir_s, _, _), _, _, _), _, _, _) = _menhir_stack in
                              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv904)) : 'freshtv906)
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : ((((((((('freshtv907 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4547 "ml_parser.ml"
                          ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4551 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4555 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          ((let ((_menhir_stack, _, _menhir_s, _, _), _, _, _) = _menhir_stack in
                          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv908)) : 'freshtv910)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : (((((((('freshtv911 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4566 "ml_parser.ml"
                      ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4570 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4574 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let ((_menhir_stack, _, _menhir_s, _, _), _, _, _) = _menhir_stack in
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv912)) : 'freshtv914)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((((((('freshtv915 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4585 "ml_parser.ml"
                  ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4589 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv916)) : 'freshtv918)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error320 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv920)
    | MenhirState325 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv921 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4602 "ml_parser.ml"
        ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4606 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4610 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4614 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4618 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) : 'freshtv922)
    | MenhirState329 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv949 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4626 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4630 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error331 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | PIPE ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((((('freshtv947 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4642 "ml_parser.ml"
              ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4646 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (((((('freshtv941 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4656 "ml_parser.ml"
                  ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4660 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_v : (
# 10 "ml_parser.mly"
       (string)
# 4666 "ml_parser.ml"
                  )) = _v in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                  let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | CONS ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((((((('freshtv935 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4678 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4682 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4686 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | IDENT _v ->
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((((((('freshtv929 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4696 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4700 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4704 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                          let (_v : (
# 10 "ml_parser.mly"
       (string)
# 4710 "ml_parser.ml"
                          )) = _v in
                          let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                          ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                          let _menhir_env = _menhir_discard _menhir_env in
                          let _tok = _menhir_env._menhir_token in
                          match _tok with
                          | ARROW ->
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : ((((((((('freshtv923 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4722 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4726 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4730 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4734 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              ((let _menhir_env = _menhir_discard _menhir_env in
                              let _tok = _menhir_env._menhir_token in
                              match _tok with
                              | FALSE ->
                                  _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | FUN ->
                                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | IDENT _v ->
                                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | IF ->
                                  _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | LET ->
                                  _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | LPAREN ->
                                  _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | MATCH ->
                                  _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NEG ->
                                  _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NIL ->
                                  _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NOT ->
                                  _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NUM _v ->
                                  _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | TRUE ->
                                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | UNIT ->
                                  _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | _ ->
                                  assert (not _menhir_env._menhir_error);
                                  _menhir_env._menhir_error <- true;
                                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState341) : 'freshtv924)
                          | _ ->
                              assert (not _menhir_env._menhir_error);
                              _menhir_env._menhir_error <- true;
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : ((((((((('freshtv927 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4776 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4780 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4784 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4788 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              ((let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : ((((((((('freshtv925 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4794 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4798 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4802 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4806 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                              ((let _menhir_env = _menhir_discard _menhir_env in
                              _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv926)) : 'freshtv928)) : 'freshtv930)
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((((((('freshtv933 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4818 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4822 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4826 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          ((let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((((((('freshtv931 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4832 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4836 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4840 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                          ((let _menhir_env = _menhir_discard _menhir_env in
                          _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv932)) : 'freshtv934)) : 'freshtv936)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((((((('freshtv939 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4852 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4856 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4860 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((((((('freshtv937 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4866 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4870 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4874 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv938)) : 'freshtv940)) : 'freshtv942)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (((((('freshtv945 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4886 "ml_parser.ml"
                  ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4890 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (((((('freshtv943 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4896 "ml_parser.ml"
                  ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4900 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv944)) : 'freshtv946)) : 'freshtv948)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error331 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv950)
    | MenhirState341 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv951 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4914 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4918 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4922 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4926 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4930 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) : 'freshtv952)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv971 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4938 "ml_parser.ml"
        ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4942 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error344 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | PIPE ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (((((('freshtv969 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4954 "ml_parser.ml"
              ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4958 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((((((('freshtv965 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4968 "ml_parser.ml"
                  ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4972 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_v : (
# 10 "ml_parser.mly"
       (string)
# 4978 "ml_parser.ml"
                  )) = _v in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                  let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | CONS ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : (((((((('freshtv961 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4990 "ml_parser.ml"
                      ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 4994 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 4998 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | IDENT _v ->
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : ((((((((('freshtv957 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5008 "ml_parser.ml"
                          ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5012 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5016 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                          let (_v : (
# 10 "ml_parser.mly"
       (string)
# 5022 "ml_parser.ml"
                          )) = _v in
                          let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                          ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                          let _menhir_env = _menhir_discard _menhir_env in
                          let _tok = _menhir_env._menhir_token in
                          match _tok with
                          | ARROW ->
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : (((((((((('freshtv953 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5034 "ml_parser.ml"
                              ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5038 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5042 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5046 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              ((let _menhir_env = _menhir_discard _menhir_env in
                              let _tok = _menhir_env._menhir_token in
                              match _tok with
                              | FALSE ->
                                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | FUN ->
                                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | IDENT _v ->
                                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | IF ->
                                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | LET ->
                                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | LPAREN ->
                                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | MATCH ->
                                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NEG ->
                                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NIL ->
                                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NOT ->
                                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NUM _v ->
                                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | TRUE ->
                                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | UNIT ->
                                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | _ ->
                                  assert (not _menhir_env._menhir_error);
                                  _menhir_env._menhir_error <- true;
                                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState349) : 'freshtv954)
                          | _ ->
                              assert (not _menhir_env._menhir_error);
                              _menhir_env._menhir_error <- true;
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : (((((((((('freshtv955 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5088 "ml_parser.ml"
                              ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5092 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5096 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5100 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              ((let (((_menhir_stack, _, _menhir_s, _, _), _, _, _), _, _, _) = _menhir_stack in
                              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv956)) : 'freshtv958)
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : ((((((((('freshtv959 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5111 "ml_parser.ml"
                          ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5115 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5119 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          ((let ((_menhir_stack, _, _menhir_s, _, _), _, _, _) = _menhir_stack in
                          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv960)) : 'freshtv962)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : (((((((('freshtv963 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5130 "ml_parser.ml"
                      ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5134 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5138 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let ((_menhir_stack, _, _menhir_s, _, _), _, _, _) = _menhir_stack in
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv964)) : 'freshtv966)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((((((('freshtv967 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5149 "ml_parser.ml"
                  ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5153 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv968)) : 'freshtv970)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error344 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv972)
    | MenhirState349 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv973 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5166 "ml_parser.ml"
        ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5170 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5174 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5178 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5182 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) : 'freshtv974)
    | MenhirState353 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1001 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5190 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5194 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error355 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | PIPE ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((((('freshtv999 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5206 "ml_parser.ml"
              ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5210 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (((((('freshtv993 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5220 "ml_parser.ml"
                  ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5224 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_v : (
# 10 "ml_parser.mly"
       (string)
# 5230 "ml_parser.ml"
                  )) = _v in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                  let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | CONS ->
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((((((('freshtv987 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5242 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5246 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5250 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | IDENT _v ->
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((((((('freshtv981 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5260 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5264 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5268 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                          let (_v : (
# 10 "ml_parser.mly"
       (string)
# 5274 "ml_parser.ml"
                          )) = _v in
                          let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                          ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                          let _menhir_env = _menhir_discard _menhir_env in
                          let _tok = _menhir_env._menhir_token in
                          match _tok with
                          | ARROW ->
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : ((((((((('freshtv975 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5286 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5290 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5294 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5298 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              ((let _menhir_env = _menhir_discard _menhir_env in
                              let _tok = _menhir_env._menhir_token in
                              match _tok with
                              | FALSE ->
                                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | FUN ->
                                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | IDENT _v ->
                                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState365 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | IF ->
                                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | LET ->
                                  _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | LPAREN ->
                                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | MATCH ->
                                  _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NEG ->
                                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NIL ->
                                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NOT ->
                                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | NUM _v ->
                                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState365 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | TRUE ->
                                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | UNIT ->
                                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState365 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                              | _ ->
                                  assert (not _menhir_env._menhir_error);
                                  _menhir_env._menhir_error <- true;
                                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState365) : 'freshtv976)
                          | _ ->
                              assert (not _menhir_env._menhir_error);
                              _menhir_env._menhir_error <- true;
                              let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : ((((((((('freshtv979 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5340 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5344 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5348 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5352 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              ((let (_menhir_env : _menhir_env) = _menhir_env in
                              let (_menhir_stack : ((((((((('freshtv977 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5358 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5362 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5366 "ml_parser.ml"
                              ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5370 "ml_parser.ml"
                              ) * Lexing.position) = Obj.magic _menhir_stack in
                              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                              ((let _menhir_env = _menhir_discard _menhir_env in
                              _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv978)) : 'freshtv980)) : 'freshtv982)
                      | _ ->
                          assert (not _menhir_env._menhir_error);
                          _menhir_env._menhir_error <- true;
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((((((('freshtv985 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5382 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5386 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5390 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          ((let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack : (((((((('freshtv983 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5396 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5400 "ml_parser.ml"
                          ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5404 "ml_parser.ml"
                          ) * Lexing.position)) = Obj.magic _menhir_stack in
                          let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                          ((let _menhir_env = _menhir_discard _menhir_env in
                          _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv984)) : 'freshtv986)) : 'freshtv988)
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((((((('freshtv991 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5416 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5420 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5424 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      ((let (_menhir_env : _menhir_env) = _menhir_env in
                      let (_menhir_stack : ((((((('freshtv989 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5430 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5434 "ml_parser.ml"
                      ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5438 "ml_parser.ml"
                      ) * Lexing.position) = Obj.magic _menhir_stack in
                      let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                      ((let _menhir_env = _menhir_discard _menhir_env in
                      _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv990)) : 'freshtv992)) : 'freshtv994)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (((((('freshtv997 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5450 "ml_parser.ml"
                  ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5454 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (((((('freshtv995 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5460 "ml_parser.ml"
                  ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5464 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv996)) : 'freshtv998)) : 'freshtv1000)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error355 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1002)
    | MenhirState365 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv1003 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5478 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5482 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5486 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 5490 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5494 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) : 'freshtv1004)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1007 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5502 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState371
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              _menhir_run374 _menhir_env (Obj.magic _menhir_stack) MenhirState371
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv1005 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5516 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState371 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce94 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv1006)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState371)) : 'freshtv1008)
    | MenhirState374 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1009 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5531 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5535 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState377
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              _menhir_run374 _menhir_env (Obj.magic _menhir_stack) MenhirState377
          | RPAREN ->
              _menhir_reduce115 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState377)) : 'freshtv1010)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1013 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5555 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState383
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              _menhir_run374 _menhir_env (Obj.magic _menhir_stack) MenhirState383
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv1011 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5569 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState383 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce94 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv1012)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState383)) : 'freshtv1014)
    | MenhirState393 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv1017 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 5584 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 5588 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 5592 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5596 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState394
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | DOUBLESEMI ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (((((('freshtv1015 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 5608 "ml_parser.ml"
              ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 5612 "ml_parser.ml"
              )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 5616 "ml_parser.ml"
              ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5620 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState394 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState395 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run388 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState395 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState395 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState395) : 'freshtv1016)
          | IN ->
              _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState394
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState394)) : 'freshtv1018)
    | MenhirState0 | MenhirState411 | MenhirState406 | MenhirState398 | MenhirState395 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1025 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5668 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error397 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | DOUBLESEMI ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1023 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5680 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | EOF ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv1021 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5690 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_menhir_s : _menhir_state) = MenhirState398 in
                  ((let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv1019 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5698 "ml_parser.ml"
                  ) * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos__3_ : Lexing.position) = _endpos in
                  let (_ : _menhir_state) = _menhir_s in
                  ((let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5705 "ml_parser.ml"
                  )), _startpos__1_) = _menhir_stack in
                  let _endpos = _endpos__3_ in
                  let _v : (
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 5711 "ml_parser.ml"
                  ) = 
# 250 "ml_parser.mly"
    ( _1 )
# 5715 "ml_parser.ml"
                   in
                  _menhir_goto_prog _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1020)) : 'freshtv1022)
              | FALSE ->
                  _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState398 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run388 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState398 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState398 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState398) : 'freshtv1024)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error397 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1026)
    | MenhirState404 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1029 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 5757 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 5761 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 5765 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5769 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState405
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | DOUBLESEMI ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((((('freshtv1027 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 5781 "ml_parser.ml"
              ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 5785 "ml_parser.ml"
              )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 5789 "ml_parser.ml"
              ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5793 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState405 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState406 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run388 _menhir_env (Obj.magic _menhir_stack) MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState406 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState406 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState406) : 'freshtv1028)
          | IN ->
              _menhir_run309 _menhir_env (Obj.magic _menhir_stack) MenhirState405
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState405)) : 'freshtv1030)
    | MenhirState409 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1033 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 5841 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 5845 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5849 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState410
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | DOUBLESEMI ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (((('freshtv1031 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 5861 "ml_parser.ml"
              ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 5865 "ml_parser.ml"
              ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5869 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState410 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FUN ->
                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState411 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LET ->
                  _menhir_run388 _menhir_env (Obj.magic _menhir_stack) MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MATCH ->
                  _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState411 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState411 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState411) : 'freshtv1032)
          | IN ->
              _menhir_run317 _menhir_env (Obj.magic _menhir_stack) MenhirState410
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState410)) : 'freshtv1034)
    | _ ->
        _menhir_fail ()) : 'freshtv1036)

and _menhir_reduce110 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 5918 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 5927 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 189 "ml_parser.mly"
                      (syn_err "Expected )" _loc )
# 5934 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error232 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 5941 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce1 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 5950 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 5956 "ml_parser.ml"
    )), _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 5963 "ml_parser.ml"
    ) = 
# 144 "ml_parser.mly"
                                           ( _1 )
# 5967 "ml_parser.ml"
     in
    _menhir_goto_app_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce76 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 5974 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 5980 "ml_parser.ml"
    )), _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 5987 "ml_parser.ml"
    ) = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 198 "ml_parser.mly"
                                           ( mk_exp _1 _loc )
# 5994 "ml_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv789) = _menhir_stack in
    let (_endpos : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6003 "ml_parser.ml"
    )) = _v in
    let (_startpos : Lexing.position) = _startpos in
    ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState409 | MenhirState404 | MenhirState393 | MenhirState9 | MenhirState374 | MenhirState19 | MenhirState365 | MenhirState353 | MenhirState349 | MenhirState329 | MenhirState313 | MenhirState305 | MenhirState293 | MenhirState218 | MenhirState214 | MenhirState208 | MenhirState190 | MenhirState21 | MenhirState180 | MenhirState176 | MenhirState172 | MenhirState168 | MenhirState160 | MenhirState156 | MenhirState144 | MenhirState71 | MenhirState139 | MenhirState135 | MenhirState73 | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv717 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6013 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | COLON ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv713 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6027 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState84 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | LPAREN ->
                  _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TBOOL ->
                  _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TINT ->
                  _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TUNIT ->
                  _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv714)
          | CONS ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv715 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6051 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState84 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv716)
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | EQUAL ->
              _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | GE ->
              _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | GT ->
              _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | LE ->
              _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | LT ->
              _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | MINUS ->
              _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | NE ->
              _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | PLUS ->
              _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)) : 'freshtv718)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv719 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6111 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6115 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState88
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88
          | COLON | COMMA | CONS | DIV | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | MINUS | NE | NEG | NIL | NOT | NUM _ | PIPE | PLUS | RPAREN | THEN | TIMES | TRUE | UNIT | WITH ->
              _menhir_reduce79 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88)) : 'freshtv720)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv721 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6137 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6141 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce82 _menhir_env (Obj.magic _menhir_stack) : 'freshtv722)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv723 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6149 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6153 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce81 _menhir_env (Obj.magic _menhir_stack) : 'freshtv724)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv725 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6161 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6165 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState98
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState98
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState98
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState98
          | COLON | COMMA | CONS | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | MINUS | NE | NEG | NIL | NOT | NUM _ | PIPE | PLUS | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)) : 'freshtv726)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv727 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6191 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6195 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState101
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState101
          | COLON | COMMA | CONS | DIV | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | MINUS | NE | NEG | NIL | NOT | NUM _ | PIPE | PLUS | RPAREN | THEN | TIMES | TRUE | UNIT | WITH ->
              _menhir_reduce80 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)) : 'freshtv728)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv729 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6217 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6221 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | MINUS ->
              _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | PLUS ->
              _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | COLON | COMMA | CONS | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)) : 'freshtv730)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv731 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6251 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6255 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState107
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState107
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState107
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState107
          | COLON | COMMA | CONS | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | MINUS | NE | NEG | NIL | NOT | NUM _ | PIPE | PLUS | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)) : 'freshtv732)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv733 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6281 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6285 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState110
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState110
          | MINUS ->
              _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState110
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState110
          | PLUS ->
              _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState110
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState110
          | COLON | COMMA | CONS | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110)) : 'freshtv734)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv735 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6315 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6319 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState113
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState113
          | MINUS ->
              _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState113
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState113
          | PLUS ->
              _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState113
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState113
          | COLON | COMMA | CONS | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce85 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)) : 'freshtv736)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv737 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6349 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6353 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | MINUS ->
              _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | PLUS ->
              _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | COLON | COMMA | CONS | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce86 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)) : 'freshtv738)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv739 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6383 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6387 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | MINUS ->
              _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | PLUS ->
              _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | COLON | COMMA | CONS | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119)) : 'freshtv740)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv741 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6417 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6421 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | MINUS ->
              _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | PLUS ->
              _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | COLON | COMMA | CONS | DOUBLESEMI | ELSE | EQUAL | FALSE | GE | GT | IDENT _ | IN | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce83 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)) : 'freshtv742)
    | MenhirState125 | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv743 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6451 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6455 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | CONS ->
              _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | EQUAL ->
              _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | GE ->
              _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | GT ->
              _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | LE ->
              _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | LT ->
              _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | MINUS ->
              _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | NE ->
              _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | PLUS ->
              _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState124
          | COLON | COMMA | DOUBLESEMI | ELSE | FALSE | IDENT _ | IN | LPAREN | NEG | NIL | NOT | NUM _ | PIPE | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124)) : 'freshtv744)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv745 * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 6499 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6503 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | CONS ->
              _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | DIV ->
              _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | EQUAL ->
              _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | GE ->
              _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | GT ->
              _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | LE ->
              _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | LT ->
              _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | MINUS ->
              _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | NE ->
              _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | OR ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | PLUS ->
              _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | TIMES ->
              _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState132
          | COMMA | DOUBLESEMI | ELSE | FALSE | IDENT _ | IN | LPAREN | NEG | NIL | NOT | NUM _ | PIPE | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132)) : 'freshtv746)
    | MenhirState0 | MenhirState411 | MenhirState406 | MenhirState398 | MenhirState395 | MenhirState189 | MenhirState341 | MenhirState325 | MenhirState198 | MenhirState317 | MenhirState309 | MenhirState297 | MenhirState212 | MenhirState222 | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv751 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6547 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | COLON ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv747 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6561 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState233 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | LPAREN ->
                  _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TBOOL ->
                  _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TINT ->
                  _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TUNIT ->
                  _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState275) : 'freshtv748)
          | CONS ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv749 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6585 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState233 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState271 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState271 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NEG ->
                  _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NIL ->
                  _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState271 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NOT ->
                  _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState271 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState271 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | UNIT ->
                  _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState271 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState271) : 'freshtv750)
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | EQUAL ->
              _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | GE ->
              _menhir_run266 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | GT ->
              _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | LE ->
              _menhir_run260 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | LT ->
              _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | MINUS ->
              _menhir_run254 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | NE ->
              _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | PLUS ->
              _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState233
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233)) : 'freshtv752)
    | MenhirState234 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv753 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6645 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6649 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState237
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState237
          | COLON | CONS | DIV | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | MINUS | NE | NEG | NIL | NOT | NUM _ | PIPE | PLUS | TIMES | TRUE | UNIT ->
              _menhir_reduce79 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237)) : 'freshtv754)
    | MenhirState238 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv755 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6671 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6675 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce82 _menhir_env (Obj.magic _menhir_stack) : 'freshtv756)
    | MenhirState242 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv757 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6683 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6687 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce81 _menhir_env (Obj.magic _menhir_stack) : 'freshtv758)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv759 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6695 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6699 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState247
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState247
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState247
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState247
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState247
          | COLON | CONS | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | MINUS | NE | NEG | NIL | NOT | NUM _ | PIPE | PLUS | TRUE | UNIT ->
              _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState247)) : 'freshtv760)
    | MenhirState248 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv761 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6725 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6729 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState250
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState250
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState250
          | COLON | CONS | DIV | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | MINUS | NE | NEG | NIL | NOT | NUM _ | PIPE | PLUS | TIMES | TRUE | UNIT ->
              _menhir_reduce80 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState250)) : 'freshtv762)
    | MenhirState251 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv763 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6751 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6755 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState253
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState253
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState253
          | MINUS ->
              _menhir_run254 _menhir_env (Obj.magic _menhir_stack) MenhirState253
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState253
          | PLUS ->
              _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState253
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState253
          | COLON | CONS | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | TRUE | UNIT ->
              _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState253)) : 'freshtv764)
    | MenhirState254 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv765 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6785 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6789 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState256
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState256
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState256
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState256
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState256
          | COLON | CONS | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | MINUS | NE | NEG | NIL | NOT | NUM _ | PIPE | PLUS | TRUE | UNIT ->
              _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState256)) : 'freshtv766)
    | MenhirState257 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv767 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6815 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6819 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState259
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState259
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState259
          | MINUS ->
              _menhir_run254 _menhir_env (Obj.magic _menhir_stack) MenhirState259
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState259
          | PLUS ->
              _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState259
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState259
          | COLON | CONS | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | TRUE | UNIT ->
              _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState259)) : 'freshtv768)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv769 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6849 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6853 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState262
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState262
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState262
          | MINUS ->
              _menhir_run254 _menhir_env (Obj.magic _menhir_stack) MenhirState262
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState262
          | PLUS ->
              _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState262
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState262
          | COLON | CONS | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | TRUE | UNIT ->
              _menhir_reduce85 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState262)) : 'freshtv770)
    | MenhirState263 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv771 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6883 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6887 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState265
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState265
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState265
          | MINUS ->
              _menhir_run254 _menhir_env (Obj.magic _menhir_stack) MenhirState265
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState265
          | PLUS ->
              _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState265
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState265
          | COLON | CONS | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | TRUE | UNIT ->
              _menhir_reduce86 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState265)) : 'freshtv772)
    | MenhirState266 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv773 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6917 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6921 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState268
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState268
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState268
          | MINUS ->
              _menhir_run254 _menhir_env (Obj.magic _menhir_stack) MenhirState268
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState268
          | PLUS ->
              _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState268
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState268
          | COLON | CONS | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | TRUE | UNIT ->
              _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState268)) : 'freshtv774)
    | MenhirState269 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv775 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6951 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6955 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState270
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState270
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState270
          | MINUS ->
              _menhir_run254 _menhir_env (Obj.magic _menhir_stack) MenhirState270
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState270
          | PLUS ->
              _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState270
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState270
          | COLON | CONS | DOUBLESEMI | EQUAL | FALSE | GE | GT | IDENT _ | LE | LPAREN | LT | NE | NEG | NIL | NOT | NUM _ | PIPE | TRUE | UNIT ->
              _menhir_reduce83 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState270)) : 'freshtv776)
    | MenhirState274 | MenhirState271 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv777 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6985 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 6989 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState273
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | CONS ->
              _menhir_run274 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | EQUAL ->
              _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | GE ->
              _menhir_run266 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | GT ->
              _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | LE ->
              _menhir_run260 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | LT ->
              _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | MINUS ->
              _menhir_run254 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | NE ->
              _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | PLUS ->
              _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState273
          | COLON | DOUBLESEMI | FALSE | IDENT _ | LPAREN | NEG | NIL | NOT | NUM _ | PIPE | TRUE | UNIT ->
              _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState273)) : 'freshtv778)
    | MenhirState280 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv779 * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 7033 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 7037 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState281
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND ->
              _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | CONS ->
              _menhir_run274 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | DIV ->
              _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | EQUAL ->
              _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | GE ->
              _menhir_run266 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | GT ->
              _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | LE ->
              _menhir_run260 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | LT ->
              _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | MINUS ->
              _menhir_run254 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | NE ->
              _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | OR ->
              _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | PLUS ->
              _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | TIMES ->
              _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState281
          | DOUBLESEMI | FALSE | IDENT _ | LPAREN | NEG | NIL | NOT | NUM _ | PIPE | TRUE | UNIT ->
              _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState281)) : 'freshtv780)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv781 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 7081 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce90 _menhir_env (Obj.magic _menhir_stack) : 'freshtv782)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv783 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 7089 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce89 _menhir_env (Obj.magic _menhir_stack) : 'freshtv784)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv785 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 7097 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce90 _menhir_env (Obj.magic _menhir_stack) : 'freshtv786)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv787 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 7105 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce89 _menhir_env (Obj.magic _menhir_stack) : 'freshtv788)
    | _ ->
        _menhir_fail ()) : 'freshtv790)

and _menhir_error83 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 7114 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 7126 "ml_parser.ml"
    ) = 
# 222 "ml_parser.mly"
                                           ( TUnit )
# 7130 "ml_parser.ml"
     in
    _menhir_goto_atyp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 7141 "ml_parser.ml"
    ) = 
# 220 "ml_parser.mly"
                                           ( TInt )
# 7145 "ml_parser.ml"
     in
    _menhir_goto_atyp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce4 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 7156 "ml_parser.ml"
    ) = 
# 221 "ml_parser.mly"
                                           ( TBool )
# 7160 "ml_parser.ml"
     in
    _menhir_goto_atyp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run36 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run37 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run38 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TUNIT ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_reduce92 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 7201 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s (_1 : (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 7206 "ml_parser.ml"
  )) _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 7213 "ml_parser.ml"
    ) = 
# 171 "ml_parser.mly"
                                           ( EConst _1 )
# 7217 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_atyp : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 7224 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState126 | MenhirState35 | MenhirState39 | MenhirState43 | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv707 * Lexing.position * _menhir_state * (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 7234 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error50 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | TLIST ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv705 * Lexing.position * _menhir_state * (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 7246 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv706)
          | ARROW | COMMA | DOUBLESEMI | ELSE | IN | PIPE | RPAREN | THEN | TIMES | WITH ->
              _menhir_reduce112 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error50 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv708)
    | MenhirState275 | MenhirState68 | MenhirState31 | MenhirState57 | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv711 * Lexing.position * _menhir_state * (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 7262 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error64 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | TLIST ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv709 * Lexing.position * _menhir_state * (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 7274 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv710)
          | ARROW | DOUBLESEMI | EQUAL | PIPE | RPAREN | TIMES ->
              _menhir_reduce112 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error64 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv712)
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7291 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv659 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7301 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ARROW ->
              _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv657 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7315 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState40 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv658)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)) : 'freshtv660)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv661 * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7330 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7334 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ARROW ->
              _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState45
          | COMMA | DOUBLESEMI | ELSE | IN | PIPE | RPAREN | THEN | WITH ->
              _menhir_reduce119 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)) : 'freshtv662)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv665 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7354 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ARROW ->
              _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState52
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv663 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7368 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState52 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv664)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52)) : 'freshtv666)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv693 * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 7383 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7387 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ARROW ->
              _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState55
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv691 * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 7401 "ml_parser.ml"
              ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7405 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState55 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv689 * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 7414 "ml_parser.ml"
              ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7418 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos__5_ : Lexing.position) = _endpos in
              let (_ : _menhir_state) = _menhir_s in
              ((let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, (_2 : (
# 10 "ml_parser.mly"
       (string)
# 7425 "ml_parser.ml"
              )), _startpos__2_), _endpos__4_, _, (_4 : (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7429 "ml_parser.ml"
              )), _startpos__4_) = _menhir_stack in
              let _v : (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7434 "ml_parser.ml"
              ) = 
# 203 "ml_parser.mly"
                                           ( (_2, _4) )
# 7438 "ml_parser.ml"
               in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv687) = _menhir_stack in
              let (_menhir_s : _menhir_state) = _menhir_s in
              let (_v : (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7446 "ml_parser.ml"
              )) = _v in
              ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
              match _menhir_s with
              | MenhirState27 ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((('freshtv667 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 7455 "ml_parser.ml"
                  ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7459 "ml_parser.ml"
                  )) = Obj.magic _menhir_stack in
                  ((if _menhir_env._menhir_error then
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66
                  else
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | COLON ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | EQUAL ->
                        _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | _ ->
                        (assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)) : 'freshtv668)
              | MenhirState76 ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv671 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7479 "ml_parser.ml"
                  )) = Obj.magic _menhir_stack in
                  ((if _menhir_env._menhir_error then
                    _menhir_error78 _menhir_env (Obj.magic _menhir_stack)
                  else
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ARROW ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv669 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7491 "ml_parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | FALSE ->
                            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | FUN ->
                            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IDENT _v ->
                            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IF ->
                            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LET ->
                            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LPAREN ->
                            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | MATCH ->
                            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NEG ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NIL ->
                            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NOT ->
                            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NUM _v ->
                            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TRUE ->
                            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | UNIT ->
                            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv670)
                    | _ ->
                        (assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_error78 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv672)
              | MenhirState163 ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv673 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 7535 "ml_parser.ml"
                  ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7539 "ml_parser.ml"
                  )) = Obj.magic _menhir_stack in
                  ((if _menhir_env._menhir_error then
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165
                  else
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | COLON ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState165
                    | EQUAL ->
                        _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState165
                    | _ ->
                        (assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165)) : 'freshtv674)
              | MenhirState203 ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((('freshtv675 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 7559 "ml_parser.ml"
                  ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7563 "ml_parser.ml"
                  )) = Obj.magic _menhir_stack in
                  ((if _menhir_env._menhir_error then
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205
                  else
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | COLON ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState205
                    | EQUAL ->
                        _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState205
                    | _ ->
                        (assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205)) : 'freshtv676)
              | MenhirState225 ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv679 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7583 "ml_parser.ml"
                  )) = Obj.magic _menhir_stack in
                  ((if _menhir_env._menhir_error then
                    _menhir_error227 _menhir_env (Obj.magic _menhir_stack)
                  else
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ARROW ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ('freshtv677 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7595 "ml_parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | FALSE ->
                            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | FUN ->
                            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IDENT _v ->
                            _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState229 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IF ->
                            _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LET ->
                            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LPAREN ->
                            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | MATCH ->
                            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NEG ->
                            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NIL ->
                            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NOT ->
                            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NUM _v ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState229 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TRUE ->
                            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | UNIT ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState229) : 'freshtv678)
                    | _ ->
                        (assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_error227 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv680)
              | MenhirState300 ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv681 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 7639 "ml_parser.ml"
                  ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7643 "ml_parser.ml"
                  )) = Obj.magic _menhir_stack in
                  ((if _menhir_env._menhir_error then
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState302
                  else
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | COLON ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState302
                    | EQUAL ->
                        _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState302
                    | _ ->
                        (assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState302)) : 'freshtv682)
              | MenhirState390 ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((('freshtv683 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 7663 "ml_parser.ml"
                  ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7667 "ml_parser.ml"
                  )) = Obj.magic _menhir_stack in
                  ((if _menhir_env._menhir_error then
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState391
                  else
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | COLON ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState391
                    | EQUAL ->
                        _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState391
                    | _ ->
                        (assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState391)) : 'freshtv684)
              | MenhirState401 ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv685 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 7687 "ml_parser.ml"
                  ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 7691 "ml_parser.ml"
                  )) = Obj.magic _menhir_stack in
                  ((if _menhir_env._menhir_error then
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState402
                  else
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | COLON ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState402
                    | EQUAL ->
                        _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState402
                    | _ ->
                        (assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState402)) : 'freshtv686)
              | _ ->
                  _menhir_fail ()) : 'freshtv688)) : 'freshtv690)) : 'freshtv692)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)) : 'freshtv694)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv695 * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7717 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7721 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ARROW ->
              _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState59
          | DOUBLESEMI | EQUAL | PIPE | RPAREN ->
              _menhir_reduce119 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)) : 'freshtv696)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv699 * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7741 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ARROW ->
              _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState69
          | EQUAL ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv697 * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7755 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let ((_menhir_stack, _menhir_s), _endpos__2_, _, (_2 : (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7760 "ml_parser.ml"
              )), _startpos__2_) = _menhir_stack in
              let _v : (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 7765 "ml_parser.ml"
              ) = 
# 208 "ml_parser.mly"
                                           ( Some _2 )
# 7769 "ml_parser.ml"
               in
              _menhir_goto_optannot _menhir_env _menhir_stack _menhir_s _v) : 'freshtv698)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)) : 'freshtv700)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv701 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 7781 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7785 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ARROW ->
              _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState128
          | COMMA | DOUBLESEMI | ELSE | IN | PIPE | RPAREN | THEN | WITH ->
              _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128)) : 'freshtv702)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv703 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 7805 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 7809 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState277
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ARROW ->
              _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState277
          | DOUBLESEMI | PIPE ->
              _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState277)) : 'freshtv704)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ttyp : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 7830 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState126 | MenhirState35 | MenhirState39 | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv647 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 7840 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error46 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | TIMES ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv645 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 7852 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | LPAREN ->
                  _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TBOOL ->
                  _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TINT ->
                  _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TUNIT ->
                  _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv646)
          | ARROW | COMMA | DOUBLESEMI | ELSE | IN | PIPE | RPAREN | THEN | WITH ->
              _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error46 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv648)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv649 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 7880 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 7884 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce113 _menhir_env (Obj.magic _menhir_stack) : 'freshtv650)
    | MenhirState275 | MenhirState68 | MenhirState31 | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv653 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 7892 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error60 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | TIMES ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv651 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 7904 "ml_parser.ml"
              ) * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | LPAREN ->
                  _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TBOOL ->
                  _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TINT ->
                  _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TUNIT ->
                  _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv652)
          | ARROW | DOUBLESEMI | EQUAL | PIPE | RPAREN ->
              _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error60 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv654)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv655 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 7932 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 7936 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce113 _menhir_env (Obj.magic _menhir_stack) : 'freshtv656)
    | _ ->
        _menhir_fail ()

and _menhir_goto_app_expr_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 7945 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState409 | MenhirState404 | MenhirState393 | MenhirState9 | MenhirState19 | MenhirState374 | MenhirState21 | MenhirState353 | MenhirState365 | MenhirState349 | MenhirState190 | MenhirState329 | MenhirState313 | MenhirState305 | MenhirState293 | MenhirState208 | MenhirState214 | MenhirState218 | MenhirState176 | MenhirState180 | MenhirState168 | MenhirState172 | MenhirState156 | MenhirState160 | MenhirState71 | MenhirState144 | MenhirState73 | MenhirState135 | MenhirState139 | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv641 * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 7955 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | FALSE ->
              _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState131 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | IDENT _v ->
              _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState131 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NEG ->
              _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NIL ->
              _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState131 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NOT ->
              _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NUM _v ->
              _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState131 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | TRUE ->
              _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState131 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | UNIT ->
              _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState131 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | COMMA | DOUBLESEMI | ELSE | IN | PIPE | RPAREN | THEN | WITH ->
              _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131)) : 'freshtv642)
    | MenhirState0 | MenhirState411 | MenhirState406 | MenhirState395 | MenhirState398 | MenhirState189 | MenhirState341 | MenhirState198 | MenhirState325 | MenhirState317 | MenhirState309 | MenhirState297 | MenhirState212 | MenhirState222 | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv643 * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 7991 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState280
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | FALSE ->
              _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState280 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | IDENT _v ->
              _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState280 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | LPAREN ->
              _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState280 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NEG ->
              _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState280 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NIL ->
              _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState280 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NOT ->
              _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState280 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | NUM _v ->
              _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState280 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | TRUE ->
              _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState280 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | UNIT ->
              _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState280 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | DOUBLESEMI | PIPE ->
              _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState280)) : 'freshtv644)
    | _ ->
        _menhir_fail ()

and _menhir_reduce34 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 8028 "ml_parser.ml"
) * Lexing.position) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__4_ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__4_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8037 "ml_parser.ml"
    ) = let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 86 "ml_parser.mly"
                        ( syn_err "Expected case after WITH" _loc )
# 8044 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_expr_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8051 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState409 | MenhirState404 | MenhirState393 | MenhirState9 | MenhirState374 | MenhirState19 | MenhirState365 | MenhirState353 | MenhirState349 | MenhirState329 | MenhirState313 | MenhirState305 | MenhirState293 | MenhirState218 | MenhirState214 | MenhirState208 | MenhirState190 | MenhirState21 | MenhirState180 | MenhirState176 | MenhirState172 | MenhirState168 | MenhirState160 | MenhirState156 | MenhirState144 | MenhirState71 | MenhirState139 | MenhirState135 | MenhirState73 | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv637) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8063 "ml_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv638)
    | MenhirState0 | MenhirState411 | MenhirState406 | MenhirState398 | MenhirState395 | MenhirState189 | MenhirState341 | MenhirState325 | MenhirState198 | MenhirState317 | MenhirState309 | MenhirState297 | MenhirState212 | MenhirState222 | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8075 "ml_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv640)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_error380 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8090 "ml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv635 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8097 "ml_parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce110 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv636)

and _menhir_reduce109 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8106 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8112 "ml_parser.ml"
    ))) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8119 "ml_parser.ml"
    ) = 
# 188 "ml_parser.mly"
                                           ( _2 )
# 8123 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error368 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8130 "ml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv633 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8137 "ml_parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce110 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv634)

and _menhir_goto_optannot : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8146 "ml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv583 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8156 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8160 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8164 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv579 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8174 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8178 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8182 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEG ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UNIT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv580)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv581 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8224 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8228 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8232 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv589 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8241 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8245 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8249 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv585 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8259 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8263 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8267 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEG ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UNIT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv586)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv587 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8309 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8313 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8317 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv588)) : 'freshtv590)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv595 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8326 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8330 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv591 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8340 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8344 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState176 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEG ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState176 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UNIT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176) : 'freshtv592)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv593 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8386 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8390 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | MenhirState205 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv601 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8399 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8403 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8407 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv597 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8417 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8421 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8425 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState208 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEG ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState208 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UNIT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208) : 'freshtv598)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv599 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8467 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8471 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8475 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv600)) : 'freshtv602)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv607 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8484 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8488 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8492 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv603 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8502 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8506 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8510 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEG ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UNIT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState305) : 'freshtv604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv605 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8552 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8556 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8560 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)
    | MenhirState300 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv613 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8569 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8573 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv609 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8583 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8587 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState313 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEG ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState313 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UNIT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState313 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState313) : 'freshtv610)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv611 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8629 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8633 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)
    | MenhirState391 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv619 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8642 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8646 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8650 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv615 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8660 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8664 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8668 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState393 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEG ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState393 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UNIT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState393 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState393) : 'freshtv616)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv617 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8710 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8714 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8718 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv618)) : 'freshtv620)
    | MenhirState402 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv625 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8727 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8731 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8735 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv621 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8745 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8749 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8753 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState404 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEG ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState404 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UNIT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState404) : 'freshtv622)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv623 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8795 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 8799 "ml_parser.ml"
            )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8803 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv624)) : 'freshtv626)
    | MenhirState401 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv631 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8812 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8816 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv627 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8826 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8830 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEG ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NIL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UNIT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState409) : 'freshtv628)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv629 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 8872 "ml_parser.ml"
            ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 8876 "ml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)
    | _ ->
        _menhir_fail ()

and _menhir_reduce63 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 8886 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__4_ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _, _startpos__2_), _endpos__3_, _, _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__4_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8895 "ml_parser.ml"
    ) = let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 137 "ml_parser.mly"
    ( syn_err "Expected COMMA identifier RPAREN" _loc )
# 8902 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce62 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 8909 "ml_parser.ml"
) * Lexing.position) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__5_ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _, _startpos__2_), _endpos__3_, _, _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__5_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8918 "ml_parser.ml"
    ) = let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 135 "ml_parser.mly"
    ( syn_err "Expected identifier" _loc )
# 8925 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce61 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 8932 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 8936 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__6_ ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _, _startpos__2_), _endpos__3_, _, _startpos__3_), _endpos__5_, _, _startpos__5_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__6_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8945 "ml_parser.ml"
    ) = let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 133 "ml_parser.mly"
    ( syn_err "Expected )" _loc )
# 8952 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce60 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 8959 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 8963 "ml_parser.ml"
) * Lexing.position) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__7_ ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _, _startpos__2_), _endpos__3_, _, _startpos__3_), _endpos__5_, _, _startpos__5_), _endpos__6_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__7_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8972 "ml_parser.ml"
    ) = let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 131 "ml_parser.mly"
    ( syn_err "Expected =" _loc )
# 8979 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_simple_expr_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8986 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState409 | MenhirState404 | MenhirState393 | MenhirState9 | MenhirState374 | MenhirState19 | MenhirState365 | MenhirState353 | MenhirState349 | MenhirState329 | MenhirState313 | MenhirState305 | MenhirState293 | MenhirState218 | MenhirState214 | MenhirState208 | MenhirState190 | MenhirState21 | MenhirState180 | MenhirState176 | MenhirState172 | MenhirState168 | MenhirState160 | MenhirState156 | MenhirState144 | MenhirState71 | MenhirState139 | MenhirState135 | MenhirState73 | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571 * Lexing.position * _menhir_state * (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 8996 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error83 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND | COLON | CONS | DIV | EQUAL | GE | GT | LE | LT | MINUS | NE | OR | PLUS | TIMES ->
              _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack)
          | COMMA | DOUBLESEMI | ELSE | FALSE | IDENT _ | IN | LPAREN | NEG | NIL | NOT | NUM _ | PIPE | RPAREN | THEN | TRUE | UNIT | WITH ->
              _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error83 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv572)
    | MenhirState14 | MenhirState17 | MenhirState131 | MenhirState125 | MenhirState122 | MenhirState120 | MenhirState117 | MenhirState114 | MenhirState111 | MenhirState108 | MenhirState105 | MenhirState102 | MenhirState99 | MenhirState96 | MenhirState93 | MenhirState89 | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573 * Lexing.position * _menhir_state * (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9016 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) : 'freshtv574)
    | MenhirState0 | MenhirState411 | MenhirState406 | MenhirState398 | MenhirState395 | MenhirState189 | MenhirState341 | MenhirState325 | MenhirState198 | MenhirState317 | MenhirState309 | MenhirState297 | MenhirState212 | MenhirState222 | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv575 * Lexing.position * _menhir_state * (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9024 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error232 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | AND | COLON | CONS | DIV | EQUAL | GE | GT | LE | LT | MINUS | NE | OR | PLUS | TIMES ->
              _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack)
          | DOUBLESEMI | FALSE | IDENT _ | LPAREN | NEG | NIL | NOT | NUM _ | PIPE | TRUE | UNIT ->
              _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error232 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv576)
    | MenhirState4 | MenhirState7 | MenhirState280 | MenhirState274 | MenhirState271 | MenhirState269 | MenhirState266 | MenhirState263 | MenhirState260 | MenhirState257 | MenhirState254 | MenhirState251 | MenhirState248 | MenhirState245 | MenhirState242 | MenhirState238 | MenhirState234 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv577 * Lexing.position * _menhir_state * (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9044 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) : 'freshtv578)
    | _ ->
        _menhir_fail ()

and _menhir_run32 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run33 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run34 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TUNIT ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_goto_const : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 9087 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState409 | MenhirState404 | MenhirState393 | MenhirState9 | MenhirState14 | MenhirState17 | MenhirState19 | MenhirState374 | MenhirState21 | MenhirState353 | MenhirState365 | MenhirState349 | MenhirState190 | MenhirState329 | MenhirState313 | MenhirState305 | MenhirState293 | MenhirState208 | MenhirState214 | MenhirState218 | MenhirState176 | MenhirState180 | MenhirState168 | MenhirState172 | MenhirState156 | MenhirState160 | MenhirState71 | MenhirState144 | MenhirState73 | MenhirState135 | MenhirState139 | MenhirState131 | MenhirState80 | MenhirState122 | MenhirState125 | MenhirState120 | MenhirState117 | MenhirState114 | MenhirState111 | MenhirState108 | MenhirState102 | MenhirState105 | MenhirState96 | MenhirState99 | MenhirState85 | MenhirState93 | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 9099 "ml_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce92 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv568)
    | MenhirState0 | MenhirState411 | MenhirState406 | MenhirState395 | MenhirState398 | MenhirState4 | MenhirState7 | MenhirState189 | MenhirState341 | MenhirState198 | MenhirState325 | MenhirState317 | MenhirState309 | MenhirState297 | MenhirState212 | MenhirState222 | MenhirState280 | MenhirState229 | MenhirState271 | MenhirState274 | MenhirState269 | MenhirState266 | MenhirState263 | MenhirState260 | MenhirState257 | MenhirState251 | MenhirState254 | MenhirState245 | MenhirState248 | MenhirState234 | MenhirState242 | MenhirState238 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv569) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 9111 "ml_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce92 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv570)
    | _ ->
        _menhir_fail ()

and _menhir_reduce106 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__2_ _ ->
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9126 "ml_parser.ml"
    ) = let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 185 "ml_parser.mly"
            ( syn_err "Expected expression" _loc )
# 9133 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce107 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__2_ _ ->
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9145 "ml_parser.ml"
    ) = let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 186 "ml_parser.mly"
            ( syn_err "Expected expression" _loc )
# 9152 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce111 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__2_ _ ->
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9164 "ml_parser.ml"
    ) = let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 190 "ml_parser.mly"
               ( syn_err "Expected )" _loc )
# 9171 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce46 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__2_ _ ->
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9183 "ml_parser.ml"
    ) = let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 103 "ml_parser.mly"
    ( syn_err "Expected pattern or REC" _loc )
# 9190 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce52 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9202 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 115 "ml_parser.mly"
    ( syn_err "Expected identifier" _loc )
# 9209 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce51 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 9216 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__4_ _ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos__3_, _, _, _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__4_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9225 "ml_parser.ml"
    ) = let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 113 "ml_parser.mly"
    ( syn_err "Expected pattern (x : t) -- note type annotation is required" _loc )
# 9232 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce119 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9239 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9243 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9249 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9253 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9260 "ml_parser.ml"
    ) = 
# 236 "ml_parser.mly"
                                           ( TArrow (_1, _3) )
# 9264 "ml_parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce8 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9271 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 37 "ml_parser.mly"
      (Ml_ast.typ)
# 9280 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 225 "ml_parser.mly"
                   ( syn_err "Expected )" _loc )
# 9287 "ml_parser.ml"
     in
    _menhir_goto_atyp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce120 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9294 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9303 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 237 "ml_parser.mly"
                  ( syn_err "Expected type" _loc )
# 9310 "ml_parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce114 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 9317 "ml_parser.ml"
) * Lexing.position) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let (_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 9326 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 231 "ml_parser.mly"
                   ( syn_err "Expected type" _loc )
# 9333 "ml_parser.ml"
     in
    _menhir_goto_ttyp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce50 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 9340 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 9344 "ml_parser.ml"
) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__5_ _ ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos__3_, _, _, _startpos__3_), _, _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__5_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9353 "ml_parser.ml"
    ) = let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 111 "ml_parser.mly"
    ( syn_err "Expected =" _loc )
# 9360 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce49 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 9367 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 9371 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 9375 "ml_parser.ml"
)) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__7_ _ ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos__3_, _, _, _startpos__3_), _, _), _, _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__7_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9384 "ml_parser.ml"
    ) = let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 109 "ml_parser.mly"
    ( syn_err "Expected expression" _loc )
# 9391 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce79 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9398 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9402 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9408 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9412 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9419 "ml_parser.ml"
    ) = 
# 158 "ml_parser.mly"
                                                     ( EBinop (BMul, _1, _3) )
# 9423 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce77 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9430 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9434 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9440 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9444 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9451 "ml_parser.ml"
    ) = 
# 156 "ml_parser.mly"
                                                     ( EBinop (BAdd, _1, _3) )
# 9455 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce80 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9462 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9466 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9472 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9476 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9483 "ml_parser.ml"
    ) = 
# 159 "ml_parser.mly"
                                                     ( EBinop (BDiv, _1, _3) )
# 9487 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce88 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9494 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9498 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9504 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9508 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9515 "ml_parser.ml"
    ) = 
# 167 "ml_parser.mly"
                                                     ( EBinop (BNe, _1, _3) )
# 9519 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce78 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9526 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9530 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9536 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9540 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9547 "ml_parser.ml"
    ) = 
# 157 "ml_parser.mly"
                                                     ( EBinop (BSub, _1, _3) )
# 9551 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce84 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9558 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9562 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9568 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9572 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9579 "ml_parser.ml"
    ) = 
# 163 "ml_parser.mly"
                                                     ( EBinop (BLt, _1, _3) )
# 9583 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce85 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9590 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9594 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9600 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9604 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9611 "ml_parser.ml"
    ) = 
# 164 "ml_parser.mly"
                                                     ( EBinop (BLe, _1, _3) )
# 9615 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce86 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9622 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9626 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9632 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9636 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9643 "ml_parser.ml"
    ) = 
# 165 "ml_parser.mly"
                                                     ( EBinop (BGt, _1, _3) )
# 9647 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce87 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9654 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9658 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9664 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9668 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9675 "ml_parser.ml"
    ) = 
# 166 "ml_parser.mly"
                                                     ( EBinop (BGe, _1, _3) )
# 9679 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce83 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9686 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9690 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9696 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9700 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9707 "ml_parser.ml"
    ) = 
# 162 "ml_parser.mly"
                                                     ( EBinop (BEq, _1, _3) )
# 9711 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce91 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9718 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9722 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9728 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9732 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9739 "ml_parser.ml"
    ) = 
# 170 "ml_parser.mly"
                                                     ( ECons (_1, _3) )
# 9743 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce24 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9750 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9754 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9760 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 9764 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9771 "ml_parser.ml"
    ) = 
# 68 "ml_parser.mly"
                                                  ( EAnnot (_1, _3) )
# 9775 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce15 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9782 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9788 "ml_parser.ml"
    )), _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9795 "ml_parser.ml"
    ) = 
# 54 "ml_parser.mly"
                                           ( _1 )
# 9799 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce2 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9806 "ml_parser.ml"
) * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9810 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9816 "ml_parser.ml"
    )), _startpos__1_), _endpos__2_, _, (_2 : (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9820 "ml_parser.ml"
    )), _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9827 "ml_parser.ml"
    ) = let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 145 "ml_parser.mly"
                                           ( EApp (mk_exp _1 _loc, _2))
# 9834 "ml_parser.ml"
     in
    _menhir_goto_app_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce48 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 9841 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 9845 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 9849 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9853 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__8_ _ ->
    let ((((((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos__3_, _, _, _startpos__3_), _, _), _, _), _endpos__7_, _, _, _startpos__7_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__8_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9862 "ml_parser.ml"
    ) = let _endpos = _endpos__8_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 107 "ml_parser.mly"
    ( syn_err "Expected IN" _loc )
# 9869 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce45 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 9876 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9885 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 101 "ml_parser.mly"
    ( syn_err "Expected = or pattern (Maybe you forgot a type annotation on a function?)" _loc )
# 9892 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce56 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 9899 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 9903 "ml_parser.ml"
) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__4_ _ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _, _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__4_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9912 "ml_parser.ml"
    ) = let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 123 "ml_parser.mly"
    ( syn_err "Expected =" _loc )
# 9919 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce55 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 9926 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 9930 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 9934 "ml_parser.ml"
)) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__6_ _ ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _, _), _, _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__6_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9943 "ml_parser.ml"
    ) = let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 121 "ml_parser.mly"
    ( syn_err "Expected expression" _loc )
# 9950 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce54 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 9957 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 9961 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 9965 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 9969 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__7_ _ ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _, _), _, _), _endpos__6_, _, _, _startpos__6_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__7_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 9978 "ml_parser.ml"
    ) = let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 119 "ml_parser.mly"
    ( syn_err "Expected IN" _loc )
# 9985 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce44 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 9992 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 9996 "ml_parser.ml"
)) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__5_ _ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _, _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__5_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10005 "ml_parser.ml"
    ) = let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 99 "ml_parser.mly"
    ( syn_err "Expected expression" _loc )
# 10012 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce43 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10019 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 10023 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10027 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__6_ _ ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _, _), _endpos__5_, _, _, _startpos__5_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__6_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10036 "ml_parser.ml"
    ) = let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 97 "ml_parser.mly"
    ( syn_err "Expected IN" _loc )
# 10043 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error185 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10050 "ml_parser.ml"
) * Lexing.position) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv565 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10057 "ml_parser.ml"
    ) * Lexing.position)) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv566)

and _menhir_reduce36 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__2_ _ ->
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10071 "ml_parser.ml"
    ) = let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 88 "ml_parser.mly"
              ( syn_err "Expected expression" _loc )
# 10078 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error194 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10085 "ml_parser.ml"
) * Lexing.position) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv563 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10092 "ml_parser.ml"
    ) * Lexing.position)) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    ((let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv564)

and _menhir_reduce47 : _menhir_env -> ((((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10101 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 10105 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 10109 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10113 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__9_ _ ->
    let (((((((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos__3_, _, _, _startpos__3_), _, _), _, _), _endpos__7_, _, _, _startpos__7_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__9_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10122 "ml_parser.ml"
    ) = let _endpos = _endpos__9_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 105 "ml_parser.mly"
    ( syn_err "Expected expression" _loc )
# 10129 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce41 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__2_ _ ->
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10141 "ml_parser.ml"
    ) = let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 93 "ml_parser.mly"
           ( syn_err "Expected expression" _loc )
# 10148 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce39 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10155 "ml_parser.ml"
) * Lexing.position) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__4_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__4_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10164 "ml_parser.ml"
    ) = let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 91 "ml_parser.mly"
                     ( syn_err "Expected expression (if without else not supported)" _loc )
# 10171 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce37 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10178 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10182 "ml_parser.ml"
) * Lexing.position) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__6_ _ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _, _, _startpos__4_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__6_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10191 "ml_parser.ml"
    ) = let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 89 "ml_parser.mly"
                               ( syn_err "Expected expression" _loc )
# 10198 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce66 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__2_ _ ->
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10210 "ml_parser.ml"
    ) = let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 140 "ml_parser.mly"
            ( syn_err "Expected pattern" _loc )
# 10217 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce64 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 10224 "ml_parser.ml"
)) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__4_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _, _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__4_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10233 "ml_parser.ml"
    ) = let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 138 "ml_parser.mly"
                       (syn_err "Expected expression" _loc)
# 10240 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce97 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10247 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10256 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 176 "ml_parser.mly"
                          ( syn_err "Expected expression" _loc )
# 10263 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce100 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10270 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10279 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 179 "ml_parser.mly"
                       ( syn_err "Expected expression" _loc )
# 10286 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce99 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10293 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10302 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 178 "ml_parser.mly"
                        ( syn_err "Expected expression" _loc )
# 10309 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce95 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10316 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10325 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 174 "ml_parser.mly"
                         ( syn_err "Expected expression" _loc )
# 10332 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce98 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10339 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10348 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 177 "ml_parser.mly"
                        ( syn_err "Expected expression" _loc )
# 10355 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce105 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10362 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10371 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 184 "ml_parser.mly"
                       ( syn_err "Expected expression" _loc )
# 10378 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce96 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10385 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10394 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 175 "ml_parser.mly"
                          ( syn_err "Expected expression" _loc )
# 10401 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce101 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10408 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10417 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 180 "ml_parser.mly"
                       ( syn_err "Expected expression" _loc )
# 10424 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce102 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10431 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10440 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 181 "ml_parser.mly"
                       ( syn_err "Expected expression" _loc )
# 10447 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce103 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10454 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10463 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 182 "ml_parser.mly"
                       ( syn_err "Expected expression" _loc )
# 10470 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce104 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10477 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10486 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 183 "ml_parser.mly"
                       ( syn_err "Expected expression" _loc )
# 10493 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce25 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10500 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10509 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 69 "ml_parser.mly"
                         ( syn_err "Expected expression" _loc )
# 10516 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce67 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10523 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10532 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 141 "ml_parser.mly"
                          ( syn_err "Expected type" _loc )
# 10539 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce59 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 10546 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 10550 "ml_parser.ml"
) * Lexing.position) * Lexing.position) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__8_ _ ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _, _startpos__2_), _endpos__3_, _, _startpos__3_), _endpos__5_, _, _startpos__5_), _endpos__6_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__8_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10559 "ml_parser.ml"
    ) = let _endpos = _endpos__8_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 129 "ml_parser.mly"
    ( syn_err "Expected expression" _loc )
# 10566 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce57 : _menhir_env -> (((((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 10573 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 10577 "ml_parser.ml"
) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10581 "ml_parser.ml"
) * Lexing.position) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__10_ _ ->
    let ((((((_menhir_stack, _menhir_s, _startpos__1_), _, _startpos__2_), _endpos__3_, _, _startpos__3_), _endpos__5_, _, _startpos__5_), _endpos__6_), _endpos__8_, _, _, _startpos__8_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__10_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10590 "ml_parser.ml"
    ) = let _endpos = _endpos__10_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 125 "ml_parser.mly"
    ( syn_err "Expected expression" _loc )
# 10597 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce53 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10604 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 10608 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 10612 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10616 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__8_ _ ->
    let ((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _, _), _, _), _endpos__6_, _, _, _startpos__6_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__8_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10625 "ml_parser.ml"
    ) = let _endpos = _endpos__8_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 117 "ml_parser.mly"
    ( syn_err "Expected expression" _loc )
# 10632 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce42 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10639 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 10643 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10647 "ml_parser.ml"
) * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__7_ _ ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _, _), _endpos__5_, _, _, _startpos__5_), _) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__7_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10656 "ml_parser.ml"
    ) = let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 95 "ml_parser.mly"
    ( syn_err "Expected expression" _loc )
# 10663 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce32 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10670 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__6_ _ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _startpos__4_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__6_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10679 "ml_parser.ml"
    ) = let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 83 "ml_parser.mly"
    ( syn_err "Invalid pattern match:\n  Only pattern matches of the form | [] -> e | h::t -> e are supported" _loc)
# 10686 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce26 : _menhir_env -> (((((((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10693 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10697 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 10701 "ml_parser.ml"
) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 10705 "ml_parser.ml"
) * Lexing.position) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__12_ _ ->
    let ((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_), _endpos__4_, _startpos__4_), _endpos__6_, _, _, _startpos__6_), _endpos__8_, _, _startpos__8_), _endpos__10_, _, _startpos__10_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__12_ in
    let _v : (
# 41 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10714 "ml_parser.ml"
    ) = let _endpos = _endpos__12_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 71 "ml_parser.mly"
    ( syn_err "Invalid pattern match:\n  Only pattern matches of the form | [] -> e | h::t -> e are supported" _loc)
# 10721 "ml_parser.ml"
     in
    _menhir_goto_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_tuple_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10728 "ml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv553 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10738 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error368 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv551 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10750 "ml_parser.ml"
              )) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce109 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv552)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error368 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv554)
    | MenhirState374 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv557 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10764 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10768 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv555 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10774 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10778 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10783 "ml_parser.ml"
        )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10787 "ml_parser.ml"
        ))) = _menhir_stack in
        let _endpos = _endpos__3_ in
        let _v : (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10793 "ml_parser.ml"
        ) = let _endpos = _endpos__3_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 150 "ml_parser.mly"
                                                  ( EPair (_1,
						           mk_exp _3 _loc) )
# 10801 "ml_parser.ml"
         in
        _menhir_goto_tuple_ _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv556)) : 'freshtv558)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv561 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10809 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error380 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv559 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10821 "ml_parser.ml"
              )) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce109 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv560)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error380 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv562)
    | _ ->
        _menhir_fail ()

and _menhir_reduce115 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10836 "ml_parser.ml"
) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10840 "ml_parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10846 "ml_parser.ml"
    )), _startpos__1_), _), _endpos__3_, _, (_3 : (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10850 "ml_parser.ml"
    )), _startpos__3_) = _menhir_stack in
    let _endpos = _endpos__3_ in
    let _v : (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10856 "ml_parser.ml"
    ) = 
# 149 "ml_parser.mly"
                                                  ( EPair (_1, _3) )
# 10860 "ml_parser.ml"
     in
    _menhir_goto_tuple_ _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce108 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10867 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, _, _startpos__2_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 10876 "ml_parser.ml"
    ) = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 187 "ml_parser.mly"
                    ( syn_err "Expected )" _loc )
# 10883 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run200 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run202 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run204 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10900 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run206 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10909 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 10913 "ml_parser.ml"
) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run209 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10922 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 10926 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 10930 "ml_parser.ml"
)) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run211 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10939 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 10943 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 10947 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 10951 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run301 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10960 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run303 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10969 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 10973 "ml_parser.ml"
) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run306 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10982 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 10986 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 10990 "ml_parser.ml"
)) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run308 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 10999 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 11003 "ml_parser.ml"
)) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 11007 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 11011 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run314 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 11020 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 11024 "ml_parser.ml"
)) -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run316 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 11033 "ml_parser.ml"
) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 11037 "ml_parser.ml"
))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 11041 "ml_parser.ml"
) * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_reduce12 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 11054 "ml_parser.ml"
    ) = 
# 215 "ml_parser.mly"
                                           ( CTriv )
# 11058 "ml_parser.ml"
     in
    _menhir_goto_const _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce10 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 11069 "ml_parser.ml"
    ) = 
# 213 "ml_parser.mly"
                                           ( CBool true )
# 11073 "ml_parser.ml"
     in
    _menhir_goto_const _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce9 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 9 "ml_parser.mly"
       (int)
# 11080 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s (_1 : (
# 9 "ml_parser.mly"
       (int)
# 11085 "ml_parser.ml"
  )) _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 11092 "ml_parser.ml"
    ) = 
# 212 "ml_parser.mly"
                                           ( CNum _1 )
# 11096 "ml_parser.ml"
     in
    _menhir_goto_const _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce13 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 11107 "ml_parser.ml"
    ) = 
# 216 "ml_parser.mly"
                                           ( CNil )
# 11111 "ml_parser.ml"
     in
    _menhir_goto_const _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run284 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv547 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_v : (
# 10 "ml_parser.mly"
       (string)
# 11128 "ml_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv541 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11140 "ml_parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv535 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11150 "ml_parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let (_v : (
# 10 "ml_parser.mly"
       (string)
# 11156 "ml_parser.ml"
                )) = _v in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv529 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11168 "ml_parser.ml"
                    ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11172 "ml_parser.ml"
                    ) * Lexing.position) = Obj.magic _menhir_stack in
                    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    ((let _menhir_stack = (_menhir_stack, _endpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQUAL ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv523 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11184 "ml_parser.ml"
                        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11188 "ml_parser.ml"
                        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | FALSE ->
                            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | FUN ->
                            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IDENT _v ->
                            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState293 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IF ->
                            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LET ->
                            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LPAREN ->
                            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | MATCH ->
                            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NEG ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NIL ->
                            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NOT ->
                            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NUM _v ->
                            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState293 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TRUE ->
                            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | UNIT ->
                            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState293 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState293) : 'freshtv524)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv527 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11230 "ml_parser.ml"
                        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11234 "ml_parser.ml"
                        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                        ((let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv525 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11240 "ml_parser.ml"
                        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11244 "ml_parser.ml"
                        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv526)) : 'freshtv528)) : 'freshtv530)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv533 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11256 "ml_parser.ml"
                    ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11260 "ml_parser.ml"
                    ) * Lexing.position) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv531 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11266 "ml_parser.ml"
                    ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11270 "ml_parser.ml"
                    ) * Lexing.position) = Obj.magic _menhir_stack in
                    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    _menhir_reduce61 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv532)) : 'freshtv534)) : 'freshtv536)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv539 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11282 "ml_parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv537 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11288 "ml_parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv538)) : 'freshtv540)) : 'freshtv542)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv545 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11300 "ml_parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv543 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11306 "ml_parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce63 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv544)) : 'freshtv546)) : 'freshtv548)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv549 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv550)

and _menhir_reduce69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 11324 "ml_parser.ml"
    ) = 
# 209 "ml_parser.mly"
                                           ( None )
# 11328 "ml_parser.ml"
     in
    _menhir_goto_optannot _menhir_env _menhir_stack _menhir_s _v

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TUNIT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run11 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce12 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run12 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run13 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 9 "ml_parser.mly"
       (int)
# 11364 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run16 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState17 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState17 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState23 in
        let (_v : (
# 10 "ml_parser.mly"
       (string)
# 11521 "ml_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQUAL ->
            _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv488)
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv517 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState23 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv513 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_v : (
# 10 "ml_parser.mly"
       (string)
# 11554 "ml_parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv507 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11566 "ml_parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv501 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11576 "ml_parser.ml"
                    ) * Lexing.position)) = Obj.magic _menhir_stack in
                    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    let (_v : (
# 10 "ml_parser.mly"
       (string)
# 11582 "ml_parser.ml"
                    )) = _v in
                    let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | RPAREN ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv495 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11594 "ml_parser.ml"
                        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11598 "ml_parser.ml"
                        ) * Lexing.position) = Obj.magic _menhir_stack in
                        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                        ((let _menhir_stack = (_menhir_stack, _endpos) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | EQUAL ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv489 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11610 "ml_parser.ml"
                            ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11614 "ml_parser.ml"
                            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | FALSE ->
                                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | FUN ->
                                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | IDENT _v ->
                                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState156 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | IF ->
                                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | LET ->
                                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | LPAREN ->
                                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | MATCH ->
                                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | NEG ->
                                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | NIL ->
                                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | NOT ->
                                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | NUM _v ->
                                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState156 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TRUE ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | UNIT ->
                                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv490)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv493 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11656 "ml_parser.ml"
                            ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11660 "ml_parser.ml"
                            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                            ((let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv491 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11666 "ml_parser.ml"
                            ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11670 "ml_parser.ml"
                            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv492)) : 'freshtv494)) : 'freshtv496)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv499 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11682 "ml_parser.ml"
                        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11686 "ml_parser.ml"
                        ) * Lexing.position) = Obj.magic _menhir_stack in
                        ((let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv497 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11692 "ml_parser.ml"
                        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11696 "ml_parser.ml"
                        ) * Lexing.position) = Obj.magic _menhir_stack in
                        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        _menhir_reduce61 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv498)) : 'freshtv500)) : 'freshtv502)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv505 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11708 "ml_parser.ml"
                    ) * Lexing.position)) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv503 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11714 "ml_parser.ml"
                    ) * Lexing.position)) = Obj.magic _menhir_stack in
                    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv504)) : 'freshtv506)) : 'freshtv508)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv511 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11726 "ml_parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv509 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11732 "ml_parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                _menhir_reduce63 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv510)) : 'freshtv512)) : 'freshtv514)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv515 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv516)) : 'freshtv518)
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv521 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState23 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_menhir_s : _menhir_state) = MenhirState25 in
            let (_v : (
# 10 "ml_parser.mly"
       (string)
# 11760 "ml_parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv520)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv522)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState73 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState73 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run75 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 10 "ml_parser.mly"
       (string)
# 11822 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce93 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run82 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_reduce93 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 10 "ml_parser.mly"
       (string)
# 11849 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s (_1 : (
# 10 "ml_parser.mly"
       (string)
# 11854 "ml_parser.ml"
  )) _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 42 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 11861 "ml_parser.ml"
    ) = 
# 172 "ml_parser.mly"
                                           ( EVar _1 )
# 11865 "ml_parser.ml"
     in
    _menhir_goto_simple_expr_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_v : (
# 10 "ml_parser.mly"
       (string)
# 11882 "ml_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv479 * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11894 "ml_parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TUNIT ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv480)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv481 * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 11918 "ml_parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)) : 'freshtv484)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)

and _menhir_reduce11 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (
# 40 "ml_parser.mly"
      (Ml_ast.const)
# 11937 "ml_parser.ml"
    ) = 
# 214 "ml_parser.mly"
                                           ( CBool false )
# 11941 "ml_parser.ml"
     in
    _menhir_goto_const _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState411 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv9 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 11953 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 11957 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 11961 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState410 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv11 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 11970 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 11974 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 11978 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run316 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState410 : 'freshtv12)
    | MenhirState409 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv13 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 11986 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 11990 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        (_menhir_run314 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 : 'freshtv14)
    | MenhirState406 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv15 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 11998 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12002 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12006 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12010 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState405 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv17 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12019 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12023 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12027 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12031 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run308 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState405 : 'freshtv18)
    | MenhirState404 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv19 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12039 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12043 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12047 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        (_menhir_run306 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState404 : 'freshtv20)
    | MenhirState402 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv21 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12055 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12059 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_run303 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState402 : 'freshtv22)
    | MenhirState401 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12067 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run301 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState401 : 'freshtv24)
    | MenhirState398 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12075 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState395 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv27 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12084 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12088 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12092 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12096 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState394 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv29 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12105 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12109 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12113 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12117 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run211 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState394 : 'freshtv30)
    | MenhirState393 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv31 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12125 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12129 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12133 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        (_menhir_run209 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState393 : 'freshtv32)
    | MenhirState391 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv33 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12141 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12145 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_run206 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState391 : 'freshtv34)
    | MenhirState390 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv35 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12153 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run204 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState390 : 'freshtv36)
    | MenhirState389 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        (_menhir_run202 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState389 : 'freshtv38)
    | MenhirState388 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run200 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState388 : 'freshtv40)
    | MenhirState383 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12169 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12175 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState383 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce108 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv42)) : 'freshtv44)
    | MenhirState377 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12186 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12190 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce115 _menhir_env (Obj.magic _menhir_stack) : 'freshtv46)
    | MenhirState374 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12198 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12204 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState374 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12213 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos__3_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        ((let ((_menhir_stack, _endpos__1_, _menhir_s, _, _startpos__1_), _) = _menhir_stack in
        let _endpos = _endpos__3_ in
        let _v : (
# 43 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 12222 "ml_parser.ml"
        ) = let _endpos = _endpos__3_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 152 "ml_parser.mly"
                   ( syn_err "Expected expression" _loc )
# 12229 "ml_parser.ml"
         in
        _menhir_goto_tuple_ _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv48)) : 'freshtv50)) : 'freshtv52)
    | MenhirState371 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12237 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12243 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState371 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce108 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv54)) : 'freshtv56)
    | MenhirState365 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv59 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12254 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12258 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12262 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12266 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv57 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12272 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12276 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12280 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12284 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState365 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv58)) : 'freshtv60)
    | MenhirState353 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv63 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12295 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12301 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState353 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv62)) : 'freshtv64)
    | MenhirState349 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv65 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12312 "ml_parser.ml"
        ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12316 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12320 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12324 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _, _menhir_s, _, _), _, _, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState341 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv69 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12333 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12337 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12341 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12345 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv67 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12351 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12355 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12359 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12363 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState341 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv68)) : 'freshtv70)
    | MenhirState329 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv73 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12374 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv71 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12380 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState329 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv72)) : 'freshtv74)
    | MenhirState325 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv75 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12391 "ml_parser.ml"
        ) * Lexing.position))) * Lexing.position * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12395 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12399 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12403 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _, _menhir_s, _, _), _, _, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState317 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv79 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12412 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12416 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12420 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv77 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12426 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12430 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12434 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState317 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce42 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv78)) : 'freshtv80)
    | MenhirState315 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv81 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12445 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12449 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12453 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run316 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState315 : 'freshtv82)
    | MenhirState313 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv83 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12461 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12465 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        (_menhir_run314 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState313 : 'freshtv84)
    | MenhirState309 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv87 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12473 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12477 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12481 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12485 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv85 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12491 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12495 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12499 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12503 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState309 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv86)) : 'freshtv88)
    | MenhirState307 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv89 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12514 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12518 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12522 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12526 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run308 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState307 : 'freshtv90)
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv91 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12534 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12538 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 12542 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        (_menhir_run306 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 : 'freshtv92)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12550 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 12554 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_run303 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState302 : 'freshtv94)
    | MenhirState300 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 12562 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run301 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState300 : 'freshtv96)
    | MenhirState297 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv99 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12570 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12574 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12578 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv97 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12584 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12588 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12592 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState297 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv98)) : 'freshtv100)
    | MenhirState293 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv103 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12603 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12607 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv101 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12613 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 12617 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState293 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce59 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState281 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 12628 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12632 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState280 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 12641 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState277 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12650 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 12654 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12663 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12669 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState275 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce67 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv112)) : 'freshtv114)
    | MenhirState274 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12680 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState273 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12689 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12693 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState271 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12702 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12708 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState271 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState270 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12719 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12723 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState269 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12732 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12741 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12745 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState266 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12754 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12760 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState266 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce104 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv130)) : 'freshtv132)
    | MenhirState265 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12771 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12775 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState263 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12784 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12790 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState263 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce103 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv136)) : 'freshtv138)
    | MenhirState262 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12801 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12805 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12814 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12820 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState260 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce102 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv142)) : 'freshtv144)
    | MenhirState259 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv145 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12831 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12835 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState257 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12844 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12850 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState257 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce101 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv148)) : 'freshtv150)
    | MenhirState256 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12861 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12865 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState254 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv155 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12874 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12880 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState254 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce96 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv154)) : 'freshtv156)
    | MenhirState253 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12891 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12895 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState251 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12904 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12910 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState251 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce105 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv160)) : 'freshtv162)
    | MenhirState250 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12921 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12925 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState248 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12934 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12940 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState248 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce98 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv166)) : 'freshtv168)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12951 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12955 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12964 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12970 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState245 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce95 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv172)) : 'freshtv174)
    | MenhirState242 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12981 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12987 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState242 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState238 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 12998 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13004 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState238 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce100 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv180)) : 'freshtv182)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13015 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13019 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState234 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13028 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13034 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState234 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce97 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13045 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13054 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13060 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState229 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv192)) : 'freshtv194)
    | MenhirState225 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState225 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv196)) : 'freshtv198)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv201 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13080 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13084 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv199 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13090 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13094 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState222 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv200)) : 'freshtv202)
    | MenhirState218 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13105 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv203 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13111 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState218 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv204)) : 'freshtv206)
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState214 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv208)) : 'freshtv210)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv213 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13131 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13135 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13139 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13143 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv211 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13149 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13153 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13157 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13161 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState212 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv212)) : 'freshtv214)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv215 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13172 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13176 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13180 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13184 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run211 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState210 : 'freshtv216)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv217 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13192 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13196 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13200 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        (_menhir_run209 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState208 : 'freshtv218)
    | MenhirState205 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv219 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13208 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13212 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_run206 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState205 : 'freshtv220)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv221 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13220 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run204 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState203 : 'freshtv222)
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        (_menhir_run202 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState201 : 'freshtv224)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run200 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState199 : 'freshtv226)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv227 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13236 "ml_parser.ml"
        ) * Lexing.position))) * Lexing.position * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _) = _menhir_stack in
        _menhir_error194 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv228)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState190 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv233 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13254 "ml_parser.ml"
        ) * Lexing.position))) * Lexing.position * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _) = _menhir_stack in
        _menhir_error185 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv234)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv237 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13263 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13267 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13271 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv235 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13277 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13281 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13285 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState180 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce42 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv241 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13296 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13300 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13304 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv239 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13310 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13314 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13318 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState178 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv240)) : 'freshtv242)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv245 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13329 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13333 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv243 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13339 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13343 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState176 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv249 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13354 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13358 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13362 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13366 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv247 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13372 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13376 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13380 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13384 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState172 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv248)) : 'freshtv250)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv253 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13395 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13399 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13403 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13407 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv251 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13413 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13417 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13421 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13425 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState170 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv252)) : 'freshtv254)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv257 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13436 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13440 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13444 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv255 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13450 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13454 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13458 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState168 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv256)) : 'freshtv258)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13469 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13473 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13479 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13483 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState165 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv265 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13494 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13500 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState163 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv269 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 13511 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 13515 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13519 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv267 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 13525 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 13529 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13533 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState160 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv268)) : 'freshtv270)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv273 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 13544 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 13548 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv271 * _menhir_state * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 13554 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 13558 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState156 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce59 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv277 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13569 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13573 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13577 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13581 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv275 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13587 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13591 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13595 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13599 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState144 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv276)) : 'freshtv278)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv281 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13610 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13614 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13618 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13622 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv279 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 13628 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 13632 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 13636 "ml_parser.ml"
        ))) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13640 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState142 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv285 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13651 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13655 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv283 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13661 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13665 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState139 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13676 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 45 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13682 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState135 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv288)) : 'freshtv290)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv291 * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 13693 "ml_parser.ml"
        ) * Lexing.position) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13697 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce2 _menhir_env (Obj.magic _menhir_stack) : 'freshtv292)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293 * Lexing.position * _menhir_state * (
# 44 "ml_parser.mly"
      (unit Ml_ast.exp_)
# 13705 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) : 'freshtv294)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13713 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 13717 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) : 'freshtv296)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv299 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13725 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13731 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState126 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce67 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv298)) : 'freshtv300)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv301 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13742 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13751 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13755 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce91 _menhir_env (Obj.magic _menhir_stack) : 'freshtv304)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv307 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13763 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv305 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13769 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState122 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13780 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13784 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce83 _menhir_env (Obj.magic _menhir_stack) : 'freshtv310)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv311 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13792 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv313 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13801 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13805 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce87 _menhir_env (Obj.magic _menhir_stack) : 'freshtv314)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13813 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13819 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState117 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce104 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv316)) : 'freshtv318)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13830 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13834 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce86 _menhir_env (Obj.magic _menhir_stack) : 'freshtv320)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13842 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13848 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState114 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce103 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv322)) : 'freshtv324)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13859 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13863 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce85 _menhir_env (Obj.magic _menhir_stack) : 'freshtv326)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv329 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13871 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv327 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13877 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState111 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce102 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv328)) : 'freshtv330)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13888 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13892 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce84 _menhir_env (Obj.magic _menhir_stack) : 'freshtv332)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13900 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13906 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState108 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce101 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv334)) : 'freshtv336)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13917 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13921 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce78 _menhir_env (Obj.magic _menhir_stack) : 'freshtv338)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv341 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13929 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13935 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState105 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce96 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv340)) : 'freshtv342)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv343 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13946 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13950 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce88 _menhir_env (Obj.magic _menhir_stack) : 'freshtv344)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13958 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv345 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13964 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState102 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce105 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv346)) : 'freshtv348)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13975 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13979 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce80 _menhir_env (Obj.magic _menhir_stack) : 'freshtv350)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv353 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13987 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv351 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 13993 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState99 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce98 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv352)) : 'freshtv354)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv355 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14004 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14008 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce77 _menhir_env (Obj.magic _menhir_stack) : 'freshtv356)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv359 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14016 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv357 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14022 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState96 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce95 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv358)) : 'freshtv360)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14033 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14039 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState93 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv367 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14050 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv365 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14056 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState89 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce100 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv366)) : 'freshtv368)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv369 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14067 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14071 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce79 _menhir_env (Obj.magic _menhir_stack) : 'freshtv370)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv373 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14079 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14085 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState85 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce97 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv372)) : 'freshtv374)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * Lexing.position * _menhir_state * (
# 46 "ml_parser.mly"
      (unit Ml_ast.exp)
# 14096 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 14105 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 14111 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState80 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv378)) : 'freshtv380)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv381 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState76 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv382)) : 'freshtv384)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState73 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv386)) : 'freshtv388)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv391 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 14140 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 14144 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 14148 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv389 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 14154 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 14158 "ml_parser.ml"
        )) * _menhir_state * (
# 48 "ml_parser.mly"
      (Ml_ast.typ option)
# 14162 "ml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState71 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv390)) : 'freshtv392)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv393 * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14173 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv399 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 14187 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 14191 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv397 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 14197 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state * (
# 47 "ml_parser.mly"
      (string * Ml_ast.typ)
# 14201 "ml_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState66 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv398)) : 'freshtv400)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 14212 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 14218 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState61 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce114 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv402)) : 'freshtv404)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv405 * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14229 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14233 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv409 * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14242 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv407 * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14248 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState57 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce120 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv408)) : 'freshtv410)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv411 * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 14259 "ml_parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14263 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14272 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv413 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14278 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState52 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce8 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv414)) : 'freshtv416)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv419 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 14289 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * Lexing.position * _menhir_state * (
# 39 "ml_parser.mly"
      (Ml_ast.typ)
# 14295 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState47 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce114 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv418)) : 'freshtv420)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv421 * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14306 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14310 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce119 _menhir_env (Obj.magic _menhir_stack) : 'freshtv422)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv425 * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14318 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv423 * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14324 "ml_parser.ml"
        ) * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState43 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce120 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv424)) : 'freshtv426)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14335 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * (
# 38 "ml_parser.mly"
      (Ml_ast.typ)
# 14341 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState40 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce8 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv428)) : 'freshtv430)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "ml_parser.mly"
       (string)
# 14362 "ml_parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv439 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 14371 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv437 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * (
# 10 "ml_parser.mly"
       (string)
# 14377 "ml_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState27 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv438)) : 'freshtv440)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv443 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv441 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState25 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv442)) : 'freshtv444)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState23 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv446)) : 'freshtv448)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState21 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv450)) : 'freshtv452)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv455 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState19 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce111 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv454)) : 'freshtv456)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState17 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce107 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv458)) : 'freshtv460)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState14 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce106 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv462)) : 'freshtv464)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState9 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce111 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv466)) : 'freshtv468)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce107 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv470)) : 'freshtv472)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv475 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState4 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce106 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv474)) : 'freshtv476)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv478)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce12 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run2 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run3 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 9 "ml_parser.mly"
       (int)
# 14482 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run6 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run190 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState190 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState190 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState190 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run388 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState388 in
        let (_v : (
# 10 "ml_parser.mly"
       (string)
# 14639 "ml_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState401
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState401 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQUAL ->
            _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState401
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState401) : 'freshtv4)
    | LPAREN ->
        _menhir_run284 _menhir_env (Obj.magic _menhir_stack) MenhirState388 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState388 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv5 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_menhir_s : _menhir_state) = MenhirState389 in
            let (_v : (
# 10 "ml_parser.mly"
       (string)
# 14674 "ml_parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState390 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState390) : 'freshtv6)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState389) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState388

and _menhir_run214 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState214 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState214 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState214

and _menhir_run224 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 10 "ml_parser.mly"
       (string)
# 14736 "ml_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce93 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run225 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState225

and _menhir_run231 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

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
# 50 "ml_parser.mly"
      (Ml_ast.p_prog)
# 14775 "ml_parser.ml"
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
    | FALSE ->
        _menhir_run231 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run388 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NIL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 14823 "ml_parser.ml"
