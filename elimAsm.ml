open Asm

(*let rec effect = function (* 副作用の有無 (caml2html: elim_effect) *)*)
  (*| Let(_, e1, e2, info) | IfEq(_, _, e1, e2, info) | IfLE(_, _, e1, e2, info) -> effect e1 || effect e2*)
  (*| LetRec(_, e, info) | LetTuple(_, _, e, info) -> effect e*)
  (*| App _ | Put _ | ExtFunApp _ -> true*)
  (*| _ -> false*)

let rec effect_exp = function
    | CharRead
    | Load _
    | Store _
    | FLoad _
    | FStore _
    | CallCls _
    | CallDir _
    | Print _
    -> true

    | Nop
    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | Addi _
    | Four _
    | Half _
    | Neg _
    | FNeg _
    | FAbs _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | MoveImm _
    | Move _
    | FMove _
    -> false

    | IfEQ (op1, op2, exp1, exp2)
    | FIfEQ (op1, op2, exp1, exp2)
    | IfLT (op1, op2, exp1, exp2)
    | FIfLT (op1, op2, exp1, exp2)
    -> effect exp1 || effect exp2
and
effect = function
  | Ans (e, info) -> effect_exp e
  | Let ((x, t), e, body, info) -> effect_exp e || effect body

let rec free_vars = function
  | Ans (e, info) -> free_vars_exp e
  | Let ((x, t), e, body, info) -> S.union (free_vars_exp e) (free_vars body)
and
free_vars_exp = function
    | Nop
    | CharRead
    | MoveImm _
    -> S.empty

    | Add (op1, op2)
    | ShiftLeft (op1, op2)
    | ShiftRight (op1, op2)
    | Div (op1, op2)
    | Mul (op1, op2)
    | Sub (op1, op2)
    | FAdd (op1, op2)
    | FSub (op1, op2)
    | FMul (op1, op2)
    | FDiv (op1, op2)
    -> free_vars_ops [op1; op2]

    | Addi (op, _)
    | Four op
    | Half op
    | Neg op
    | FNeg op
    | FAbs op
    | Print op
    | Move op
    | FMove op
    -> free_vars_ops [op]

    | Load addr
    | FLoad addr
    -> free_vars_addr addr

    | Store (op, add)
    | FStore (op, add)
    -> S.union (free_vars_addr add) (free_vars_ops [op])



    | IfEQ (op1, op2, exp1, exp2)
    | FIfEQ (op1, op2, exp1, exp2)
    | IfLT (op1, op2, exp1, exp2)
    | FIfLT (op1, op2, exp1, exp2)
    -> S.union (free_vars_ops [op1; op2]) @@ S.union (free_vars exp1) @@ free_vars exp2

    | CallCls (op, op_list1, op_list2)
    -> S.union (free_vars_ops [op]) @@ S.union (free_vars_ops op_list1) @@ free_vars_ops op_list2
    | CallDir (_, op_list1, op_list2)
    -> S.union (free_vars_ops op_list1) @@ free_vars_ops op_list2
and
free_vars_addr = function
    (*relative address from a reg*)
    Relative (op, _) -> free_vars_ops [op]
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
    | Dynamic (op1, _, op2) -> free_vars_ops [op1; op2]
    | Absolute _ -> S.empty
and
free_vars_ops =
    List.fold_left (fun set op -> match op with
        | Operand.ID id -> S.add id set
        | _ -> set
    )
    S.empty

let rec elim = function
  | Ans (e, info) -> Ans(elim_exp e, info)
  | Let ((Operand.ID id as x, t), e, body, info) ->
          let body_elm = elim body
          in
          if effect_exp e then
              Let((x, t), elim_exp e, body_elm, info)
          else
              if S.mem id (free_vars body_elm) then
                  Let((x, t), elim_exp e, body_elm, info)
              else
                  body_elm
  | Let ((x, t), e, body, info) ->
      let body_elm = elim body
      in
      Let((x, t), elim_exp e, body_elm, info)
and
elim_exp = function
    | Nop
    | CharRead
    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | Addi _
    | Four _
    | Half _
    | Load _
    | Store _
    | Neg _
    | FNeg _
    | FAbs _
    | Print _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | FLoad _
    | FStore _
    | MoveImm _
    | Move _
    | FMove _
    | CallCls _
    | CallDir _
    as exp -> exp

    | IfEQ (op1, op2, exp1, exp2) -> IfEQ(op1, op2, elim exp1, exp2)
    | FIfEQ (op1, op2, exp1, exp2) -> FIfEQ(op1, op2, elim exp1, exp2)
    | IfLT (op1, op2, exp1, exp2) -> IfLT(op1, op2, elim exp1, exp2)
    | FIfLT (op1, op2, exp1, exp2) -> FIfLT(op1, op2, elim exp1, exp2)


let rec get_labels = function
  | Ans (e, _) -> get_labels_exp e
  | Let (_, e, body, _) -> StringSet.union (get_labels_exp e) (get_labels body)
and
get_labels_loc = function
    Loc.Label l -> StringSet.singleton l
  | _ -> StringSet.empty
and
get_labels_exp = function
    | Addi (_, Loc.Label l)
    | MoveImm( Loc.Label l )
    | Load (Relative (_, Loc.Label l))
    | FLoad (Relative (_, Loc.Label l))
    | Store (_, Relative(_, Loc.Label l))
    | FStore (_, Relative(_, Loc.Label l))
    | CallDir (l, _, _)
        -> StringSet.singleton l
    | Load (Absolute (loc1, loc2_opt))
    | FLoad (Absolute (loc1, loc2_opt))
    | Store (_, Absolute (loc1, loc2_opt))
    | FStore (_, Absolute (loc1, loc2_opt))
    ->
        StringSet.union (get_labels_loc loc1)
            (match loc2_opt with
                Some loc -> get_labels_loc loc
                  | None -> StringSet.empty
            )

    | Addi _
    | MoveImm _
    | Nop
    | CharRead
    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | Four _
    | Half _
    | Load _
    | Store _
    | Neg _
    | FNeg _
    | FAbs _
    | Print _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | FLoad _
    | FStore _
    | Move _
    | FMove _

    | CallCls _
    -> StringSet.empty
    | IfEQ (_, _, if_true, if_false)
    | FIfEQ(_, _, if_true, if_false)
    | IfLT (_, _, if_true, if_false)
    | FIfLT (_, _, if_true, if_false)
    -> StringSet.union (get_labels if_true) (get_labels if_false)

let optimize e =
    let new_e = elim e
    in
    get_labels new_e, new_e

let rec f out (Prog (idata, fdata, fundefs, e) )=
    let label_set, new_e= optimize e
    in
    let label_set, new_fundefs = List.fold_left (fun (label_set, new_fundefs) fundef ->
            let new_label_set, new_body = optimize fundef.body
            in
                StringSet.union label_set new_label_set, new_fundefs @ [{fundef with body = new_body}]
        )
        (label_set, [])
        fundefs
    in
    let filter = fun ((l, _), _) -> StringSet.mem l label_set
    in
    let new_idata = List.filter filter idata
    in
    let new_fdata = List.filter filter fdata
    in
    let prog = Prog(new_idata, new_fdata, new_fundefs, new_e)
    in
        Asm.print_all out prog;
        prog
