{
(* lexerが利用する変数、関数、型などの定義 *)
open Parser
open Type
}

(* 正規表現の略記 *)
let space = [' ' '\t' '\r' ]
let newline = ['\n']
let digit = ['0'-'9']
let lower = ['a'-'z']
let upper = ['A'-'Z']

rule token = parse
| newline
    {Lexing.new_line lexbuf; token lexbuf}
| space+
    { token lexbuf }
| "(*"
    { comment lexbuf; (* ネストしたコメントのためのトリック *)
      token lexbuf }
| '('
    { LPAREN }
| ')'
    { RPAREN }
| "not"
    { NOT }
| "true"
    { BOOL(true) }
| "false"
    { BOOL(false) }
| "fun"
    {FUN}
| digit+ (* 整数を字句解析するルール (caml2html: lexer_int) *)
    { INT(int_of_string (Lexing.lexeme lexbuf)) }
| digit+ ('.' digit*)? (['e' 'E'] ['+' '-']? digit+)?
    { FLOAT(float_of_string (Lexing.lexeme lexbuf)) }
| '-' (* -.より後回しにしなくても良い? 最長一致? *)
    { MINUS }
| '+' (* +.より後回しにしなくても良い? 最長一致? *)
    { PLUS }
| "-."
    { MINUS_DOT }
| "->"
    {MINUS_LT}
| "+."
    { PLUS_DOT }
| "*."
    { AST_DOT }
| "*"
    { AST }
| "/."
    { SLASH_DOT }
| "/"
    { SLASH}
| "<<"
    {LTLT}
| ">>"
    {GTGT}
| "read_float"
    {READ_FLOAT}
| "read_int"
    {READ_INT}
| "print_byte"
    {PRINT_BYTE}
| "abs_float"
    {ABS_FLOAT}
| '='
    { EQUAL }
| "<>"
    { LESS_GREATER }
| "<="
    { LESS_EQUAL }
| ">="
    { GREATER_EQUAL }
| '<'
    { LESS }
| '>'
    { GREATER }
| "if"
    { IF }
| "then"
    { THEN }
| "else"
    { ELSE }
| "let"
    { LET }
| "in"
    { IN }
| "rec"
    { REC }
| ','
    { COMMA }
| '_'
    { IDENT(Id.gentmp (Type.Unit (Info.lex_get lexbuf)) (Info.lex_get lexbuf)) }
| "Array.make" (* [XX] ad hoc *)
    { ARRAY_CREATE }
| "create_array" (* [XX] ad hoc *)
    { ARRAY_CREATE }
| '.'
    { DOT }
| "<-"
    { LESS_MINUS }
| ';'
    { SEMICOLON }
| eof
    { EOF }
| lower (digit|lower|upper|'_')* (* 他の「予約語」より後でないといけない *)
    { IDENT(Lexing.lexeme lexbuf, Info.lex_get lexbuf) }
| _
    { failwith
    (Printf.sprintf "\"%s\": unknown token %s near characters %d-%d, i.e. %d:%d to %d:%d (line:column format)"
       (Lexing.lexeme_start_p lexbuf).Lexing.pos_fname
       (Lexing.lexeme lexbuf)
       (Lexing.lexeme_start lexbuf)
       (Lexing.lexeme_end lexbuf)
       (Lexing.lexeme_start_p lexbuf).Lexing.pos_lnum
       ((Lexing.lexeme_start_p lexbuf).Lexing.pos_cnum - (Lexing.lexeme_start_p lexbuf).Lexing.pos_bol + 1)
       (Lexing.lexeme_end_p lexbuf).Lexing.pos_lnum
       ((Lexing.lexeme_end_p lexbuf).Lexing.pos_cnum - (Lexing.lexeme_end_p lexbuf).Lexing.pos_bol + 1)
       ) }
and comment = parse
| "*)"
    { () }
| "(*"
    { comment lexbuf;
      comment lexbuf }
| newline
    {Lexing.new_line lexbuf; comment lexbuf}
| eof
    { Format.eprintf "warning: unterminated comment@." }
| _
    { comment lexbuf }
