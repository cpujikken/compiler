(* customized version of Map *)

module M2 =
  Map.Make
    (struct
      type t = Operand.t
      let compare = Operand.compare
    end)
include M2
