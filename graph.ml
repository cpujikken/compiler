open Asm
let empty = M2.empty

(*return set of used variables, inttype and float type*)

let get_live_vars_addr = function
    (*relative address from a reg*)
    | Relative (t, _) -> S1.singleton t
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
    | Dynamic (t1, _, t2) -> S1.of_list [t1; t2]
    | Absolute _ -> S1.empty

let get_use_vars_exp_easy = function
    | Nop
    | IntRead
    | FloatRead
     -> S1.empty, S1.empty

    | Add (t1, t2)
    | ShiftLeft (t1, t2)
    | ShiftRight (t1, t2)
    | Div (t1, t2)
    | Mul (t1, t2)
    | Sub (t1, t2)
    -> S1.of_list [t1; t2], S1.empty

    | Four t
    | Half t
    | Neg t
    | Print t
    | Move t
    | Addi (t, _)
    -> S1.singleton t, S1.empty
    | Save (id, Type.Float _) ->
        S1.empty, S1.singleton (Operand.ID id)
    | Save (id, _) ->
        S1.singleton (Operand.ID id), S1.empty

    | FNeg t
    | FAbs t
    -> S1.empty, S1.singleton t

    | FAdd (t1, t2)
    | FSub (t1, t2)
    | FMul (t1, t2)
    | FDiv (t1, t2)
    -> S1.empty, S1.of_list [t1; t2]

    | Load a
    | FLoad a
    -> get_live_vars_addr a, S1.empty

    | Store (t, a)
    -> S1.add t (get_live_vars_addr a), S1.empty

    | FStore (t, a)
    -> get_live_vars_addr a, S1.singleton t

    | MoveImm _
    | Restore _
    -> S1.empty, S1.empty

    | IfEQ _
    | FIfEQ _
    | IfLT _
    | FIfLT _
    -> failwith "wrong compiler flow. please check Asm.get_use_vars"

    (*NOTE: should test how to assign returned register for float-return function*)
    | CallDir (_, l1, l2)
    -> S1.of_list l1, S1.of_list l2
    | CallCls (t, l1, l2)
        -> S1.add t (S1.of_list l1), S1.of_list l2

    (*return list of operand sets*)
    (*let dest = exp in cont*)
let rec get_live_vars_exp ((dest_op, dest_type) as dest) cont = function
    (*IN = OUT - DEF + USE*)
    | IfEQ (op1, op2, t1, t2)
    | IfLT (op1, op2, t1, t2)
    ->
        get_live_vars_if dest cont op1 op2 t1 t2 false
    | FIfEQ (op1, op2, t1, t2)
    | FIfLT (op1, op2, t1, t2)
    ->
        get_live_vars_if dest  cont op1 op2 t1 t2 true
    | exp ->
            let int_in_cont, float_in_cont = get_live_vars_no_dest cont
            in
            let int_out = List.hd int_in_cont
            in
            let float_out = List.hd float_in_cont
            in
            let int_use, float_use = get_use_vars_exp_easy exp
            in
            let int_def, float_def = (match dest_type with
                | Type.Float _ -> S1.empty, S1.singleton dest_op
                | Type.Unit _ -> S1.empty, S1.empty
                | _ -> S1.singleton dest_op, S1.empty
            )
            in
            let int_in = S1.union (S1.diff int_out int_def) int_use
            in
            let float_in = S1.union (S1.diff float_out float_def) float_use
            in
                (int_in :: int_in_cont), (float_in :: float_in_cont)
and
get_live_vars_if dest cont op1 op2 t1 t2 is_float =
    let int_in_vars1, float_in_vars1 = get_live_vars dest cont t1
    in
    let int_in_vars2, float_in_vars2 = get_live_vars dest cont t2
    in
    let int_out = S1.union (List.hd int_in_vars1) (List.hd int_in_vars2)
    in
    let float_out = S1.union (List.hd float_in_vars1) (List.hd float_in_vars2)
    in
    let int_in, float_in =
        if is_float then
            int_out,
            S1.union float_out (S1.of_list [op1; op2])
        else
            S1.union int_out (S1.of_list [op1; op2]),
            float_out
    in
        int_in :: (int_in_vars1 @ int_in_vars2), float_in :: (float_in_vars1 @ float_in_vars2)
and
get_live_vars dest cont = function
  | Ans (exp, _) -> get_live_vars_exp dest cont exp
  | Let ((op, typ) as let_dest, let_exp, body_exp, _) ->
          let cont1 = concat body_exp dest cont
          in
              get_live_vars_exp let_dest cont1 let_exp
and
get_live_vars_no_dest = function
  | Ans (exp, _) -> get_live_vars_no_dest_exp exp
  | Let ((op, typ) as let_dest, let_exp, body_exp, _) ->
          get_live_vars_exp let_dest body_exp let_exp
and
get_live_vars_no_dest_exp = function
    (*IN = OUT - DEF + USE*)
    | IfEQ (op1, op2, t1, t2)
    | IfLT (op1, op2, t1, t2)
    ->
        get_live_vars_no_dest_if op1 op2 t1 t2 false
    | FIfEQ (op1, op2, t1, t2)
    | FIfLT (op1, op2, t1, t2)
    ->
        get_live_vars_no_dest_if op1 op2 t1 t2 true
    | exp ->
            let int_in_vars, float_in_vars = get_use_vars_exp_easy exp
            in
                [int_in_vars], [float_in_vars]
and
get_live_vars_no_dest_if op1 op2 t1 t2 is_float =
    let int_in_vars1, float_in_vars1 = get_live_vars_no_dest t1
    in
    let int_in_vars2, float_in_vars2 = get_live_vars_no_dest t2
    in
    let int_out = S1.union (List.hd int_in_vars1) (List.hd int_in_vars2)
    in
    let float_out = S1.union (List.hd float_in_vars1) (List.hd float_in_vars2)
    in
    let int_in, float_in =
        if is_float then
            int_out,
            S1.union float_out (S1.of_list [op1; op2])
        else
            S1.union int_out (S1.of_list [op1; op2]),
            float_out
    in
        int_in :: (int_in_vars1 @ int_in_vars2), float_in :: (float_in_vars1 @ float_in_vars2)

let graph_from_lives lives =
    List.fold_right (fun var_set graph ->
        (*for each live variables set of each instruction*)
        S1.fold (fun u graph' ->
            (*for each element of live variables set*)
            let u_nearby_set = (try M2.find u graph' with Not_found -> S1.empty)
            in
            let u_nearby_set' = S1.remove u (S1.union u_nearby_set var_set)
            in
            M2.add u u_nearby_set' graph'
        )
        var_set
        graph
    )
    lives
    empty


let rec get_vars = function
  | Ans (exp, _) -> get_vars_exp exp
  | Let ((op, Type.Float _), let_exp, body_exp, _) ->
        let i, f = combine_vars
              (get_vars_exp let_exp)
              (get_vars body_exp)
        in
            i, S1.add op f
  | Let ((op, _), let_exp, body_exp, _) ->
        let i, f = combine_vars
              (get_vars_exp let_exp)
              (get_vars body_exp)
        in
            S1.add op i, f
and
combine_vars (i1, f1) (i2, f2) =
    S1.union i1 i2, S1.union f1 f2
and
get_vars_exp = function
    (*IN = OUT - DEF + USE*)
    | IfEQ (op1, op2, t1, t2)
    | IfLT (op1, op2, t1, t2)
    ->
        let i, f = combine_vars
              (get_vars t1)
              (get_vars t2)
        in
            S1.union (S1.of_list [op1; op2]) i, f
    | FIfEQ (op1, op2, t1, t2)
    | FIfLT (op1, op2, t1, t2)
    ->
        let i, f = combine_vars
              (get_vars t1)
              (get_vars t2)
        in
            i, S1.union (S1.of_list [op1; op2]) f
    | exp ->
            get_use_vars_exp_easy exp

let graph_supply vars graph =
    S1.fold (fun node graph' ->
        if M2.mem node graph' then
            graph'
        else
            M2.add node S1.empty graph'
    )
    vars
    graph

let gen_graph e =
    let int_lives, float_lives = get_live_vars_no_dest e
    in
    let int_graph, float_graph  = graph_from_lives int_lives , graph_from_lives float_lives
    in
    let int_vars, float_vars = get_vars e
    in
        graph_supply int_vars int_graph, graph_supply float_vars float_graph

let graph_get_degree_map graph =
    M2.map (fun set -> S1.size set) graph

let graph_get_min_deg_node degree_map =
    M2.fold (fun key deg (min_deg, min_deg_nodes) ->
        if deg < min_deg then
            deg, [key]
        else
            if deg = min_deg then
                deg, (key::min_deg_nodes)
            else
                min_deg, min_deg_nodes
    ) degree_map (M2.size degree_map, [])

let graph_get_neighbor_max_deg node degree_map graph =
    S1.fold (fun neighbor max_deg ->
        let neighbor_deg = M2.find neighbor degree_map
        in
            Pervasives.max neighbor_deg max_deg
        )
    (M2.find node graph)
    0


let get_max_neighbor_deg_node min_deg_nodes degree_map graph =
    match
    List.fold_right (fun node (max_neighbor_deg, optimized_node_opt) ->
            let neighbor_deg = graph_get_neighbor_max_deg node degree_map graph
            in
            if neighbor_deg > max_neighbor_deg then
                neighbor_deg, Some node
            else
                max_neighbor_deg, optimized_node_opt
        )
        min_deg_nodes
        (-1, None)
    with
        _, Some node -> node
        | _, None -> failwith "wrong graph coloring flow: getting the best node between zero-degree nodes"


let graph_remove_node node graph =
    M2.remove node graph

let rec coloring_make_stack current_stack graph =
    if graph = empty then
        current_stack, empty
    else
        let degree_map = graph_get_degree_map graph
        in
        let min_deg, min_deg_nodes = graph_get_min_deg_node degree_map
        in
        let to_remove_node  =
            if min_deg = 0 then
                List.hd min_deg_nodes
            else
                get_max_neighbor_deg_node min_deg_nodes degree_map graph
        in
            (to_remove_node ::current_stack), graph_remove_node to_remove_node graph

exception Spill_break of Id.t
let coloring_graph graph regs =
    let stack = fst (coloring_make_stack [] graph)
    in
    (*List.iter (fun x -> Printf.printf "%s" (Operand.to_string x)) stack;*)
        List.fold_left (fun color_map node ->
            match node with
                | Operand.Reg reg -> color_map
                | Operand.ID id ->
                    let neighbor = M2.find node graph
                    in
                    let neighbor_colors =
                        S1.fold (fun node colors ->
                            match node with
                            | Operand.ID id when M.mem id color_map -> StringSet.add (M.find id color_map) colors
                            | _ -> colors
                        )
                        neighbor
                        StringSet.empty
                    in
                    let selectable_color = StringSet.diff regs neighbor_colors
                    in
                    try
                        M.add id (StringSet.choose selectable_color) color_map
                    with
                        Not_found -> (*spill id*)
                            raise (Spill_break id)

        )
        M.empty
        stack


type coloring_result =
    | Spill of Id.t
    | ColorMap of (Reg.t M.t * Reg.t M.t)

    (*need to separate to int_graph and float_graph because sets of register are difference (Reg.allregs and Reg.allfregs)*)
let coloring (int_graph, float_graph) =
    try
        let int_color_map = coloring_graph int_graph (StringSet.of_list Reg.allregs)
        in
        let float_color_map = coloring_graph float_graph (StringSet.of_list Reg.allfregs)
        in
            ColorMap (int_color_map, float_color_map)
    with
        | Spill_break id -> Spill id
