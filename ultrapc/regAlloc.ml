open Asm
open Operand
open Loc
open Reg


exception Spill of Id.t

let rec map_all color_map spilled_vars spilled_vars_type restored_vars e =
    let find_color = function
    | Operand.Reg reg -> reg
    | Operand.ID id -> try
            M.find id color_map
        with
        Not_found ->
            failwith (Printf.sprintf "Wrong compiler flow. ID(%s) is not bound (colored) yet while mapping" (Id.to_string id))
    in
    let rec try_eval info restored_vars f =
        try
            f restored_vars
        with
        Spill (id) ->
            (*Printf.printf "id: %s\n" (Id.to_string id);*)
            (*S.iter (fun x -> (Printf.printf "%s\n") @@ Id.to_string @@ x) restored_vars;*)
            (*try*)
            let ee, restored_vars_new =try_eval info (S.add id restored_vars) f
            in
            AsmReg.Let((M.find id color_map, M.find id spilled_vars_type), AsmReg.Restore(id), ee, info), restored_vars_new
            (*with*)
                (*Not_found ->*)
                    (*M.iter (fun key color -> Printf.printf "%s -> %s\n" (Id.to_string key) color) color_map;*)
                    (*Printf.printf "not found color for %s or cannot find its type \n" (Id.to_string id);*)
                    (*failwith "common"*)
    in
    (
    match e with
        | Let ((_, (Type.Unit _ as op_typ)) , let_exp, body_st, info) ->
            Let ((Operand.Reg Reg.reg_dump, op_typ), let_exp, body_st, info), spilled_vars_type, restored_vars
            (*found spilled id need to be saved*)
        | Let ((Operand.ID id, op_typ) as op_and_typ, let_exp, body_st, info) when S.mem id spilled_vars ->
                (*sava operand*)
            Let (op_and_typ, let_exp,
                Let((Operand.Reg Reg.reg_dump, Type.Unit (Type.get_info op_typ)), Save(id, op_typ), body_st, info),
                info
            ), M.add id op_typ spilled_vars_type, S.add id restored_vars
            (*remove spilled id from restored_vars set (if possible)*)
        |other -> other, spilled_vars_type, restored_vars
    )
        |>( fun (e, spilled_vars_type, restored_vars) -> match e with

        | Ans (exp, info) ->
                try_eval info S.empty @@ fun restored_vars ->
                    let let_e, restored_vars' = map_exp color_map spilled_vars spilled_vars_type restored_vars exp
                    in
                    AsmReg.Ans(let_e, info), restored_vars'

        | Let ((op, op_typ), let_exp, body_st, info) ->
            try_eval info restored_vars @@ fun restored_vars' ->
                let let_e, restored_vars' = map_exp color_map spilled_vars spilled_vars_type restored_vars' let_exp
                in
                let restored_vars'' = match op with
                    Operand.ID id -> S.remove id restored_vars'
                    | _ -> restored_vars
                in
                let body_e, restored_vars_end = map_all color_map spilled_vars spilled_vars_type restored_vars'' body_st
                in
                AsmReg.Let((find_color op, op_typ), let_e, body_e, info), restored_vars_end
    )

and
map_exp color_map spilled_vars spilled_vars_type restored_vars e =
    let find_color = function
    | Operand.Reg reg -> reg
    | Operand.ID id when S.mem id spilled_vars && not (S.mem id restored_vars) ->
            (*Printf.printf "id: %s\n" (Id.to_string id);*)
            (*S.iter (fun x -> (Printf.printf "%s\n") @@ Id.to_string @@ x) restored_vars;*)
            raise (Spill (id))
    | Operand.ID id -> try
            M.find id color_map
        with
        Not_found ->
            failwith (Printf.sprintf "Wrong compiler flow. ID(%s) is not bound (colored) yet while mapping" (Id.to_string id))
    in
    let find_addr = function
        Relative (op, loc) -> AsmReg.Relative (find_color op, loc)
        (*(r1, s4, r2): relative address
         * of offset r2 * s4 from r1*)
        | Dynamic (op1, s, op2) -> AsmReg.Dynamic(find_color op1, s, find_color op2)
        | Absolute (t1, t2op) -> AsmReg.Absolute(t1, t2op)

    in
    match e with
    | Nop -> AsmReg.Nop, restored_vars
    | IntRead -> AsmReg.IntRead, restored_vars
    | FloatRead -> AsmReg.FloatRead, restored_vars
    | Add (op1, op2) -> AsmReg.Add(find_color op1, find_color op2), restored_vars
    | ShiftLeft (op1, op2) -> AsmReg.ShiftLeft(find_color op1, find_color op2), restored_vars
    | ShiftRight (op1, op2) -> AsmReg.ShiftRight(find_color op1, find_color op2), restored_vars
    | Div (op1, op2) -> AsmReg.Div (find_color op1, find_color op2), restored_vars
    | Mul (op1, op2) -> AsmReg.Mul (find_color op1, find_color op2), restored_vars
    | Sub (op1, op2) -> AsmReg.Sub (find_color op1, find_color op2), restored_vars
    | Addi (op, loc) -> AsmReg.Addi (find_color op, loc), restored_vars
    | Four op -> AsmReg.Four (find_color op), restored_vars
    | Half op -> AsmReg.Half (find_color op), restored_vars
    | Load addr -> AsmReg.Load (find_addr addr), restored_vars
    | Store (op, addr) -> AsmReg.Store (find_color op, find_addr addr), restored_vars
    | Neg op -> AsmReg.Neg (find_color op), restored_vars
    | FNeg op -> AsmReg.FNeg (find_color op), restored_vars
    | FAbs op -> AsmReg.FAbs (find_color op), restored_vars
    | Print op -> AsmReg.Print (find_color op), restored_vars
    | FAdd (op1, op2) -> AsmReg.FAdd (find_color op1, find_color op2), restored_vars
    | FSub (op1, op2) -> AsmReg.FSub (find_color op1, find_color op2), restored_vars
    | FMul (op1, op2) -> AsmReg.FMul (find_color op1, find_color op2), restored_vars
    | FDiv (op1, op2) -> AsmReg.FDiv (find_color op1, find_color op2), restored_vars
    | FLoad addr -> AsmReg.FLoad (find_addr addr), restored_vars
    | FStore (op, addr) -> AsmReg.FStore(find_color op, find_addr addr), restored_vars


    | MoveImm loc -> AsmReg.MoveImm loc, restored_vars
    | Move op -> AsmReg.Move (find_color op), restored_vars
    | FMove op -> AsmReg.FMove (find_color op), restored_vars

    | IfEQ (op1, op2, e1, e2)
    ->
        let e1_ret, restored_vars1 = map_all color_map spilled_vars spilled_vars_type restored_vars e1
        in
        let e2_ret, restored_vars2 = map_all color_map spilled_vars spilled_vars_type restored_vars e2
        in
            AsmReg.IfEQ (find_color op1, find_color op2, e1_ret, e2_ret), S.inter restored_vars1 restored_vars2
    | FIfEQ (op1, op2, e1, e2)
    ->
        let e1_ret, restored_vars1 = map_all color_map spilled_vars spilled_vars_type restored_vars e1
        in
        let e2_ret, restored_vars2 = map_all color_map spilled_vars spilled_vars_type restored_vars e2
        in
            AsmReg.FIfEQ (find_color op1, find_color op2, e1_ret, e2_ret), S.inter restored_vars1 restored_vars2
    | IfLT (op1, op2, e1, e2)
    ->
        let e1_ret, restored_vars1 = map_all color_map spilled_vars spilled_vars_type restored_vars e1
        in
        let e2_ret, restored_vars2 = map_all color_map spilled_vars spilled_vars_type restored_vars e2
        in
            AsmReg.IfLT (find_color op1, find_color op2, e1_ret, e2_ret), S.inter restored_vars1 restored_vars2
    | FIfLT (op1, op2, e1, e2)
    ->
        let e1_ret, restored_vars1 = map_all color_map spilled_vars spilled_vars_type restored_vars e1
        in
        let e2_ret, restored_vars2 = map_all color_map spilled_vars spilled_vars_type restored_vars e2
        in
            AsmReg.FIfLT (find_color op1, find_color op2, e1_ret, e2_ret), S.inter restored_vars1 restored_vars2
    | CallCls (op, l1, l2) -> AsmReg.CallCls (find_color op, List.map find_color l1, List.map find_color l2), restored_vars
    | CallDir (loc, l1, l2) -> AsmReg.CallDir (loc, List.map find_color l1, List.map find_color l2), restored_vars
    | Restore id -> AsmReg.Restore id, restored_vars
    | Save (id, Type.Float _) -> AsmReg.Save (M.find id color_map, id), restored_vars
    | Save (id, _) -> AsmReg.Save (M.find id color_map, id), restored_vars

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

let rec alloc e regenv vars_type =
    let color_map, spilled_vars = Graph.coloring e regenv
    in
    let info = Asm.get_info e
    in
    let need_to_saved_args_with_type =
        (M.filter (fun id v -> S.mem id spilled_vars) vars_type)
    in
    let need_to_saved_args = M.fold (fun k _ set -> S.add k set) need_to_saved_args_with_type S.empty
    in
    let mapped_exp, _ =
        map_all color_map spilled_vars vars_type need_to_saved_args e
    in
        (*M.iter (fun key _ -> Printf.printf "%s\n" (Id.to_string key)) color_map;*)
        (*save arg if need*)
        M.fold (fun id typ exp -> match typ with
            | Type.Float _ -> AsmReg.Let((Reg.freg_dump, typ), AsmReg.Save(M.find id regenv, id), exp, info)
            | Type.Unit _ -> exp
            | _ -> AsmReg.Let((Reg.reg_dump, typ), AsmReg.Save(M.find id regenv, id), exp, info)
        )
        need_to_saved_args_with_type
        mapped_exp

(*assign register for func*)
let process_def { Asm.name = def_name; Asm.args = int_args; Asm.fargs = float_args; Asm.body = body; Asm.ret = return_type ; Asm.info = info} = (* 関数のレジスタ割り当て (caml2html: regalloc_h) *)
    let regenv = M.add (def_name, info) reg_cl M.empty
    in
    let (_, arg_regs, regenv) =
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
        int_args
    in
    let (_, farg_regs, regenv) =
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
    let info = Asm.get_info body
    in
    let vars_type = List.fold_left (fun env arg -> match arg with
        | Operand.ID id -> M.add id (Type.Int info)  env
        | _ -> env
    )
    M.empty
    int_args
    in
    let vars_type' = List.fold_left (fun env arg -> match arg with
        | Operand.ID id -> M.add id (Type.Float info)  env
        | _ -> env
    )
    vars_type
    int_args
    in
    let return_op, move_st = match return_type with
        | Type.Float _ -> Reg freg_ret, FMove(Reg freg_ret)
        | Type.Unit _ -> Reg reg_dump, Nop
        | _ -> Reg reg_ret, Move(Reg reg_ret)
    in
    let body' =
        Printf.printf "closure body:\n%s\n" (Asm.to_string body);
        alloc (concat body (return_op, return_type) (Ans(move_st, info))) regenv vars_type'
    in
        Printf.printf "closure body after regAlloc:\n%s\n" (AsmReg.to_string body');
        { AsmReg.name = def_name; AsmReg.args =  arg_regs; AsmReg.fargs = farg_regs; AsmReg.body = body'; AsmReg.ret = return_type; AsmReg.info = info }

(*assign register*)
let f (Prog(idata, data, fundefs, e)) = (* プログラム全体のレジスタ割り当て (caml2html: regalloc_f) *)
    (*Format.eprintf "register allocation: may take some time (up to a few minutes, depending on the size of functions)@.";*)
      let fundefs' = List.map process_def fundefs in
        (*Printf.printf "closure body:\n%s\n" (Asm.to_string e);*)
      AsmReg.Prog(idata, data, fundefs', alloc e M.empty M.empty)
