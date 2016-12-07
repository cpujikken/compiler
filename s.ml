(* customized version of Set *)

module S =
  Set.Make
    (struct
      type t = Id.t
      let compare = Id.compare
    end)
include S

let size x = List.length @@ S.elements x
