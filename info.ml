type t = string * int * int * int * int
let info_show (fname, start_row, start_column, end_row, end_column) = Printf.sprintf "%s:%d:%d->%d:%d" fname start_row start_column end_row end_column
let info_get () =
    (Parsing.symbol_start_pos ()).pos_fname,
    (Parsing.symbol_start_pos ()).pos_lnum,
   (Parsing.symbol_start_pos ()).pos_cnum - (Parsing.symbol_start_pos ()).pos_bol + 1,
    (Parsing.symbol_end_pos ()).pos_lnum,
   (Parsing.symbol_end_pos ()).pos_cnum - (Parsing.symbol_end_pos ()).pos_bol + 1

