type t = string * Info.t (* 変数の名前 (caml2html: id_t) *)
type l = string * Info.t (* トップレベル関数やグローバル配列のラベル (caml2html: id_l) *)

let to_L x = x
let to_t x = x

let to_string (id, info) = Printf.sprintf "ID(%s)" id

let rec pp_list = function
  | [] -> ""
  | [x] -> to_string x
  | x :: xs -> (to_string x) ^ " " ^ pp_list xs

let counter = ref 0
let genid (s, info) =
  incr counter;
  if !Common.is_lib && List.mem s Common.lib_funs then
      s, info
  else
      Printf.sprintf "%s.%d" s !counter, info
let genlabel info =
    to_L (genid("l", info))

let rec id_of_typ = function
  | Type.Unit _-> "unit"
  | Type.Bool _-> "bool"
  | Type.Int _-> "int"
  | Type.Float _-> "float"
  | Type.Fun _ -> "fun"
  | Type.Tuple _ -> "tuple"
  | Type.Array _ -> "array"
  | Type.Var _ -> "var"
let gentmp typ info=
  incr counter;
  Printf.sprintf "T%s%d" (id_of_typ typ) !counter, info

let to_string_pre pre ((id, info): t) = Printf.sprintf "%sID %s" pre id
let to_string_core x = fst x
let get_info (_, info) = info
let compare (x, _) (y, _) = Pervasives.compare x y
