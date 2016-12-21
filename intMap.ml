module IntMap =
    Map.Make (struct
        type t = int
        let compare = Pervasives.compare
    end)
include IntMap
