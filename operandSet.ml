(* customized version of Set *)

module OperandSet =
  Set.Make
    (struct
      type t = Operand.t
      let compare = Operand.compare
    end)
include OperandSet

let of_list l = List.fold_left (fun s e -> add e s) empty l
