%{
(* parserが利用する変数、関数、型などの定義 *)
open Syntax
let addtyp x info = (x, Type.gentyp info)
%}

/* (* 字句を表すデータ型の定義 (caml2html: parser_token) *) */
%token <bool> BOOL
%token <int> INT
%token <float> FLOAT
%token FUN
%token TRUE
%token FALSE
%token OPEN_SQUARE_BRACE
%token CLOSE_SQUARE_BRACE
%token NOT
%token MINUS
%token PLUS
%token FNEG
%token MINUS_DOT
%token MINUS_LT
%token PLUS_DOT
%token AST_DOT
%token AST
%token SLASH_DOT
%token SLASH
%token LTLT
%token GTGT
%token READ_CHAR
%token PRINT_BYTE
%token ABS_FLOAT
%token EQUAL
%token LESS_GREATER
%token LESS_EQUAL
%token GREATER_EQUAL
%token LESS
%token GREATER
%token IF
%token THEN
%token ELSE
%token <Id.t> IDENT
%token LET
%token IN
%token REC
%token COMMA
%token DOT
%token LESS_MINUS
%token SEMICOLON
%token CREATE_ARRAY
%token LPAREN
%token RPAREN
%token EOF

/* (* 優先順位とassociativityの定義（低い方から高い方へ） (caml2html: parser_prior) *) */
%right prec_let
%right SEMICOLON
%right prec_if
%right LESS_MINUS
%left COMMA
%left EQUAL LESS_GREATER LESS GREATER LESS_EQUAL GREATER_EQUAL
%left PLUS MINUS PLUS_DOT MINUS_DOT
%left AST_DOT SLASH_DOT
%left AST SLASH
%right prec_unary_minus
%left prec_app
%left DOT
%left LTLT GTGT ABS_FLOAT FNEG

/* (* 開始記号の定義 *) */
%type <Syntax.t> exp
%start exp

%%

simple_exp: /* (* 括弧をつけなくても関数の引数になれる式 (caml2html: parser_simple) *) */
| LPAREN exp RPAREN
    { $2}
| LPAREN RPAREN
    { Unit (Info.parsing_get())  }
| BOOL
    { Bool($1, (Info.parsing_get())) }
| INT
    { Int($1, (Info.parsing_get())  )}
| FLOAT
    { Float($1, (Info.parsing_get()))  }
| IDENT
    { Var($1, (Info.parsing_get()) ) }
| simple_exp DOT LPAREN exp RPAREN
    { Get($1, $4, (Info.parsing_get()) ) }

exp: /* (* 一般の式 (caml2html: parser_exp) *) */
| simple_exp
    { $1 }
| OPEN_SQUARE_BRACE exp CLOSE_SQUARE_BRACE
    {
        let
        info = Info.parsing_get()
        in
        Array (Four($2, info), Type.gentyp info, info )}
| NOT exp
    %prec prec_app
    { Not($2, (Info.parsing_get())  )}
| MINUS exp
    %prec prec_unary_minus
    { match $2 with
    | Float(f, _) -> Float(-.f, (Info.parsing_get()))  (* -1.23などは型エラーではないので別扱い *)
    | Int(i, _) -> Int(-i, Info.parsing_get())
    | e -> Neg(e, (Info.parsing_get()) ) }
| MINUS_DOT exp
    %prec prec_unary_minus
    { match $2 with
    | Float(f, _) -> Float(-.f, (Info.parsing_get()))  (* -1.23などは型エラーではないので別扱い *)
    | e -> FNeg(e, (Info.parsing_get()) ) }
| exp PLUS exp /* (* 足し算を構文解析するルール (caml2html: parser_add) *) */
    { Add($1,$3, (Info.parsing_get()))  }
| exp MINUS exp
    { Sub($1, $3, (Info.parsing_get())  )}
| exp LTLT exp
    { ShiftLeft($1, $3, Info.parsing_get())}
| exp GTGT exp
    {ShiftRight ($1, $3, Info.parsing_get())}
| READ_CHAR LPAREN RPAREN
    {CharRead(Info.parsing_get())}
| PRINT_BYTE exp
    %prec prec_app
    {Print ($2, Info.parsing_get())}
| FNEG exp
  { FNeg ($2, Info.parsing_get ())}
| ABS_FLOAT exp
    {FAbs($2, Info.parsing_get())}
| exp EQUAL exp
    { Eq($1, $3, (Info.parsing_get())  )}
| exp LESS_GREATER exp
    { Not(Eq($1, $3, (Info.parsing_get())), (Info.parsing_get())  )}
| exp LESS exp
    { LT($1, $3, (Info.parsing_get())  ) }
| exp GREATER exp
    { LT($3, $1, (Info.parsing_get())  ) }
| exp LESS_EQUAL exp
    { Not(LT($3, $1, Info.parsing_get()), Info.parsing_get()) }
| exp GREATER_EQUAL exp
    { Not(LT($1, $3, Info.parsing_get()), Info.parsing_get()) }
| IF exp THEN exp ELSE exp
    %prec prec_if
    { If($2, $4, $6, (Info.parsing_get())  )}
| exp PLUS_DOT exp
    { FAdd($1, $3, (Info.parsing_get())  )}
| exp MINUS_DOT exp
    { FSub($1, $3, (Info.parsing_get())  )}
| exp AST_DOT exp
    { FMul($1, $3, (Info.parsing_get())  )}
| exp AST INT
    {
      Mul($1, Int ($3, Info.parsing_get()), Info.parsing_get())
    }
| exp SLASH_DOT exp
    { FDiv($1, $3, (Info.parsing_get())  )}
| exp SLASH INT
    {
        Div($1, Int ($3, Info.parsing_get()), Info.parsing_get())
    }
    | exp AST exp
    {
            Mul($1, $3, Info.parsing_get())
    }
    | exp SLASH exp
    {
            Div($1, $3, Info.parsing_get())
    }
| LET BOOL EQUAL exp IN exp
    %prec prec_let
    { Let((Id.gentmp (Type.Unit (Info.parsing_get())) (Info.parsing_get()), Type.Unit (Info.parsing_get())), Unit (Info.parsing_get()), $6, (Info.parsing_get())  )}
| LET IDENT EQUAL exp IN exp
    %prec prec_let
    { Let(addtyp $2 (Info.parsing_get()), $4, $6, (Info.parsing_get())  )}
| FUN formal_args MINUS_LT exp
    %prec prec_let
    {
        let fname = Id.genid ("lambda", Info.parsing_get())
        in
        let info = Info.parsing_get()
        in
        LetRec(
            { name = addtyp fname info; args = $2; body = $4 } ,
            Var(fname, info),
            info
            )
    }
| LET REC fundef IN exp
    %prec prec_let
    { LetRec($3, $5, (Info.parsing_get())  )}
| exp actual_args
    %prec prec_app
    { App($1, $2, (Info.parsing_get())  )}
| elems
    { Tuple($1, (Info.parsing_get())  )}
| LET LPAREN pat RPAREN EQUAL exp IN exp
    { LetTuple($3, $6, $8, (Info.parsing_get())  )}
| simple_exp DOT LPAREN exp RPAREN LESS_MINUS exp
    { Put($1, $4, $7, (Info.parsing_get())  )}
| exp SEMICOLON exp
    { Let((Id.gentmp (Type.gentyp (Info.parsing_get())) (Info.parsing_get()), Type.gentyp (Info.parsing_get())), $1, $3, (Info.parsing_get())  )}
| exp SEMICOLON
    { Let((Id.gentmp (Type.gentyp (Info.parsing_get())) (Info.parsing_get()), Type.gentyp (Info.parsing_get())), $1, (Unit (Info.parsing_get())), (Info.parsing_get())  )}
| CREATE_ARRAY exp exp
    %prec prec_app
{
    CreateArray($2, $3, Info.parsing_get())
}
| error
    {
        Info.exit (Info.parsing_get ()) "Unknown expression"
       }

fundef:
| IDENT formal_args EQUAL exp
    { { name = addtyp $1 (Info.parsing_get()); args = $2; body = $4 } }

formal_args:
| IDENT formal_args
    { addtyp $1 (Info.parsing_get()) :: $2 }
| IDENT
    { [addtyp $1 (Info.parsing_get())] }

actual_args:
| actual_args simple_exp
    %prec prec_app
    { $1 @ [$2] }
| simple_exp
    %prec prec_app
    { [$1] }

elems:
| elems COMMA exp
    { $1 @ [$3] }
| exp COMMA exp
    { [$1; $3] }

pat:
| pat COMMA IDENT
    { $1 @ [addtyp $3 (Info.parsing_get())] }
| IDENT COMMA IDENT
    { [addtyp $1 (Info.parsing_get()); addtyp $3 (Info.parsing_get())] }
