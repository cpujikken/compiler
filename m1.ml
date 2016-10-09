(* customized version of Map *)

module M1 =
  Map.Make
    (struct
      type t = KNormal.t
      let compare = KNormal.compare
    end)
include M1
