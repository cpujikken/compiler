module IntSet = Set.Make (struct
    type t = int
    let compare = Pervasives.compare
end)
include IntSet
