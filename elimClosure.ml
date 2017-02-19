open Closure

let rec effect = function
        | Unit _
        | CharRead _
        | Int _
        | Float _
        | Neg _
        | Addi _
        | Four _
        | Half _
        | Add _
        | ShiftLeft _
        | ShiftRight _
        | Div _
        | Mul _
        | Sub _
        | FNeg _
        | FAbs _
        | Array _
        | FAdd _
        | FSub _
        | FMul _
        | FDiv _
        | Var _
        | Tuple _
        | Get _
        | ExtArray _
        -> false

        | IfEq (_, _, z, u, _)
        | IfLE (_, _, z, u, _)
        | Let (_, z, u, _)
        -> effect z || effect u

        | MakeCls(_, _, exp, _)
        -> effect exp

        | AppCls _
        | AppDir _
        | Print _
        -> true

        | LetTuple (_, _, x, _) -> effect x
        | Put (x, y, z, info) -> true
let rec elim = function
        | Unit _
        | CharRead _
        | Int _
        | Float _
        | Neg _
        | Print _
        | Four _
        | Addi _
        | Half _
        | FNeg _
        | FAbs _
        | Array _
        | Var _
        | Add _
        | ShiftLeft _
        | ShiftRight _
        | Div _
        | Mul _
        | Sub _
        | FAdd _
        | FSub _
        | FMul _
        | FDiv _
        | Get _
        | AppCls _
        | AppDir  _
        | Tuple _
        | Put _
        | ExtArray _
        as e
        -> e

        | IfEq (idx, idy, z, u, info)
        -> IfEq (idx, idy, elim z, elim u, info)
        | IfLE (idx, idy, z, u, info)
        -> IfLE (idx, idy, elim z, elim u, info)
        | Let ((id, typ), x, y, info)
        -> if effect x || S.mem id @@ fv y then
            Let((id, typ), elim x, elim y, info)
        else
            elim y
        | MakeCls((id, typ), closure, exp, info) ->
            if S.mem id @@ fv exp then
                MakeCls((id, typ), closure, elim exp, info)
            else
                elim exp

        | LetTuple (idtype_list, id, x, info) ->
                let ff = fv x
                in
                try
                    let _ =
                    List.find (fun (id, _) -> S.mem id ff) idtype_list
                    in
                    LetTuple(idtype_list, id, elim x, info)
                with Not_found -> elim x

let elim_fundef fundef = {fundef with body = elim fundef.body}

let rec f out (Prog(fundefs, e)) =
    let new_e = elim e
    in
    let fundefs' = List.map elim_fundef fundefs
    in
    let prog = Prog(fundefs', new_e)
    in
        print_all out prog;
        prog
