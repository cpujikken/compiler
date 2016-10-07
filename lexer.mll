{
(* lexer�����Ѥ����ѿ����ؿ������ʤɤ���� *)
open Parser
open Type
}

(* ����ɽ����ά�� *)
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
    { comment lexbuf; (* �ͥ��Ȥ��������ȤΤ���Υȥ�å� *)
      token lexbuf }
| '('
    { LPAREN }
| ')'
    { RPAREN }
| "true"
    { BOOL(true) }
| "false"
    { BOOL(false) }
| "not"
    { NOT }
| digit+ (* �����������Ϥ���롼�� (caml2html: lexer_int) *)
    { INT(int_of_string (Lexing.lexeme lexbuf)) }
| digit+ ('.' digit*)? (['e' 'E'] ['+' '-']? digit+)?
    { FLOAT(float_of_string (Lexing.lexeme lexbuf)) }
| '-' (* -.����󤷤ˤ��ʤ��Ƥ��ɤ�? ��Ĺ����? *)
    { MINUS }
| '+' (* +.����󤷤ˤ��ʤ��Ƥ��ɤ�? ��Ĺ����? *)
    { PLUS }
| "-."
    { MINUS_DOT }
| "+."
    { PLUS_DOT }
| "*."
    { AST_DOT }
| "/."
    { SLASH_DOT }
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
    { IDENT(Id.gentmp Type.Unit) }
| "Array.create" (* [XX] ad hoc *)
    { ARRAY_CREATE }
| '.'
    { DOT }
| "<-"
    { LESS_MINUS }
| ';'
    { SEMICOLON }
| eof
    { EOF }
| lower (digit|lower|upper|'_')* (* ¾�Ρ�ͽ���פ���Ǥʤ��Ȥ����ʤ� *)
    { IDENT(Lexing.lexeme lexbuf) }
| _
    { failwith
	(Printf.sprintf "unknown token %s near characters %d-%d, i.e. %d:%d to %d:%d (line:column format)"
	   (Lexing.lexeme lexbuf)
	   (Lexing.lexeme_start lexbuf)
	   (Lexing.lexeme_end lexbuf)
       (Lexing.lexeme_start_p lexbuf).pos_lnum
       ((Lexing.lexeme_start_p lexbuf).pos_cnum - (Lexing.lexeme_start_p lexbuf).pos_bol + 1)
       (Lexing.lexeme_end_p lexbuf).pos_lnum
       ((Lexing.lexeme_end_p lexbuf).pos_cnum - (Lexing.lexeme_end_p lexbuf).pos_bol + 1)
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