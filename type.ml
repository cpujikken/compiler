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

let get_constructor_code = function
  | Unit _ -> 0
  | Bool _ -> 1
  | Int _ -> 2
  | Float _ -> 2
  | Fun _ -> 3
  | Tuple _ -> 4
  | Array _ -> 5
  | Var _ -> 6

let option_code = function
    | None -> 0
    | Some _ -> 1

let rec compare u v = match u, v with
    | Unit _, Unit _
    | Bool _, Bool _
    | Int _, Int _
    | Float _, Float _
    -> 0

    | Fun (list1, type1, _), Fun(list2, type2, _) -> Common.list_compare (type1::list1) (type2::list2) compare

    | Tuple(list1, _), Tuple(list2, _) -> Common.list_compare list1 list2 compare

    | Array(type1, _), Array(type2, _) -> compare type1 type2

    | Var(o1, _), Var(o2, _) ->(match !o1, !o2 with
        | None, None -> 0
        | Some t1, Some t2 -> compare t1 t2
        | _, _ -> Pervasives.compare (option_code !o1) (option_code !o2)
    )

    | _, _ -> Pervasives.compare (get_constructor_code u) (get_constructor_code v)
