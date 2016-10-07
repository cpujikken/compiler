(* customized version of Set *)

module S =
  Set.Make
    (struct
      type t = Id.t
      let compare x y = compare (Id.get_key x) (Id.get_key y)
    end)
include S

let of_list l = List.fold_left (fun s e -> add e s) empty l
