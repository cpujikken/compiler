type t = (* MinCamlの型を表現するデータ型 (caml2html: type_t) *)
  | Unit
  | Bool
  | Int
  | Float
  | Fun of t list * t (* arguments are uncurried *)
  | Tuple of t list
  | Array of t
  | Var of t option ref

let gentyp () = Var(ref None) (* 新しい型変数を作る *)

let rec to_string_pre pre typ =
    let npre = pre ^ " "
    in
    match typ with
    | Unit -> pre ^ "Unit_t"
    | Bool -> pre ^ "Bool_t"
    | Int -> pre ^ "Int_t"
    | Float -> pre ^ "Float_t"
    | Fun (xlist, y) -> Printf.sprintf "%sFun_t%s\n%s" pre (to_string_list npre xlist) (to_string_pre npre y)
    | Tuple tlist -> Printf.sprintf "%sTuple_t%s" pre (to_string_tuple npre tlist)
    | Array t -> Printf.sprintf "%sArray_t\n%s" pre (to_string_pre npre t)
    | Var ref_opt_t -> match !ref_opt_t with
        | None -> pre ^ "None_t"
        | Some t -> Printf.sprintf "%sVar_t\n%s" pre (to_string_pre npre t)
    and to_string_tuple pre = function
        | [] -> ""
        | x :: xlist -> Printf.sprintf "\n%s%s" (to_string_pre pre x) (to_string_tuple pre xlist)
    and to_string_list pre = function
        | [] -> ""
        | x :: xlist -> Printf.sprintf "\n%s%s" (to_string_pre pre x) (to_string_list pre xlist)
