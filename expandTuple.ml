open Closure

let rec expand idMap = function
  | Let ((var, var_type), (Tuple(idlist, _) as value), body, info)
    ->
        Let((var, var_type), value, expand (M.add var idlist idMap) body, info)
  | Let ((var, var_type), (Var(id, _) as value), body, info) when M.mem id idMap
    -> Let((var, var_type), value, expand (M.add var (M.find id idMap) idMap) body, info)
  | Let ((var, var_type), value, body, info)
    ->
        Let((var, var_type), value, expand idMap body, info)

  | MakeCls ((id, typ), cls, exp, info)
    -> MakeCls((id, typ), cls, expand idMap exp, info)

  | LetTuple (id_type_list, id, exp, info) when M.mem id idMap
    ->
        let idlist = M.find id idMap
        in
            List.fold_right2 (fun id_type_var id_val exp ->
                Let(id_type_var, Var(id_val, info), exp, info)
            ) id_type_list idlist (expand idMap exp)
            (*note: any of id_val can not have tuple type again, because exp is already flatten*)
  | LetTuple (id_type_list, id, exp, info)
    -> LetTuple(id_type_list, id, expand idMap exp, info)

  | IfEq (id1, id2, e1, e2, info)
    -> IfEq(id1, id2, expand idMap e1, expand idMap e2, info)
  | IfLE (id1, id2, e1, e2, info)
  -> IfLE(id1, id2, expand idMap e1, expand idMap e2, info)
  | other -> other


let fun_converter { name = fname; args = args_id_types; formal_fv = free_args_id_types; body = body; info = info } =
    {
        name = fname;
        args = args_id_types;
        formal_fv = free_args_id_types;
        body = expand M.empty body;
        info = info
    }


let f (Prog(fundefs, e)) =
    (*Printf.printf "Before expansion\n%s\n" (to_string e);*)
    let new_exp  = expand M.empty e
    in
    (*Printf.printf "After expansion\n%s\n" (to_string new_exp);*)
    Prog(List.map fun_converter fundefs, new_exp)
