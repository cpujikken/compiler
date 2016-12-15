module S2 = Set.Make (struct
    type t = int * Operand.t
    let compare  (i1, op1) (i2, op2) =
        let t = Operand.compare op1 op2
        in
            if t = 0 then Pervasives.compare i1 i2
            else
                t
end)
include S2
