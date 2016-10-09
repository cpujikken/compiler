type t = (* MinCamlの型を表現するデータ型 (caml2html: type_t) *)
  | Unit of Info.t
  | Bool of Info.t
  | Int of Info.t
  | Float of Info.t
  | Fun of t list * t * Info.t (* arguments are uncurried *)
  | Tuple of t list * Info.t
  | Array of t * Info.t
  | Var of t option ref * Info.t

let gentyp info = Var(ref None, info) (* 新しい型変数を作る *)

let rec to_string_pre pre typ =
    let npre = pre ^ " "
    in
    match typ with
    | Unit info -> Printf.sprintf "%sUnit_t\t#%s" pre (Info.to_string info)
    | Bool info-> Printf.sprintf "%sBool_t\t#%s" pre (Info.to_string info)
    | Int info-> Printf.sprintf "%sInt_t\t#%s" pre (Info.to_string info)
    | Float info-> Printf.sprintf "%sFloat_t\t#%s" pre (Info.to_string info)
    | Fun (xlist, y, info) -> Printf.sprintf "%sFun_t\t#%s%s\n%s" pre  (Info.to_string info) (to_string_list npre xlist) (to_string_pre npre y)
    | Tuple(tlist, info) -> Printf.sprintf "%sTuple_t\t#%s%s" pre (Info.to_string info) (to_string_tuple npre tlist)
    | Array(t, info) -> Printf.sprintf "%sArray_t\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre t)
    | Var(ref_opt_t, info) -> match !ref_opt_t with
        | None -> Printf.sprintf "%sNone_t\t#%s" pre (Info.to_string info)
        | Some t -> Printf.sprintf "%sVar_t\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre t)
    and to_string_tuple pre = function
        | [] -> ""
        | x :: xlist -> Printf.sprintf "\n%s%s" (to_string_pre pre x) (to_string_tuple pre xlist)
    and to_string_list pre = function
        | [] -> ""
        | x :: xlist -> Printf.sprintf "\n%s%s" (to_string_pre pre x) (to_string_list pre xlist)
let to_string typ =
    to_string_pre "" typ

let get_info = function
  | Unit info -> info
  | Bool info -> info
  | Int info -> info
  | Float info -> info
  | Fun (_, _, info) -> info
  | Tuple (_, info) -> info
  | Array (_, info) -> info
  | Var (_, info) -> info
