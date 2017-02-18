open Closure

let rec expand_tuple idMap = function
  | Let ((var, var_type), (Tuple(idlist, _) as value), body, info)
    ->
        Let((var, var_type), value, expand_tuple (M.add var idlist idMap) body, info)
  | Let ((var, var_type), (Var(id, _) as value), body, info) when M.mem id idMap
    -> Let((var, var_type), value, expand_tuple (M.add var (M.find id idMap) idMap) body, info)
  | Let ((var, Type.Tuple(types, type_info)) as idtype, value, body, info)
  ->
      let new_value = expand_tuple idMap value
      in
      let idlist_withtype = List.map (fun typ -> Id.genid var, typ) types
      in
      let idlist = List.map fst idlist_withtype
      in
      let new_body = expand_tuple (M.add var idlist idMap) body
      in
      Let(idtype, new_value,
        LetTuple(
            idlist_withtype, var,
            new_body
            ,
            info
        )
        ,
        info
      )
  | Let ((var, var_type), value, body, info)
    ->
        Let((var, var_type), expand_tuple idMap value, expand_tuple idMap body, info)

  | MakeCls ((id, typ), cls, exp, info)
    -> MakeCls((id, typ), cls, expand_tuple idMap exp, info)

  | LetTuple (id_type_list, id, exp, info) when M.mem id idMap
    ->
        let idlist = M.find id idMap
        in
            List.fold_right2 (fun id_type_var id_val exp ->
                Let(id_type_var, Var(id_val, info), exp, info)
            ) id_type_list idlist (expand_tuple idMap exp)
            (*note: any of id_val can not have tuple type again, because exp is already flatten*)
  | LetTuple (id_type_list, id, exp, info)
    -> LetTuple(id_type_list, id, expand_tuple idMap exp, info)

  | IfEq (id1, id2, e1, e2, info)
    -> IfEq(id1, id2, expand_tuple idMap e1, expand_tuple idMap e2, info)
  | IfLE (id1, id2, e1, e2, info)
  -> IfLE(id1, id2, expand_tuple idMap e1, expand_tuple idMap e2, info)
    | AppCls (x, xlist, info)
        ->
            let new_xlist = List.fold_right (fun x new_xlist ->
                try
                    M.find x idMap @ new_xlist
                with Not_found -> x::new_xlist
            )
            xlist
            []
            in
            AppCls(x, new_xlist, info)
    | AppDir (x, xlist, info)
    ->
            let new_xlist = List.fold_right (fun x new_xlist ->
                try
                    M.find x idMap @ new_xlist
                with Not_found -> x::new_xlist
            )
            xlist
            []
            in
      (*Printf.printf "\n\n\nexpand tuple.ml: App dir%s\nwith params\n" @@ Id.to_string x;*)
      (*List.iter (fun x -> Printf.printf "%s\n" (Id.to_string x)) new_xlist;*)
            AppDir(x, new_xlist, info)
    | Unit _
    | CharRead _
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
    | Get _
    | Put _
    | ExtArray _
    | Tuple _
    as exp
    ->
        exp

        (*eliminate all let x with x's type is Type.Tuple but expression is not tuple*)
        (*expand all x's usage in Var(_) and AppCls, AppDir*)

let fun_converter { name = fname; args = args_id_types; formal_fv = free_args_id_types; body = body; info = info } =
    (*Printf.printf "fun name: %s\n" @@ fst @@ fst  fname;*)
    (*Printf.printf "Before expansion\n%s\n" (to_string body);*)
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
    let new_body = expand_tuple M.empty new_body
    in
    (*Printf.printf "After expansion\n%s\n" (to_string new_body);*)
    {
        name = fname;
        args = new_args_id_types;
        formal_fv = free_args_id_types;
        body = new_body;
        info = info
    }


let f out (Prog(fundefs, e)) =
    (*Printf.printf "Before expansion\n%s\n" (to_string e);*)
    let new_exp  = expand_tuple M.empty e
    in
    (*Printf.printf "After expansion\n%s\n" (to_string new_exp);*)
    let prog =Prog(List.map fun_converter fundefs, new_exp)
    in
        print_all out prog;
        prog
