(* customized version of Map *)

module StringMap =
  Map.Make
    (struct
      type t = string
      let compare = Pervasives.compare
    end)
include StringMap
