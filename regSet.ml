(* customized version of Set *)

module RegSet =
  Set.Make
    (struct
      type t = Reg.t
      let compare = Reg.compare
    end)
include RegSet

let of_list l = List.fold_left (fun s e -> add e s) empty l
