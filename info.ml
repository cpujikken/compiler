type t = string * int * int * int * int
let to_string (fname, start_row, start_column, end_row, end_column) = Printf.sprintf "%s#%d:%d->%d:%d" fname start_row start_column end_row end_column
let parsing_get () =
    (Parsing.symbol_start_pos ()).pos_fname,
    (Parsing.symbol_start_pos ()).pos_lnum,
   (Parsing.symbol_start_pos ()).pos_cnum - (Parsing.symbol_start_pos ()).pos_bol + 1,
    (Parsing.symbol_end_pos ()).pos_lnum,
   (Parsing.symbol_end_pos ()).pos_cnum - (Parsing.symbol_end_pos ()).pos_bol + 1

let lex_get lexbuf =
       (Lexing.lexeme_start_p lexbuf).pos_fname,
       (Lexing.lexeme_start_p lexbuf).pos_lnum,
       ((Lexing.lexeme_start_p lexbuf).pos_cnum - (Lexing.lexeme_start_p lexbuf).pos_bol + 1),
       (Lexing.lexeme_end_p lexbuf).pos_lnum,
       ((Lexing.lexeme_end_p lexbuf).pos_cnum - (Lexing.lexeme_end_p lexbuf).pos_bol + 1)
let dump() = "dump_file.ml", -1, -1, -1, -1

let exit info msg =
    failwith (Printf.sprintf "%s:: %s" (to_string info) msg)
