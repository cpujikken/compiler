(*string set*)
module S =
  Set.Make
    (struct
      type t = string
      let compare = String.compare
    end)
include S

let size x = List.length @@ S.elements x
