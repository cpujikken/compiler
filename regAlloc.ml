open Asm
open Operand
open Loc
open Reg

let used_local_regs_map_global = ref StringMap.empty

(*alloc let (ret_type, ret_des) = e
 * restored_vars: spilled var already be restored, otherwise: restore it before using*)
(*map_all have to save after assigned, but no need to restore before using*)
let rec map_all ret_type ret_dest color_map = function
    | Ans (exp, info) ->
        map_exp color_map exp ret_dest ret_type info ( AsmReg.Ans(AsmReg.Nop, info))
    | Let ((op, op_typ), let_exp, body_st, info) ->
        map_exp color_map let_exp op op_typ info (map_all ret_type ret_dest color_map body_st)
and
(*map_exp has to restore variables before using*)
(*but no need to save after assigning*)
map_exp color_map e ret_op ret_type info cont_body =
    let find_color = function
        | Operand.Reg reg -> reg
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
    let dest_reg = find_color ret_op
    in
    match e with
    | Nop -> cont_body
    | CharRead ->
        AsmReg.Let ((dest_reg, ret_type), AsmReg.CharRead, cont_body, info)
    | Add (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Add(find_color op1, find_color op2), cont_body, info)
    | ShiftLeft (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.ShiftLeft(find_color op1, find_color op2), cont_body, info)
    | ShiftRight (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.ShiftRight(find_color op1, find_color op2), cont_body, info)
    | Div (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Div (find_color op1, find_color op2), cont_body, info)
    | Mul (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Mul (find_color op1, find_color op2), cont_body, info)
    | Sub (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Sub (find_color op1, find_color op2), cont_body, info)
    | Addi (op, loc) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Addi (find_color op, loc), cont_body, info)
    | Four op ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Four (find_color op), cont_body, info)
    | Half op ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Half (find_color op), cont_body, info)
    | Load addr ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Load (find_addr addr), cont_body, info)
    | Store (op, addr) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Store (find_color op, find_addr addr), cont_body, info)
    | Neg op ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Neg (find_color op), cont_body, info)
    | FNeg op ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.FNeg (find_color op), cont_body, info)
    | FAbs op ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.FAbs (find_color op), cont_body, info)
    | Print op ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Print (find_color op), cont_body, info)
    | FAdd (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.FAdd (find_color op1, find_color op2), cont_body, info)
    | FSub (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.FSub (find_color op1, find_color op2), cont_body, info)
    | FMul (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.FMul (find_color op1, find_color op2), cont_body, info)
    | FDiv (op1, op2) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.FDiv (find_color op1, find_color op2), cont_body, info)
    | FLoad addr ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.FLoad (find_addr addr), cont_body, info)
    | FStore (op, addr) ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.FStore(find_color op, find_addr addr), cont_body, info)

    | Save id ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Save (find_color (Operand.ID id), id), cont_body, info)
    | FSave id->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Save (find_color (Operand.ID id), id), cont_body, info)
    | Restore id ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Restore id, cont_body, info)

    | MoveImm loc ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.MoveImm loc, cont_body, info)
    | Move op ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.Move (find_color op), cont_body, info)
    | FMove op ->
        AsmReg.Let((dest_reg, ret_type), AsmReg.FMove (find_color op), cont_body, info)

    | IfEQ (op1, op2, e1, e2)
    ->
        let e1_ret = map_all ret_type ret_op color_map e1
        in
        let e2_ret = map_all ret_type ret_op color_map e2
        in
            AsmReg.Let((dest_reg, ret_type), AsmReg.IfEQ (find_color op1, find_color op2, e1_ret, e2_ret), cont_body, info)
    | FIfEQ (op1, op2, e1, e2)
    ->
        let e1_ret = map_all ret_type ret_op color_map e1
        in
        let e2_ret = map_all ret_type ret_op color_map e2
        in
            AsmReg.Let((dest_reg, ret_type), AsmReg.FIfEQ (find_color op1, find_color op2, e1_ret, e2_ret), cont_body, info)
    | IfLT (op1, op2, e1, e2)
    ->
        let e1_ret = map_all ret_type ret_op color_map e1
        in
        let e2_ret = map_all ret_type ret_op color_map e2
        in
            AsmReg.Let((dest_reg, ret_type), AsmReg.IfLT (find_color op1, find_color op2, e1_ret, e2_ret), cont_body, info)
    | FIfLT (op1, op2, e1, e2)
    ->
        let e1_ret = map_all ret_type ret_op color_map e1
        in
        let e2_ret = map_all ret_type ret_op color_map e2
        in
            AsmReg.Let((dest_reg, ret_type), AsmReg.FIfLT (find_color op1, find_color op2, e1_ret, e2_ret), cont_body, info)
    | CallCls (op, l1, l2) ->
        call_guard color_map None info
        (AsmReg.CallCls (find_color op, List.map find_color l1, List.map find_color l2))
        (AsmReg.Let((dest_reg, ret_type), AsmReg.ret_move_st ret_type, cont_body, info))
    | CallDir (label, l1, l2) ->
        call_guard color_map (Some label) info
        (AsmReg.CallDir (label, List.map find_color l1, List.map find_color l2))
        (AsmReg.Let((dest_reg, ret_type), AsmReg.ret_move_st ret_type, cont_body, info))
and
call_guard color_map label_opt info call_exp cont_body =
    let all_regs = M.fold (fun _ reg set -> StringSet.add reg set) color_map StringSet.empty
    in
    (*get local regs that are used in callee function*)
    let overwritten_local_regs = match label_opt with
        | Some label when StringMap.mem label !used_local_regs_map_global ->
                StringSet.inter local_regs (StringMap.find label !used_local_regs_map_global)
        | _ ->
            local_regs
    in
    (*dont care reg_ret and freg_ret in auto restore/save reg set*)
    (*reg_cl also need to be save/restored. There is no need to manually add it here because it belongs to global reg set, thus, callee has to retain its value*)
    let to_save_regs = StringSet.remove reg_ret @@ StringSet.remove freg_ret @@ StringSet.inter all_regs overwritten_local_regs
    in
    (*Printf.printf "%d\n" (StringSet.size to_save_regs);*)
    (*Printf.printf "to_save_regs = ";*)
    (*StringSet.iter (Printf.printf "%s, ") to_save_regs;*)
    (*Printf.printf "\n";*)
    let env = StringSet.fold (fun reg env -> let id = Id.genid ("local_reg", info) in StringMap.add reg id env) to_save_regs StringMap.empty
    in
    let save_sts =
        StringSet.fold (fun reg cmd ->
            let id = StringMap.find reg env
            in
            AsmReg.Let((reg_dump, Type.Unit info), AsmReg.Save(reg, id), cmd, info)
        )
        to_save_regs
        (AsmReg.Ans(call_exp, info))
    in
    let restore_sts =
        StringSet.fold (fun reg cmd ->
            let id = StringMap.find reg env
            in
            if is_freg reg then
                AsmReg.Let((reg, Type.Float info), AsmReg.Restore (id), cmd, info)
            else
                AsmReg.Let((reg, Type.Int info), AsmReg.Restore (id), cmd, info)
        )
        to_save_regs
        cont_body
    in
        AsmReg.concat save_sts restore_sts


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
    | CharRead
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

(*allocate expression e with returned opt and type (ret_dest ret_type)
 * regenv: current allocated (fixed) {id -> reg} map
 * vars_type: type of some vars (more exactly: parameters) {id -> type} map
 *)
let rec alloc ret_type ret_dest e regenv vars_type type_env =
    (* get map of id and set of variables will be spilled*)
    let color_map = Graph.coloring ret_type e regenv (has_sub_call e) type_env
    in
    (*Printf.printf "spilled variables: ";*)
    (*S.iter (fun x -> Printf.printf "%s, " @@ Id.to_string x) spilled_vars;*)
    (*Printf.printf "\n";*)
    (*list of parameters that will be spilled*)
    let mapped_exp =
        map_all ret_type ret_dest color_map e
    in
    let used_regs = (M.fold (fun _ reg set -> StringSet.add reg set) color_map StringSet.empty)
    in
    let to_save_global_regs = StringSet.inter used_regs global_regs
    in
        (*M.iter (fun key _ -> Printf.printf "%s\n" (Id.to_string key)) color_map;*)
        (*save arg if need*)
        AsmReg.save_and_restore
        to_save_global_regs
        mapped_exp
        , used_regs


let rec get_type_env type_env = function
  | Ans(exp, info) -> get_type_env_exp type_env exp
  | Let((Operand.ID id, typ), exp, body, info) ->
      let type_env = M.add id typ type_env
      in
      let type_env = get_type_env_exp type_env exp
      in
        get_type_env type_env body
  | Let(_, exp, body, info) ->
      let type_env = get_type_env_exp type_env exp
      in
        get_type_env type_env body
and
get_type_env_exp type_env = function
  | IfEQ(_, _, t1, t2)
  | FIfEQ(_, _, t1, t2)
  | IfLT(_, _, t1, t2)
  | FIfLT(_, _, t1, t2)
  -> get_type_env (get_type_env type_env t1) t2
  | _ -> type_env

(*assign register for func
 * returned register allocated fun def and set of used registers
 *)
let alloc_def { Asm.name = def_name; Asm.args = int_args; Asm.fargs = float_args; Asm.body = body; Asm.ret = return_type ; Asm.info = info} = (* 関数のレジスタ割り当て (caml2html: regalloc_h) *)
    let regenv = M.add (def_name, info) reg_cl M.empty
    in
    let _, arg_regs, regenv, type_env =
        List.fold_left
            (fun (i, arg_regs, regenv, type_env) id ->
                let r = reg_no i
                in
                (
                    i + 1,
                    arg_regs @ [r],
                    M.add id r regenv,
                    M.add id (Type.Int info) type_env
                    )
                )
            (1, [], regenv, M.empty)
        int_args
    in
    let _, farg_regs, regenv, type_env =
        List.fold_left
        (fun (d, farg_regs, regenv, type_env) id ->
            let fr = freg_no d
            in
            (d + 1, farg_regs @ [fr], M.add id fr regenv, M.add id (Type.Float info) type_env)
        )
        (1, [], regenv, type_env)
        float_args
    in
    (*setup regenv for graph coloring*)
    let info = Asm.get_info body
    in
    let vars_type = List.fold_left (fun env id -> M.add id (Type.Int info)  env)
    M.empty
    int_args
    in
    let vars_type = List.fold_left (fun env id -> M.add id (Type.Float info)  env)
    vars_type
    int_args
    in
    let return_reg = match return_type with
        | Type.Float _ -> Operand.Reg freg_ret
        | Type.Unit _ -> Operand.Reg reg_dump
        | _ -> Operand.Reg reg_ret
    in
    let body, used_regs  =
        (*Printf.printf "closure body:\n%s\n" (Asm.to_string body);*)
        alloc return_type return_reg body regenv vars_type (get_type_env type_env body)
    in
        (*Printf.printf "closure body after regAlloc:\n%s\n" (AsmReg.to_string body');*)
        { AsmReg.name = def_name; AsmReg.args =  int_args; AsmReg.fargs = float_args; AsmReg.body = body; AsmReg.ret = return_type; AsmReg.info = info },
        used_regs

let calling_def_union s1_opt s2_opt = match s1_opt, s2_opt with
    | None, _ | _, None -> None
    | Some s1, Some s2 -> Some (StringSet.union s1 s2)
let rec calling_def = function
        Ans(exp, _) -> calling_def_exp exp
        | Let(_, let_exp, body, _) -> calling_def_union (calling_def_exp let_exp) (calling_def body)
and
calling_def_exp = function
    | CallCls _ -> None
    | CallDir (label, _, _) -> Some (StringSet.singleton label)
    | IfEQ(_, _, t1, t2)
    | FIfEQ(_, _, t1, t2)
    | IfLT(_, _,  t1, t2)
    | FIfLT(_, _, t1, t2)
    -> calling_def_union (calling_def t1) (calling_def t2)
    | _ -> Some StringSet.empty

(*alloc static funs*)
let rec static_def_map graph fun_by_name mapped_funs =
    let found, mapped_funs =
        StringMap.fold (fun fun_name called_funs_opt (found, mapped_funs) ->
            if StringMap.mem fun_name mapped_funs then
                found, mapped_funs
            else
            match called_funs_opt with
                |None -> found, mapped_funs
                | Some called_funs ->
                    let is_non_static = StringSet.exists (fun called_fun ->
                        not (StringMap.mem called_fun mapped_funs)
                    ) called_funs
                    in
                    if not is_non_static then
                        let mapped_fun, used_local_regs = alloc_def (StringMap.find fun_name fun_by_name)
                        in
                        let used_local_regs = StringSet.fold (fun called_fun used_local_regs->
                                let used_local_regs_called = StringMap.find called_fun !used_local_regs_map_global
                                in
                                StringSet.union used_local_regs_called used_local_regs
                            )
                            called_funs
                            used_local_regs
                        in
                            used_local_regs_map_global := StringMap.add fun_name used_local_regs !used_local_regs_map_global;
                            true, StringMap.add fun_name mapped_fun mapped_funs
                    else
                        found, mapped_funs
        )
        graph
        (false, mapped_funs)
    in
    if found then
        static_def_map graph fun_by_name mapped_funs
    else
        mapped_funs

let fun_graph fundefs =
    let fun_by_name = List.fold_left (fun map fundef -> StringMap.add (fundef.name) fundef map) StringMap.empty fundefs
    in
    let graph = List.fold_left (fun map fundef -> StringMap.add fundef.name (calling_def fundef.body) map) StringMap.empty fundefs
    in
    fun_by_name, graph

let gen_fundef fundefs =
    let fun_by_name, graph = fun_graph fundefs
    in
    let static_defs = static_def_map graph fun_by_name StringMap.empty
    in
    let mapped_list =
        List.fold_left (fun mapped_list fundef ->
            if StringMap.mem fundef.name static_defs then
                let mapped_def = StringMap.find fundef.name static_defs
                in
                    mapped_def :: mapped_list
            else
                let mapped_def, _ = alloc_def fundef
                in
                    mapped_def :: mapped_list
        )
        []
        fundefs
    in
        mapped_list

(*assign register*)
let f out (Prog(idata, data, fundefs, e)) = (* プログラム全体のレジスタ割り当て (caml2html: regalloc_f) *)
    (*Format.eprintf "register allocation: may take some time (up to a few minutes, depending on the size of functions)@.";*)
      let fundefs' = gen_fundef fundefs in
        (*Printf.printf "closure body:\n%s\n" (Asm.to_string e);*)
      let info = get_info e
      in
      let e', _ =  alloc (Type.Unit info) (Operand.Reg reg_dump) e M.empty M.empty (get_type_env M.empty e)
      in
      let default_reg_hp_label = Id.genlabel info
      in
      let default_reg_st_label = Id.genlabel info
      in
      let idata = (default_reg_hp_label, Common.default_heap)::idata
      in
      let idata = (default_reg_st_label, Common.default_stack)::idata
      in
      let new_body =
      AsmReg.Let ((reg_hp, Type.Int info),
          (AsmReg.Load (AsmReg.Absolute (Loc.Label ( fst default_reg_hp_label), None))),
          AsmReg.Let(
              (reg_sp, Type.Int info),
              (AsmReg.Load (AsmReg.Absolute (Loc.Label (fst default_reg_st_label), None))),
              e',
              info
          ),
          info
          )
      in
      let prog = AsmReg.Prog(idata, data, fundefs', new_body )
      in
      AsmReg.print_all out prog;
      prog
