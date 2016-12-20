open Closure

let rec expand_flat idMap = function
  | Let ((var, var_type), (Tuple(idlist, _) as value), body, info)
    ->
        Let((var, var_type), value, expand_flat (M.add var idlist idMap) body, info)
  | Let ((var, var_type), (Var(id, _) as value), body, info) when M.mem id idMap
    -> Let((var, var_type), value, expand_flat (M.add var (M.find id idMap) idMap) body, info)
  | Let ((var, var_type), value, body, info)
    ->
        Let((var, var_type), value, expand_flat idMap body, info)

  | MakeCls ((id, typ), cls, exp, info)
    -> MakeCls((id, typ), cls, expand_flat idMap exp, info)

  | LetTuple (id_type_list, id, exp, info) when M.mem id idMap
    ->
        let idlist = M.find id idMap
        in
            List.fold_right2 (fun id_type_var id_val exp ->
                Let(id_type_var, Var(id_val, info), exp, info)
            ) id_type_list idlist (expand_flat idMap exp)
            (*note: any of id_val can not have tuple type again, because exp is already flatten*)
  | LetTuple (id_type_list, id, exp, info)
    -> LetTuple(id_type_list, id, expand_flat idMap exp, info)

  | IfEq (id1, id2, e1, e2, info)
    -> IfEq(id1, id2, expand_flat idMap e1, expand_flat idMap e2, info)
  | IfLE (id1, id2, e1, e2, info)
  -> IfLE(id1, id2, expand_flat idMap e1, expand_flat idMap e2, info)
    | Unit _
    | IntRead _
    | FloatRead _
    | Int _
    | Float _
    | Neg _
    | Print _
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

    | AppCls _
    | AppDir _
    | Get _
    | Put _
    | ExtArray _
    | Tuple _
    as exp
    ->
        exp

        (*eliminate all let x with x's type is Type.Tuple but expression is not tuple*)
        (*expand all x's usage in Var(_) and AppCls, AppDir*)
let rec elim_let_tuple_type env = function
  | Let ((var, var_type), (Tuple(idlist, _) as value), body, info)
    ->
        Let((var, var_type), value, elim_let_tuple_type (M.add var idlist env) body, info)
  | Let ((id, Type.Tuple (types, type_info)) as idtype, exp, body, info)
  -> let id_types = List.map (fun typ -> Id.genid id, typ) types
      in
      let ids = List.map fst id_types
      in
      LetTuple(id_types, elim_let_tuple_type env exp,
          Let (idtype, Tuple(ids, info),
              elim_let_tuple_type (M.add id ids env) body,
              info
          )
          ,
          info
      )
  | Let ((var, var_type), value, body, info)
    ->
        Let((var, var_type), value, expand_flat idMap body, info)

  | MakeCls ((id, typ), cls, exp, info)
    -> MakeCls((id, typ), cls, expand_flat idMap exp, info)

  | LetTuple (id_type_list, id, exp, info) when M.mem id idMap
    ->
        let idlist = M.find id idMap
        in
            List.fold_right2 (fun id_type_var id_val exp ->
                Let(id_type_var, Var(id_val, info), exp, info)
            ) id_type_list idlist (expand_flat idMap exp)
            (*note: any of id_val can not have tuple type again, because exp is already flatten*)
  | LetTuple (id_type_list, id, exp, info)
    -> LetTuple(id_type_list, id, expand_flat idMap exp, info)

  | IfEq (id1, id2, e1, e2, info)
    -> IfEq(id1, id2, expand_flat idMap e1, expand_flat idMap e2, info)
  | IfLE (id1, id2, e1, e2, info)
  -> IfLE(id1, id2, expand_flat idMap e1, expand_flat idMap e2, info)
    | Unit _
    | IntRead _
    | FloatRead _
    | Int _
    | Float _
    | Neg _
    | Print _
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

    | AppCls _
    | AppDir _
    | Get _
    | Put _
    | ExtArray _
    | Tuple _
    as exp
    ->
        exp

let expand_tuple exp =
    expand_tuple_loop M.empty exp


let fun_converter { name = fname; args = args_id_types; formal_fv = free_args_id_types; body = body; info = info } =
    let new_args_id_types, replacements = List.fold_right (fun (id,typ) (id_types, replacements) ->
        match typ with
        | Type.Tuple (typelist, info) ->
                let sub_idtypes = List.map (fun typ -> Id.genid id, typ) typelist
                in
                sub_idtypes @ id_types, (id, List.map fst sub_idtypes, typelist)::replacements
        | _ -> (id,typ)::id_types, replacements
    )
    args_id_types
    ([], [])
    in
    let new_body = List.fold_right (fun (id, ids, types) exp ->
        Let((id, Type.Tuple(types, info)), Tuple(ids, info), exp, info)
        )
        replacements
        body
    in
    let new_body = expand_tuple new_body
    in
    {
        name = fname;
        args = new_args_id_types;
        formal_fv = free_args_id_types;
        body = new_body;
        info = info
    }


let f (Prog(fundefs, e)) =
    (*Printf.printf "Before expansion\n%s\n" (to_string e);*)
    let new_exp  = expand_tuple e
    in
    (*Printf.printf "After expansion\n%s\n" (to_string new_exp);*)
    Prog(List.map fun_converter fundefs, new_exp)
