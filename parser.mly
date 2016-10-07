%{
(* parserが利用する変数、関数、型などの定義 *)
open Syntax
let addtyp x = (x, Type.gentyp ())
%}

/* (* 字句を表すデータ型の定義 (caml2html: parser_token) *) */
%token <bool> BOOL
%token <int> INT
%token <float> FLOAT
%token NOT
%token MINUS
%token PLUS
%token MINUS_DOT
%token PLUS_DOT
%token AST_DOT
%token SLASH_DOT
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
%token ARRAY_CREATE
%token DOT
%token LESS_MINUS
%token SEMICOLON
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
%right prec_unary_minus
%left prec_app
%left DOT

/* (* 開始記号の定義 *) */
%type <Syntax.t_info> exp
%start exp

%%

simple_exp: /* (* 括弧をつけなくても関数の引数になれる式 (caml2html: parser_simple) *) */
| LPAREN exp RPAREN
    { $2}
| LPAREN RPAREN
    { Unit, (Parsing.symbol_start_pos ()).pos_lnum  }
| BOOL
    { Bool($1), (Parsing.symbol_start_pos ()).pos_lnum  }
| INT
    { Int($1), (Parsing.symbol_start_pos ()).pos_lnum  }
| FLOAT
    { Float($1), (Parsing.symbol_start_pos ()).pos_lnum  }
| IDENT
    { Var($1), (Parsing.symbol_start_pos ()).pos_lnum  }
| simple_exp DOT LPAREN exp RPAREN
    { Get(fst $1, fst $4), (Parsing.symbol_start_pos ()).pos_lnum  }

exp: /* (* 一般の式 (caml2html: parser_exp) *) */
| simple_exp
    { $1 }
| NOT exp
    %prec prec_app
    { Not(fst $2), (Parsing.symbol_start_pos ()).pos_lnum  }
| MINUS exp
    %prec prec_unary_minus
    { match fst $2 with
    | Float(f) -> Float(-.f), (Parsing.symbol_start_pos ()).pos_lnum  (* -1.23などは型エラーではないので別扱い *)
    | e -> Neg(e), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp PLUS exp /* (* 足し算を構文解析するルール (caml2html: parser_add) *) */
    { Add(fst $1,fst  $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp MINUS exp
    { Sub(fst $1, fst $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp EQUAL exp
    { Eq(fst $1, fst $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp LESS_GREATER exp
    { Not(Eq(fst $1, fst $3)), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp LESS exp
    { Not(LE(fst $3, fst $1)), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp GREATER exp
    { Not(LE(fst $1, fst $3)), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp LESS_EQUAL exp
    { LE(fst $1, fst $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp GREATER_EQUAL exp
    { LE(fst $3, fst $1), (Parsing.symbol_start_pos ()).pos_lnum  }
| IF exp THEN exp ELSE exp
    %prec prec_if
    { If(fst $2, fst $4, fst $6), (Parsing.symbol_start_pos ()).pos_lnum  }
| MINUS_DOT exp
    %prec prec_unary_minus
    { FNeg(fst $2), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp PLUS_DOT exp
    { FAdd(fst $1, fst $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp MINUS_DOT exp
    { FSub(fst $1, fst $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp AST_DOT exp
    { FMul(fst $1, fst $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp SLASH_DOT exp
    { FDiv(fst $1, fst $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| LET IDENT EQUAL exp IN exp
    %prec prec_let
    { Let(addtyp $2, fst $4, fst $6), (Parsing.symbol_start_pos ()).pos_lnum  }
| LET REC fundef IN exp
    %prec prec_let
    { LetRec($3, fst $5), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp actual_args
    %prec prec_app
    { App(fst $1, $2), (Parsing.symbol_start_pos ()).pos_lnum  }
| elems
    { Tuple($1), (Parsing.symbol_start_pos ()).pos_lnum  }
| LET LPAREN pat RPAREN EQUAL exp IN exp
    { LetTuple($3, fst $6, fst $8), (Parsing.symbol_start_pos ()).pos_lnum  }
| simple_exp DOT LPAREN exp RPAREN LESS_MINUS exp
    { Put(fst $1, fst $4, fst $7), (Parsing.symbol_start_pos ()).pos_lnum  }
| exp SEMICOLON exp
    { Let((Id.gentmp Type.Unit, Type.Unit), fst $1, fst $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| ARRAY_CREATE simple_exp simple_exp
    %prec prec_app
    { Array(fst $2, fst $3), (Parsing.symbol_start_pos ()).pos_lnum  }
| error
    { failwith
	(Printf.sprintf "parse error near characters %d-%d, i.e. %d:%d to %d:%d (row:column format)"
	   (Parsing.symbol_start ())
	   (Parsing.symbol_end ())
       (Parsing.symbol_start_pos ()).pos_lnum
       ((Parsing.symbol_start_pos ()).pos_cnum - (Parsing.symbol_start_pos ()).pos_bol + 1)
       (Parsing.symbol_end_pos ()).pos_lnum
       ((Parsing.symbol_end_pos ()).pos_cnum - (Parsing.symbol_end_pos ()).pos_bol + 1)
       ) }

fundef:
| IDENT formal_args EQUAL exp
    { { name = addtyp $1; args = $2; body = fst $4 } }

formal_args:
| IDENT formal_args
    { addtyp $1 :: $2 }
| IDENT
    { [addtyp $1] }

actual_args:
| actual_args simple_exp
    %prec prec_app
    { $1 @ [fst $2] }
| simple_exp
    %prec prec_app
    { [fst $1] }

elems:
| elems COMMA exp
    { $1 @ [fst $3] }
| exp COMMA exp
    { [fst $1; fst $3] }

pat:
| pat COMMA IDENT
    { $1 @ [addtyp $3] }
| IDENT COMMA IDENT
    { [addtyp $1; addtyp $3] }
