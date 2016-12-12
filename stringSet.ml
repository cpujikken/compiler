(*string set*)
module StringSet =
  Set.Make
    (struct
      type t = string
      let compare = String.compare
    end)
include StringSet

let size x = List.length @@ StringSet.elements x
