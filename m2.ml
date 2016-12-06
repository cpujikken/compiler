(* customized version of Map *)

module M2 =
  Map.Make
    (struct
      type t = Operand.t
      let compare = Operand.compare
    end)
include M2

let size map =
    M2.fold (fun _ _ cnt -> cnt + 1) map 0
