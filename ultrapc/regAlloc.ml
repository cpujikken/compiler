open Asm
open Operand
open Loc
open Reg


let rec map_all int_color_map float_color_map e =
    let find_int op =
        find_op int_color_map float_color_map false op
    in
    let find_float op =
        find_op int_color_map float_color_map true op
    in
    match e with
    | Ans (exp, info) -> AsmReg.Ans(map_exp int_color_map float_color_map exp, info)
    | Let ((op, (Type.Unit _ as op_typ)), let_exp, body_exp, info) ->
            AsmReg.Let((reg_dump, op_typ), map_exp int_color_map float_color_map let_exp, map_all int_color_map float_color_map body_exp, info)
    | Let ((op,( Type.Float _ as op_typ )), let_exp, body_exp, info) ->
            AsmReg.Let((find_float op, op_typ), map_exp int_color_map float_color_map let_exp, map_all int_color_map float_color_map body_exp, info)
    | Let ((op, (_ as op_typ)), let_exp, body_exp, info) ->
            AsmReg.Let((find_int op, op_typ), map_exp int_color_map float_color_map let_exp, map_all int_color_map float_color_map body_exp, info)
and
find_op int_color_map float_color_map is_float = function
    | Operand.Reg reg -> reg
    | Operand.ID id -> try
        if is_float then
            M.find id float_color_map
        else
            M.find id int_color_map
        with
        Not_found ->
            failwith (Printf.sprintf "Wrong compiler flow. ID(%s):%s is not bound (colored) yet while mapping" (Id.to_string id) (if is_float then "float" else "int"))
and
map_exp int_color_map float_color_map e =
    let find_int op =
        find_op int_color_map float_color_map false op
    in
    let find_float op =
        find_op int_color_map float_color_map true op
    in
    let find_addr = function
        Relative (op, loc) -> AsmReg.Relative (find_int op, loc)
        (*(r1, s4, r2): relative address
         * of offset r2 * s4 from r1*)
        | Dynamic (op1, s, op2) -> AsmReg.Dynamic(find_int op1, s, find_int op2)
        | Absolute (t1, t2op) -> AsmReg.Absolute(t1, t2op)

    in
    match e with
    | Nop -> AsmReg.Nop
    | IntRead -> AsmReg.IntRead
    | FloatRead -> AsmReg.FloatRead
    | Add (op1, op2) -> AsmReg.Add(find_int op1, find_int op2)
    | ShiftLeft (op1, op2) -> AsmReg.ShiftLeft(find_int op1, find_int op2)
    | ShiftRight (op1, op2) -> AsmReg.ShiftRight(find_int op1, find_int op2)
    | Div (op1, op2) -> AsmReg.Div (find_int op1, find_int op2)
    | Mul (op1, op2) -> AsmReg.Mul (find_int op1, find_int op2)
    | Sub (op1, op2) -> AsmReg.Sub (find_int op1, find_int op2)
    | Addi (op, loc) -> AsmReg.Addi (find_int op, loc)
    | Four op -> AsmReg.Four (find_int op)
    | Half op -> AsmReg.Half (find_int op)
    | Load addr -> AsmReg.Load (find_addr addr)
    | Store (op, addr) -> AsmReg.Store (find_int op, find_addr addr)
    | Neg op -> AsmReg.Neg (find_int op)
    | FNeg op -> AsmReg.FNeg (find_float op)
    | FAbs op -> AsmReg.FAbs (find_float op)
    | Print op -> AsmReg.Print (find_int op)
    | FAdd (op1, op2) -> AsmReg.FAdd (find_float op1, find_float op2)
    | FSub (op1, op2) -> AsmReg.FSub (find_float op1, find_float op2)
    | FMul (op1, op2) -> AsmReg.FMul (find_float op1, find_float op2)
    | FDiv (op1, op2) -> AsmReg.FDiv (find_float op1, find_float op2)
    | FLoad addr -> AsmReg.FLoad (find_addr addr)
    | FStore (op, addr) -> AsmReg.FStore(find_float op, find_addr addr)


    | MoveImm loc -> AsmReg.MoveImm loc
    | Move op -> AsmReg.Move (find_int op)

    | IfEQ (op1, op2, e1, e2)
        -> AsmReg.IfEQ (find_int op1, find_int op2, map_all int_color_map float_color_map e1, map_all int_color_map float_color_map e2)
    | FIfEQ (op1, op2, e1, e2)
        -> AsmReg.FIfEQ (find_int op1, find_int op2, map_all int_color_map float_color_map e1, map_all int_color_map float_color_map e2)
    | IfLT (op1, op2, e1, e2)
        -> AsmReg.IfLT (find_int op1, find_int op2, map_all int_color_map float_color_map e1, map_all int_color_map float_color_map e2)
    | FIfLT (op1, op2, e1, e2)
        -> AsmReg.FIfLT (find_int op1, find_int op2, map_all int_color_map float_color_map e1, map_all int_color_map float_color_map e2)
    | CallCls (op, l1, l2) -> AsmReg.CallCls (find_int op, List.map find_int l1, List.map find_float l2)
    | CallDir (loc, l1, l2) -> AsmReg.CallDir (loc, List.map find_int l1, List.map find_float l2)
    | Restore id -> AsmReg.Restore id
    | Save (id, Type.Float _) -> AsmReg.Save (M.find id float_color_map, id)
    | Save (id, _) -> AsmReg.Save (M.find id int_color_map, id)


exception Spilled_ID_Found

(*only replace using, there is no replacement required in define statement*)
(*
let rec replace_id id new_id = function
    Ans(exp, info) -> Ans(replace_id_exp id new_id exp, info)
    | Let (id_type, let_exp, body, info)
        -> Let(id_type, replace_id_exp id new_id let_exp, replace_id id new_id body, info)
and
replace_id_exp id new_id e =
    let replace = function
        | Operand.ID op_id when op_id = id -> Operand.ID new_id
        | other -> other
    in
    let replace_addr = function
        Relative (op, loc) -> Relative(replace op, loc)
        (*(r1, s4, r2): relative address
         * of offset r2 * s4 from r1*)
        | Dynamic (op1, s, op2) -> Dynamic(replace op1, s, replace op2)
        | Absolute (t1, t2op) -> Absolute(t1, t2op)
    in
    match e with
    | Nop
    | IntRead
    | FloatRead
    | MoveImm _
    as e -> e
    | Add (op1, op2) -> Add (replace op1, replace op2)
    | ShiftLeft (op1, op2) -> ShiftLeft (replace op1, replace op2)
    | ShiftRight (op1, op2) -> ShiftRight (replace op1, replace op2)
    | Div (op1, op2) -> Div (replace op1, replace op2)
    | Mul (op1, op2) -> Mul (replace op1, replace op2)
    | Sub (op1, op2) -> Sub (replace op1, replace op2)
    | Addi (op, loc) -> Addi (replace op, loc)
    | Four op -> Four (replace op)
    | Half op -> Half (replace op)
    | Load addr -> Load (replace_addr addr)
    | Store (op, addr) -> Store (replace op, replace_addr addr)
    | Neg op -> Neg (replace op)
    | FNeg op -> FNeg (replace op)
    | FAbs op -> FAbs (replace op)
    | Print op -> Print (replace op)
    | FAdd (op1, op2) -> FAdd (replace op1, replace op2)
    | FSub (op1, op2) -> FSub (replace op1, replace op2)
    | FMul (op1, op2) -> FMul (replace op1, replace op2)
    | FDiv (op1, op2) -> FDiv (replace op1, replace op2)
    | FLoad addr -> FLoad (replace_addr addr)
    | FStore (op, addr) -> FStore(replace op, replace_addr addr)

    | Move op -> Move (replace op)

    | IfEQ (op1, op2, e1, e2)
        -> IfEQ (replace op1, replace op2, replace_id id new_id e1, replace_id id new_id e2)
    | FIfEQ (op1, op2, e1, e2)
        -> FIfEQ (replace op1, replace op2, replace_id id new_id e1, replace_id id new_id e2)
    | IfLT (op1, op2, e1, e2)
        -> IfLT (replace op1, replace op2, replace_id id new_id e1, replace_id id new_id e2)
    | FIfLT (op1, op2, e1, e2)
        -> FIfLT (replace op1, replace op2, replace_id id new_id e1, replace_id id new_id e2)
    | CallCls (op, l1, l2) -> CallCls(replace op, List.map replace l1, List.map replace l2)
    | CallDir (loc, l1, l2) -> CallDir(loc, List.map replace l1, List.map replace l2)
    | Restore id -> Restore id
    *)

let rec spill id def_found e =
    match def_found with
    None ->( match e with
          | Ans (exp, info) ->(
                  try
                      Ans(spill_exp id def_found exp, info)
                  with
                      Spilled_ID_Found ->(match def_found with
                          None -> failwith (Printf.sprintf "wrong data flow. %s is used before its definition" (Id.to_string id))
                          | Some (new_id, typ, false) ->
                              Let((Operand.ID new_id, typ), Restore(id), Ans(spill_exp id (Some (new_id, typ, true)) exp, info), info)
                          | Some(_, _, true) ->
                                  failwith (Printf.sprintf "wrong data flow. exception raised for already restored variable %s" (Id.to_string id))
                      )
          )
          | Let ((Operand.ID op_id as op, op_type), let_exp, body, info) when op_id = id ->
                  let new_id = (Id.genid ("dump", info))
                  in
                  let body' = spill id (Some (new_id, op_type, false)) body
                  in
                      Let((op, op_type), let_exp, Let((Operand.ID new_id, Type.Unit info), Save(op_id, op_type), body',info), info)
         | Let (op_type, let_exp, body, info) ->
                 Let(op_type, spill_exp id def_found let_exp, spill id  def_found body, info)
        )
     | Some _ -> (match e with
          | Ans (exp, info) -> Ans (spill_exp id def_found exp, info)
         | Let (op_type, let_exp, body, info) ->
                 Let(op_type, spill_exp id def_found let_exp, spill id def_found body, info)
     )
and
spill_exp id def_found e =
    let check_id = function
        | Operand.ID cid when cid = id ->( match def_found with
            | None -> raise(Spilled_ID_Found )
            | Some (_, _, false) -> raise Spilled_ID_Found
            | Some (new_id, _, true) -> Operand.ID new_id
        )
        | other -> other
    in
    let check_addr = function
        Relative (op, loc) -> Relative(check_id op, loc)
        (*(r1, s4, r2): relative address
         * of offset r2 * s4 from r1*)
        | Dynamic (op1, s, op2) -> Dynamic(check_id op1, s, check_id op2)
        | Absolute (t1, t2op) -> Absolute(t1, t2op)
    in
    match e with
    | Nop
    | IntRead
    | FloatRead
    | MoveImm _
    | Restore _
    | Save _
    as exp -> exp

    | Add (op1, op2) -> Add(check_id op1, check_id op2)
    | ShiftLeft (op1, op2) -> ShiftLeft (check_id op1, check_id op2)
    | ShiftRight (op1, op2) -> ShiftRight (check_id op1, check_id op2)
    | Div (op1, op2) -> Div (check_id op1, check_id op2)
    | Mul (op1, op2) -> Mul (check_id op1, check_id op2)
    | Sub (op1, op2) -> Sub (check_id op1, check_id op2)
    | Addi (op, loc) -> Addi (check_id op, loc)
    | Four op -> Four (check_id op)
    | Half op -> Half (check_id op)
    | Load addr -> Load(check_addr addr)
    | Store (op, addr) -> Store(check_id op, check_addr addr)
    | Neg op -> Neg (check_id op)
    | FNeg op -> FNeg (check_id op)
    | FAbs op -> FAbs (check_id op)
    | Print op -> Print (check_id op)
    | FAdd (op1, op2) -> FAdd (check_id op1, check_id op2)
    | FSub (op1, op2) -> FSub (check_id op1, check_id op2)
    | FMul (op1, op2) -> FMul (check_id op1, check_id op2)
    | FDiv (op1, op2) -> FDiv (check_id op1, check_id op2)
    | FLoad addr -> FLoad(check_addr addr)
    | FStore (op, addr) -> FStore(check_id op, check_addr addr)

    | Move op -> Move (check_id op)

    | IfEQ (op1, op2, e1, e2)
        -> IfEQ (check_id op1, check_id op2, spill id def_found e1, spill id def_found e2)
    | FIfEQ (op1, op2, e1, e2)
        -> FIfEQ (check_id op1, check_id op2, spill id def_found e1, spill id def_found e2)
    | IfLT (op1, op2, e1, e2)
        -> IfLT (check_id op1, check_id op2, spill id def_found e1, spill id def_found e2)
    | FIfLT (op1, op2, e1, e2)
        -> FIfLT (check_id op1, check_id op2, spill id def_found e1, spill id def_found e2)
    | CallCls (op, l1, l2) -> CallCls (check_id op, List.map check_id l1, List.map check_id l2)
    | CallDir (loc, l1, l2) -> CallDir (loc, List.map check_id l1, List.map check_id l2)

let rec coloring e =
    let graph = Graph.gen_graph e
    in
    let color_map = Graph.coloring graph
    in
    match color_map with
        | Graph.Spill id -> coloring (spill id None e)
        | Graph.ColorMap (int_color_map, float_color_map) ->
                M.iter (fun key _ -> Printf.printf "%s\n" (Id.to_string key)) int_color_map;
                map_all int_color_map float_color_map e

(*assign register for func*)
let process_def { Asm.name = def_name; Asm.args = args; Asm.fargs = float_args; Asm.body = body; Asm.ret = return_type ; Asm.info = info} = (* 関数のレジスタ割り当て (caml2html: regalloc_h) *)
    let regenv = M.add (def_name, info) reg_cl M.empty
    in
    let (i, arg_regs, regenv) =
        List.fold_left
            (fun (i, arg_regs, regenv) y ->
                let r = regs.(i)
                in
                (
                    i + 1,
                    arg_regs @ [r],
                    match y with
                    | Reg _ -> Info.exit info "error occured while assigning register"
                    | ID id -> M.add id r regenv
                    )
                )
            (0, [], regenv)
            args
    in
    let (d, farg_regs, regenv) =
        List.fold_left
        (fun (d, farg_regs, regenv) z ->
            let fr = fregs.(d)
            in
            (d + 1, farg_regs @ [fr], (
                match z with
                | Reg _ -> Info.exit info "error occured while assigning register"
                | ID id -> M.add id fr regenv
            ))
        )
        (0, [], regenv)
        float_args
    in
    let return_reg = match return_type with
        | Type.Unit info -> reg_ret
        | Type.Float info -> freg_ret
        | _ -> reg_ret
    in
    let info = Asm.get_info body
    in
    let body' =
        (*Printf.printf "closure body:\n%s\n" (Asm.to_string body);*)
        coloring (concat body (Reg return_reg, return_type) (Ans(Move(Reg return_reg), info)))
    in
        (*Printf.printf "closure body after regAlloc:\n%s\n" (AsmReg.to_string body');*)
        { AsmReg.name = def_name; AsmReg.args =  arg_regs; AsmReg.fargs = farg_regs; AsmReg.body = body'; AsmReg.ret = return_type; AsmReg.info = info }

(*assign register*)
let f (Prog(idata, data, fundefs, e)) = (* プログラム全体のレジスタ割り当て (caml2html: regalloc_f) *)
    (*Format.eprintf "register allocation: may take some time (up to a few minutes, depending on the size of functions)@.";*)
      let fundefs' = List.map process_def fundefs in
      AsmReg.Prog(idata, data, fundefs', coloring e)
