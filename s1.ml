module S1 =
  Set.Make
    (struct
      type t = Operand.t
      let compare = Operand.compare
    end)
include S1
let size set =
    S1.fold (fun _ x -> x + 1) set 0
