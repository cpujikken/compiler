open Closure

let rec flat_type = function
  | Type.Unit _
  | Type.Bool _
  | Type.Int _
  | Type.Float _ as t -> t
  | Type.Fun (tlist, t, info) -> Type.Fun(List.map flat_type tlist, flat_type t, info)
  | Type.Tuple (tlist, info) ->
          Type.Tuple(
              List.fold_right (fun elm current_list -> match flat_type elm with
                |Type.Tuple (tlist, _) -> tlist @ current_list
                | other -> other::current_list
                ) tlist [], info
          )
  | Type.Array (t, info) -> Type.Array(flat_type t, info)
  | Type.Var({contents = Some(t)} as r, info) ->
          r := Some(flat_type t);
          Type.Var(r, info)
    | other -> other
  (*| Type.Var (ref_opt_t, info) -> Type.Var*)

let rec flat = function

  | Let ((var, var_type), value, body, info)
    -> Let((var, flat_type var_type), flat value, flat body, info)

  | MakeCls ((id, typ), cls, exp, info)
    -> MakeCls((id, flat_type typ), cls, flat exp, info)

  | LetTuple (id_type_list, id, exp, info)
    ->
        let id_type_list', replacements = flat_id_type_list id_type_list
        in
        let new_exp = wrap_after_flat replacements (flat exp)
        in
        (*reassign flatten variable*)
        LetTuple(
            id_type_list',
            id,
            new_exp,
            info
        )
  | IfEq (id1, id2, e1, e2, info)
    -> IfEq(id1, id2, flat e1, flat e2, info)
  | IfLE (id1, id2, e1, e2, info)
  -> IfLE(id1, id2, flat e1, flat e2, info)
    | other-> other
and flat_id_type_list id_type_list =
    List.fold_right
        (fun (id, typ) (tuple_list, replacements) -> match flat_type typ with
            | Type.Tuple (tlist, info) ->
                    (*generate list of new ids*)
                    let new_id_type_list = List.map (fun typ -> Id.genid id, typ) tlist
                    in
                    (new_id_type_list @ tuple_list, (id, new_id_type_list)::replacements)
            | other -> ((id, other) :: tuple_list, replacements)
        ) id_type_list ([], [])
and wrap_after_flat replacements exp =
    List.fold_right
    (fun ((_, info) as id, new_id_type_list)  exp ->
        Let (
            (id, Type.Tuple (List.map snd new_id_type_list, info)),
            Tuple(List.map fst new_id_type_list, info),
            exp,
            info
            )
    ) replacements exp


let fun_converter { name = (fun_name , fun_type); args = args_id_types; formal_fv = free_args_id_types; body = body; info = info } =
    let new_args_id_types, replacements = flat_id_type_list args_id_types
    in
    let new_body = wrap_after_flat replacements (flat body)
    in
    let new_free_args_id_types, replacements_fv = flat_id_type_list free_args_id_types
    in
    let new_body = wrap_after_flat replacements_fv new_body
    in
  (*Printf.printf "%s -> %d\n" (fst fun_name) (List.length new_args_id_types);*)
    {
        name = fun_name, flat_type fun_type;
        args = new_args_id_types;
        formal_fv = new_free_args_id_types;
        body = new_body;
        info = info
    }


let f (Prog(fundefs, e)) =
(*Printf.printf "Before flatten\n%s\n" (to_string e);*)
    let new_e = flat e
    in
    (*Printf.printf "After flatten\n%s\n" (to_string new_e);*)
    Prog(List.map fun_converter fundefs, new_e)
