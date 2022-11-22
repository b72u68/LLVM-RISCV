%{
    open Iit_ast
    open Lexing
    open Iit_lexer

    let syn_err = Iit_ast.syn_err SyntaxError
%}

%token <int> INT
%token <char> CHAR
%token <string> IDENT
%token TINT TCHARACTER TLOGICAL
%token ASSIGN
%token PLUS MINUS TIMES DIV
%token AND OR
%token LT LE GT GE NE
%token EQUAL
%token NEG NOT CCHAR CINT CLG
%token IF ELSE
%token DO END
%token WHILE
%token STOP
%token LPAREN RPAREN COMMA
%token EOF

%right ASSIGN
%left OR
%left AND
%left LT LE GT GE NE EQUAL
%left PLUS MINUS
%left TIMES DIV
%right NEG NOT CCHAR CINT CLG

%start prog
%type <Iit_ast.p_stmt list> prog

%%


const:
  CHAR                                     { CChar $1 }
| INT                                      { CInt $1 }
;

expr_:
  const                                    { EConst $1 }
| IDENT                                    { EVar ($1) }
| expr ASSIGN expr                         { EAssign ($1, $3) }
| expr PLUS expr                           { EBinop (BAdd, $1, $3) }
| expr MINUS expr                          { EBinop (BSub, $1, $3) }
| expr TIMES expr                          { EBinop (BMul, $1, $3) }
| expr DIV expr                            { EBinop (BDiv, $1, $3) }
| expr AND expr                            { EBinop (BAnd, $1, $3) }
| expr OR expr                             { EBinop (BOr, $1, $3) }
| expr LT expr                             { EBinop (BLt, $1, $3) }
| expr LE expr                             { EBinop (BLe, $1, $3) }
| expr GT expr                             { EBinop (BGt, $1, $3) }
| expr GE expr                             { EBinop (BGe, $1, $3) }
| expr NE expr                             { EBinop (BNe, $1, $3) }
| expr EQUAL expr                          { EBinop (BEq, $1, $3) }
| NEG expr                                 { EUnop (UNeg, $2) }
| NOT expr                                 { EUnop (UNot, $2) }
| CCHAR expr                               { EUnop (UChar, $2) }
| CLG expr                                 { EUnop (ULog, $2) }
| CINT expr                                { EUnop (UInt, $2) }
| LPAREN expr RPAREN                       { $2.edesc }
;

expr:
  expr_                                { { edesc = $1;
                                           eloc = $loc;
					   einfo = ();
					 }
                                       }
;

typ:
  TINT                                     { TInteger }
| TCHARACTER                               { TCharacter }
| TLOGICAL                                 { TLogical }
;

list(item):
  item                                     { [$1] }
| item COMMA list(item)                     { $1::$3 }
;

decl:
  typ list(IDENT)                             { { sdesc = SDecl ($1, $2);
                                               sloc = $loc; }
					   }
;

cstmt_:
  expr                                     { SExp $1 }
| STOP                                     { SStop }
| DO stmtlist END                          { SDo $2 }
| IF expr cstmt ELSE cstmt                 { SIf ($2, $3, Some $5) }
| WHILE expr cstmt                         { SWhile ($2, $3) }
;

ostmt_:
| IF expr cstmt ELSE ostmt                 { SIf ($2, $3, Some $5) }
| IF expr stmt                             { SIf ($2, $3, None) }
| WHILE expr ostmt                         { SWhile ($2, $3) }
;

stmt_:
  cstmt_                                   { $1 }
| ostmt_                                   { $1 }

mk_stmt(desc):
  desc                                      { { sdesc = $1;
                                               sloc = $loc; }
                                            }
;

cstmt:
  mk_stmt(cstmt_) { $1 }
;

ostmt:
  mk_stmt(ostmt_) { $1 }
;

stmt:
  mk_stmt(stmt_) { $1 }
;

stmtlist:
|                                          { [] }
| stmt stmtlist                            { $1::$2 }
;

decllist:
|                                          { [] }
| decl decllist                            { $1::$2 }
;

prog:
| decllist stmtlist EOF { $1 @ $2 }
