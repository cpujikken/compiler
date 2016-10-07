(* customized version of Map *)

module M =
  Map.Make
    (struct
      type t = Id.t
      let compare x y= compare (Id.get_key x) (Id.get_key y)
    end)
include M

let add_list xys env = List.fold_left (fun env (x, y) -> add x y env) env xys
let add_list2 xs ys env = List.fold_left2 (fun env x y -> add x y env) env xs ys
let to_string = Id.to_string
