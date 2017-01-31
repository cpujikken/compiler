let call_stack_threshold = ref (-1)
type bits5 = int
type addr26 = int
type off26 = int
type const3 = int
type off21 = int
type ret2 = int
type label = string
type off15 = int
type size4 = int

type addr =
    (*relative address from a reg*)
    Relative of Operand.t * Loc.t
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
    | Dynamic of Operand.t * size4 * Operand.t
    | Absolute of Loc.t * Loc.t option

type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp * int * Info.t
  | Let of (Operand.t * Type.t) * exp * int * t * Info.t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
    | Int of int
    | Float of float
    | Nop
    | IntRead
    | FloatRead
    | Add of Operand.t * Operand.t
    | ShiftLeft of Operand.t * Operand.t
    | ShiftRight of Operand.t * Operand.t
    | Div of Operand.t * Operand.t
    | Mul of Operand.t * Operand.t
    | Sub of Operand.t * Operand.t
    | Addi of  Operand.t * Loc.t
    | Four of Operand.t
    | Half of Operand.t
    | Load of addr
    | Store of Operand.t * addr
    | Neg of Operand.t
    | FNeg of Operand.t
    | FAbs of Operand.t
    | Print of Operand.t
    | FAdd of Operand.t * Operand.t
    | FSub of Operand.t * Operand.t
    | FMul of Operand.t * Operand.t
    | FDiv of Operand.t * Operand.t
    | FLoad of addr
    | FStore of Operand.t * addr


    | MoveImm of Loc.t
    | Move of Operand.t
    | FMove of Operand.t

    | IfEQ of Operand.t * Operand.t * t * t
    | FIfEQ of Operand.t * Operand.t *t * t
    | IfLT of Operand.t * Operand.t * t * t
    | FIfLT of Operand.t * Operand.t * t * t
    | CallCls of Operand.t * Operand.t list * Operand.t list
    | CallDir of label * Operand.t list * Operand.t list
type fundef = { name : label; args : Operand.t list; fargs : Operand.t list; body : t; ret : Type.t ; info: Info.t}
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = fundef list * t

type command =
    Assignment of Operand.t * exp * id
    | Alias of Operand.t * Operand.t * id
    | Branch of exp * id
    | Entry of Operand.t * id

and
id = int
and
block = command list * id
and
env = {
    tail: bool;
    id: int;
    dest: Operand.t;
    funname: string;
    int_params: Operand.t list;
    float_params: Operand.t list;
    graph: IntSet.t IntMap.t;
    last_blocks: block list;
    block_map: block IntMap.t;
    tmp: Operand.t;
    command_map: command IntMap.t;
    ret_assignments : IntSet.t;
    fun_by_name : fundef StringMap.t;
    calculable: bool;
    no_side_effect_defs: StringSet.t;
    after_entry_block_id : int;
    first_block_id : int;
}
and
convert_data = {
    idata: (Id.l * int) list;
    fdata: (Id.l* float) list;
}

let rec has_side_effect no_side_effect_defs = function
    | Ans (exp, _, _) -> has_side_effect_exp no_side_effect_defs exp
    | Let(_, exp, _, body, _) -> has_side_effect_exp no_side_effect_defs exp || has_side_effect no_side_effect_defs body
and
has_side_effect_exp no_side_effect_defs = function
    | Nop
    | Int _
    | Float _
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
    | Neg _
    | FNeg _
    | FAbs _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | FLoad _
    | MoveImm _
    | Move _
    | FMove _
    -> false

    | IntRead
    | FloatRead
    | Print _
    | Store _
    | FStore _
    | CallCls _
    -> true




    | IfEQ (_, _, exp1, exp2)
    | FIfEQ (_, _, exp1, exp2)
    | IfLT (_, _, exp1, exp2)
    | FIfLT (_, _, exp1, exp2)
    -> has_side_effect no_side_effect_defs exp1 || has_side_effect no_side_effect_defs exp2

    | CallDir (label, op_list1, op_list2)
    -> not (StringSet.mem label no_side_effect_defs)

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp, id, info) -> Let(xt, exp, id, e2, info)
  | Let(yt, exp, id, e1', info) -> Let(yt, exp, id,  concat e1' xt e2, info)
let seq(e1, e2, info) =
    Let(
        (Operand.ID (Id.gentmp (Type.Unit info) info), Type.Unit info),
        e1,
        -1,
        e2,
        info
        )

(* super-tenuki *)
let rec remove_dup xs = function
  | [] -> []
  | x :: ys when OperandSet.mem x xs -> remove_dup xs ys
  | x :: ys -> x :: remove_dup (OperandSet.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let rec fv_exp = function
    | Nop
    | IntRead
    | FloatRead
    | Load (Absolute _ )
    | FLoad (Absolute _)
    | MoveImm _
    | Int _
    | Float _
        -> []

    | Add (a, b)
    | ShiftLeft (a, b)
    | ShiftRight (a, b)
    | Div (a, b)
    | Mul (a, b)
    | Sub(a, b)
    | Load ((Dynamic (a, _, b)))
    | FLoad ((Dynamic (a, _, b)))
    | FAdd(a, b)
    | FSub(a, b)
    | FMul(a, b)
    | FDiv(a, b)
    | Store(a, Relative (b, _))
    | FStore(a, Relative (b, _))
    (*| FCmp(a, b, _)*)
        -> [a; b]

    | Move r
    | FMove r
    | Addi (r, _)
    | Four r
    | Half r
    | Load (Relative (r, _))
    | FLoad (Relative(r, _))
    | Store(r, Absolute _)
    | FStore(r, Absolute _)
    | Neg r
    | FNeg r
    | FAbs r
    | Print r
        ->  [r]

    | Store(r1, Dynamic(r2, _, r3))
    | FStore(r1, Dynamic(r2, _, r3))
    -> [r1; r2; r3]

    | IfEQ (u, v, e1, e2)
    | FIfEQ(u, v, e1, e2)
    | IfLT(u, v, e1, e2)
    | FIfLT(u, v, e1, e2)
    -> u :: v :: remove_dup OperandSet.empty (get_free_vars_ e1 @ get_free_vars_ e2)

    | CallCls (x, ys, zs)
    -> x :: ys @ zs
    | CallDir(_, ys, zs)
    -> ys @ zs

and get_free_vars_ = function
  | Ans(exp, _, info) -> fv_exp exp
  | Let((x, t), exp, _, e, info) ->
      fv_exp exp @ remove_dup (OperandSet.singleton x) (get_free_vars_ e)
let get_free_vars e = remove_dup OperandSet.empty (get_free_vars_ e)
let command_dest = function
    Assignment (t, _, _)
    | Entry (t, _)
    | Alias (t, _, _) -> S1.singleton t
    | Branch _ -> S1.empty

let command_source_exp = function
    | Nop
    | IntRead
    | FloatRead
    | Load (Absolute _ )
    | FLoad (Absolute _)
    | MoveImm _
    | Int _
    | Float _
        -> S1.empty

    | Add (a, b)
    | ShiftLeft (a, b)
    | ShiftRight (a, b)
    | Div (a, b)
    | Mul (a, b)
    | Sub(a, b)
    | Load ((Dynamic (a, _, b)))
    | FLoad ((Dynamic (a, _, b)))
    | FAdd(a, b)
    | FSub(a, b)
    | FMul(a, b)
    | FDiv(a, b)
    | Store(a, Relative (b, _))
    | FStore(a, Relative (b, _))
        -> S1.of_list [a; b]

    | Move r
    | FMove r
    | Addi (r, _)
    | Four r
    | Half r
    | Load (Relative (r, _))
    | FLoad (Relative(r, _))
    | Store(r, Absolute _)
    | FStore(r, Absolute _)
    | Neg r
    | FNeg r
    | FAbs r
    | Print r
        ->  S1.singleton r

    | Store(r1, Dynamic(r2, _, r3))
    | FStore(r1, Dynamic(r2, _, r3))
    -> S1.of_list [r1; r2; r3]

    | IfEQ (u, v, e1, e2)
    | FIfEQ(u, v, e1, e2)
    | IfLT(u, v, e1, e2)
    | FIfLT(u, v, e1, e2)
    -> S1.empty

    | CallCls (x, ys, zs)
    -> S1.add x @@ S1.union (S1.of_list ys) @@ S1.of_list @@ zs
    | CallDir(_, ys, zs)
    -> S1.union (S1.of_list ys) (S1.of_list zs)

let command_source_branch = function
    | Nop
    | IntRead
    | FloatRead
    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | Addi _
    | Four _
    | Int _
    | Float _
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
    -> S1.empty

    | IfEQ (u, v, _, _)
    | FIfEQ(u, v, _, _)
    | IfLT(u, v, _, _)
    | FIfLT(u, v, _, _)
    -> S1.of_list [u; v]

let command_source = function
    Assignment (_, exp, _) -> command_source_exp exp
    | Alias (_, t, _) -> S1.singleton t
    | Branch (exp, _ )-> command_source_branch exp
    | Entry (t, _) -> S1.empty

let graph_add_edge u v graph =
    IntMap.add u (IntSet.add v @@ try IntMap.find u graph with Not_found -> IntSet.empty) graph

let get_block_id = snd

let env_new_block block env =
    let new_block_map =  IntMap.add (get_block_id block) block env.block_map
    in
    {env with
        block_map = new_block_map
    }

    (*call from env_append_assignments
     * or env_append_branch
     * *)
    (*return new_block_id and env*)
let env_append_block_force assigns env =
    (*new block id is the last id of first force assignment  + 1*)
    let new_block_id = env.id
    in
    let env = {env with
        after_entry_block_id = if env.after_entry_block_id = -1 then new_block_id else env.after_entry_block_id;
        first_block_id = if env.last_blocks = [] then new_block_id else env.first_block_id;
    }
    in
    let new_block = (assigns, new_block_id)
    in
    let env = env_new_block new_block env
    in
        let graph = List.fold_left (fun graph (_, last_block_id) ->
            graph_add_edge last_block_id new_block_id graph
        )
        env.graph
        env.last_blocks
    in
    new_block_id,
        {env with
            graph = graph;
            last_blocks = [new_block];
        }

let env_append_assignments assigns env is_tail =
    match env.last_blocks with
        [(assign_list, block_id)] ->
            let last_block = assign_list @ assigns, block_id
            in
            let block_map = IntMap.add block_id last_block env.block_map
            in
            let env = {env with
                last_blocks = [last_block];
                block_map = block_map
            }
            in
            let graph = env.graph
            in
            let graph =
                if is_tail then
                graph_add_edge block_id env.after_entry_block_id graph
                else graph
            in {env with
                    graph = graph
                }
        | _ ->
                let new_block_id, env =
                    env_append_block_force assigns env
                in
                let graph = if is_tail then graph_add_edge new_block_id env.after_entry_block_id env.graph
                else
                    env.graph
                in {env with
                    graph = graph
                }

let env_new_command command env =
    {env with
        id= env.id + 1;
        command_map = IntMap.add env.id command env.command_map
    }

let env_tail_call int_args float_args env =
    let env = {env with calculable = false }
    in
    let params = env.int_params @ env.float_params
    in
    let args = int_args @ float_args
    in
    let assigns = Emit.shuffle env.tmp @@ List.map2 (fun x y -> (x, y)) params args
    in
    let assigns, env =
        List.fold_right (fun (param, arg) (assigns, env) ->
            let alias = Alias (param, arg, env.id)
            in
            alias:: assigns, env_new_command alias env
        )
        assigns
        ([], env)
    in
        env_append_assignments assigns env true
        (*link to first block after entry*)

let env_append_assignment exp env =
    let ret_assignments = env.ret_assignments
    in
    let ret_assignments =
        if env.tail then IntSet.add env.id ret_assignments
        else
            ret_assignments
    in
    let env = {env with ret_assignments = ret_assignments }
    in
    let assignment = Assignment (env.dest, exp, env.id)
    in
    let env = env_new_command assignment env
    in
        env_append_assignments [assignment]  env false

let rec gen_graph env = function
    | Ans (e, _, info) ->
            let e, id, env = gen_graph_exp env e
            in
            Ans(e, id, info), env
    | Let ((op, op_typ), let_e, _, body, info) ->
            let let_e, id, env_new = gen_graph_exp { env with dest = op; tail = false } let_e
            in
            let body, env = gen_graph {env_new with dest = env.dest; tail = env.tail } body
            in
            Let((op, op_typ), let_e, id, body, info), env
and
gen_graph_exp env = function
    (*there are 3 types of adding commands:
        * env_append_assignment -> call env_append_assignments
        * env_tail_call -> call env_append_assignments
        * env_append_branch
        *)
    | CallDir (label, op_list1, op_list2) as exp when env.tail && label = env.funname
        ->
            (*Printf.printf "%s\n" label;*)
            (*List.iter (fun x -> Printf.printf "%s\n" (Operand.to_string x)) env.int_params;*)
            exp,
            env.id,
            env_tail_call op_list1 op_list2 env

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
    | Load _
    | Int _
    | Float _
    | Neg _
    | FNeg _
    | FAbs _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | FLoad _

    | MoveImm _
    | Move _
    | FMove _
    | CallDir _
    (*todo: figure out how to set calculable here*)
    as exp
    -> exp, env.id, env_append_assignment exp env

    | CallCls _
    | FStore _
    | Print _
    | Store _
    | IntRead
    | FloatRead
    as exp
    (*has side effect*)
    -> exp, env.id, env_append_assignment exp {env with calculable = false}

    | IfEQ (_, _, exp1, exp2)
    | FIfEQ (_, _, exp1, exp2)
    | IfLT (_, _, exp1, exp2)
    | FIfLT (_, _, exp1, exp2)
    as exp
    -> let body_true, body_false, env_new = env_append_branch exp exp1 exp2 env
    in
    (match exp with
    | IfEQ (t1, t2, _, _) -> IfEQ(t1, t2, body_true, body_false)
    | FIfEQ (t1, t2, _, _) -> FIfEQ(t1, t2, body_true, body_false)
    | IfLT (t1, t2, _, _ ) -> IfLT(t1, t2, body_true, body_false)
    | FIfLT (t1, t2, _, _) -> FIfLT(t1, t2, body_true, body_false)
    | _ -> assert false
    ), env.id, env_new
and
env_append_branch e exp1 exp2 env =
    let branch_command = Branch(e, env.id)
    in
    let env = env_new_command branch_command env
    in
    let branch_block_id, env = env_append_block_force [branch_command]  env
    in
    let body_true, env_true = gen_graph {env with last_blocks = []} exp1
    in
    let body_false, env_false = gen_graph {env_true with last_blocks = []; dest = env.dest} exp2
    in
    let graph = graph_add_edge branch_block_id env_true.first_block_id  env.graph
    in
    let graph = graph_add_edge branch_block_id env_false.first_block_id graph
    in
    (*update graph*)
        body_true, body_false,
        {env_false with
            last_blocks = env_true.last_blocks @ env_false.last_blocks;
            graph = graph
    }

let graph_fold_edge f graph init =
    IntMap.fold (fun u ->
        IntSet.fold (fun v value' ->
            f (u, v) value'
        )
    )
    graph
    init

let command_get_id = function
    Assignment (_, _, id)
    | Alias(_, _, id)
    | Entry (_, id)
    | Branch (_, id) -> id

let effect_commands (command_list, _) =
    let define_map =
        List.fold_left (fun map command ->
            S1.fold (fun dest map ->
                M2.add dest command map
            )
            (command_dest command)
            map
        )
        M2.empty
        command_list
    in
        M2.fold (fun key value set -> IntSet.add (command_get_id value) set) define_map IntSet.empty

let empty_block_map env = IntMap.map (fun _ -> IntSet.empty) env.block_map

let find_def env =
    let def =
    IntMap.fold (fun u neighbors ->
        IntMap.add u @@ effect_commands @@ IntMap.find u @@ env.block_map
    )
    env.graph
    (empty_block_map env)
    in
    (*IntMap.iter (fun i set -> IntSet.iter (Printf.printf "%d -> %d\n" i) set) env.graph;*)
    (*IntMap.iter (fun i _ -> Printf.printf "%d\n" i) env.block_map;*)
    def

let graph_rev graph =
    graph_fold_edge (fun (u, v) rev_graph ->
        let rev_graph =
            if not (IntMap.mem u rev_graph) then IntMap.add u IntSet.empty rev_graph
            else
                rev_graph
        in
        let current_v_innode = try IntMap.find v rev_graph with Not_found -> IntSet.empty
        in
            IntMap.add v (IntSet.add u current_v_innode) rev_graph
    )
    graph
    IntMap.empty

let find_kill def env =
    let rev_graph = graph_rev env.graph
    in
    graph_fold_edge (fun (u, v) kill ->
        let current_kill = IntMap.find u kill
        in
        let sibling = IntMap.find v rev_graph
        in
        let sibling_notme = IntSet.remove u sibling
        in
        let my_def = IntMap.find u def
        in
        let my_def_var = IntSet.fold (fun command_id ->
            S1.union @@ command_dest @@ IntMap.find command_id env.command_map
            ) my_def S1.empty
        in
        let append_kill = IntSet.fold (fun sibling_id append_kill ->
            let sibling_def_command_ids = IntMap.find sibling_id def
            in
            let to_kill = IntSet.filter (fun command_id ->
                let command = IntMap.find command_id env.command_map
                in
                let def_vars = command_dest command
                in
                    not (S1.is_empty def_vars) && S1.subset def_vars my_def_var
                ) sibling_def_command_ids
            in
                IntSet.union to_kill append_kill
            )
            sibling_notme
            IntSet.empty
        in
        let new_kill = IntSet.union current_kill append_kill
        in
            IntMap.add u new_kill kill
    )
    env.graph
    (empty_block_map env)

let rec find_inout_loop rev_graph def kill env inset outset =
    let f block_id command_set =
        IntSet.union (IntMap.find block_id def) @@ IntSet.diff command_set @@ IntMap.find block_id kill
    in
    let outset, found =
        IntMap.fold (fun block_id old_out (outset, found) ->
            let in_p = IntMap.find block_id inset
            in
            let new_out = f block_id in_p
            in
                if IntSet.compare old_out new_out = 0 then
                    outset, found
                else
                    IntMap.add block_id new_out outset, true
        )
        outset
        (outset, false)
    in
        let inset, found =
        IntMap.fold (fun block_id old_in (inset, found) ->
            let in_nodes = try IntMap.find block_id rev_graph with Not_found -> IntSet.empty
            in
            let new_in = IntSet.fold (fun x -> IntSet.union @@ IntMap.find x outset) in_nodes IntSet.empty
            in
            if IntSet.compare new_in old_in = 0 then
                inset, found
            else
                IntMap.add block_id new_in inset, true

        )
        inset
        (inset, found)
    in
        if found then
            find_inout_loop rev_graph def kill env inset outset
        else
            inset, outset

let find_inout def kill env =
    let entry_block_id = 0
    in
    let empty_map = empty_block_map env
    in
    let inset = empty_map |> IntMap.add entry_block_id @@ IntMap.find entry_block_id def
    in
    let outset = empty_map
    in
    find_inout_loop (graph_rev env.graph) def kill env inset outset


let find_reach inset env =
    IntMap.fold (fun block_id (command_list, _) reach ->
        let reach, _ =
                (*Printf.printf "trang %d\n" (List.length command_list);*)
            (*for each block*)
            List.fold_left (fun (reach, last_def_command_id) command ->
                let command_id = command_get_id command
                in
                let used_vars = command_source command
                in
                (*Printf.printf "used_vars of command id %d block id %d\n" command_id block_id;*)
                (*S1.iter (fun x -> Printf.printf "%s, " @@ Operand.to_string x) used_vars; Printf.printf "\n";*)
                    (*M2.iter (fun var id -> Printf.printf "%s -> %d\n" (Operand.to_string var) id) last_def_command_id;*)
                    S1.fold (fun var reach ->
                        let reach_set =
                            try
                                (*var is defined in some commands same block*)
                                (*Printf.printf "xxx %s\n" @@ Operand.to_string var;*)
                                IntSet.singleton (M2.find var last_def_command_id)
                            with Not_found ->
                                (*find from reach[block_id] i.e. inset[block_id]*)
                                (*IntSet.iter (Printf.printf "masdfasdf %d\n") (IntMap.find block_id inset);*)
                                IntSet.filter (fun def_command_id_outside ->
                                    S1.mem var @@ command_dest @@ IntMap.find def_command_id_outside env.command_map
                                )
                                (IntMap.find block_id inset)
                        in
                        M3.add (command_id, var) reach_set reach
                    )
                    used_vars
                    (*for each command in block*)
                    (*find reach[command_id, used_var]*)
                    reach,

                    S1.fold (fun def_var last_def_command_id ->
                        M2.add def_var command_id last_def_command_id
                    )
                    (command_dest command)
                    last_def_command_id
            )
            (reach, M2.empty)
            command_list
        in
            reach
    )
    env.block_map
    M3.empty

    (*note: use set does not contain all command ids*)
let find_use reach env =
    let use =
        M3.fold (fun (command_id, _) def_command_set use ->
            (*
             * def_command_set defines _ that is used in command_id
             *)
            IntSet.fold (fun def_command_id use ->
                let old_use = try IntMap.find def_command_id use with Not_found -> IntSet.empty
                in
                let new_use = IntSet.add command_id old_use
                in
                    IntMap.add def_command_id new_use use
            )
            def_command_set
            use
        )
        reach
        IntMap.empty
    in
    (*IntSet.iter (Printf.printf "-->%d\n") (IntMap.find 2 use);*)
    use

type const =
    | Unit
    | CInt of int
    | CFloat of float

let to_string_const = function
    | Unit -> "Unit"
    | CInt i -> Printf.sprintf "CInt %d" i
    | CFloat f -> Printf.sprintf "CFloat %.5f" f

    (*int map of int param by param order;
     *int map of float param by param order;
     -> point to caculated value
     *)
module ArgMap = Map.Make (struct
    type t = const IntMap.t * const IntMap.t
    let compare = Pervasives.compare
end
)
type const_env = {
    (*const mapping for current evaluating expression*)
    const_map: const M2.t;
    const_commands: (Operand.t * const) IntMap.t;
    use_const:  const M2.t IntMap.t;
    worklist: (Operand.t * const) IntMap.t;
    call_stack: string list;
    args: const M2.t option;
    (*label name -> Argmap of const*)
    calculated: const option ArgMap.t StringMap.t;
}

let rec get_const_exp const_env env = function
    | Nop
    -> Some Unit, const_env

    | MoveImm (Loc.Constant c)
    -> Some (CInt c), const_env

    | Int i
        -> Some (CInt i), const_env
    | Float f ->
            Some (CFloat f), const_env

    | Add (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        ->(
            match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x + y))
            | _ -> None
        ), const_env
    (*| Add (op1, op2) ->*)
            (*Printf.printf "const_map \n";*)
            (*M2.iter (fun op v ->*)
                (*Printf.printf "const %s\n" @@ Operand.to_string op*)
            (* )*)
            (*const_env.const_map;*)
            (*Printf.printf "%s + %s\n" (Operand.to_string op1) @@ Operand.to_string op2;*)
            (*None*)
    | ShiftLeft (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x lsl y))
            | _ -> None
        ), const_env
    | ShiftRight (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x lsr y))
            | _ -> None
        ), const_env
    | Div (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x / y))
            | _ -> None
        ), const_env
    | Mul (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x * y))
            | _ -> None
        ), const_env
    | Sub (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x - y))
            | _ -> None
        ), const_env
    | Addi (op1, Loc.Constant c) when M2.mem op1 const_env.const_map
        -> (match M2.find op1 const_env.const_map with
            CInt op -> Some (CInt (op + c))
            | _ -> None
        ), const_env
    | Four op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CInt i -> Some (CInt (i * 4 ))
            | _ -> None
        ), const_env
    | Half op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CInt i -> Some (CInt (i / 2))
            | _ -> None
        ), const_env
    | Neg op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CInt i -> Some (CInt (-i ))
            | _ -> None
        ), const_env
    | FNeg op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CFloat i -> Some (CFloat (-. i ))
            | _ -> None
        ), const_env
    | FAbs op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CFloat i -> Some (CFloat (Pervasives.abs_float i ))
            | _ -> None
        ), const_env
    | FAdd (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CFloat x, CFloat y -> Some (CFloat (x +. y))
    | _ -> None
        ), const_env
    | FSub (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CFloat x, CFloat y -> Some (CFloat (x -. y))
            | _ -> None
        ), const_env
    | FMul (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CFloat x, CFloat y -> Some (CFloat (x *. y))
            | _ -> None
        ), const_env
    | FDiv (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CFloat x, CFloat y -> Some (CFloat (x /. y))
            | _ -> None
        ), const_env
    | Move op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CInt i -> Some (CInt (i ))
            | _ -> None
        ), const_env
    | FMove op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CFloat i -> Some (CFloat (i ))
            | _ -> None
        ), const_env

    | CallDir (label, _, [op]) when M2.mem op const_env.const_map && label = "min_caml_cos"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.cos f))
        | _ -> None
    ), const_env
    | CallDir (label, _, [op]) when M2.mem op const_env.const_map && label = "min_caml_sin"
    ->
        (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.sin f))
        | _ -> None
    ), const_env
    | CallDir (label, _, [op]) when M2.mem op const_env.const_map && label = "min_caml_sqrt"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.sqrt f))
        | _ -> None
    ), const_env
    | CallDir (label, _, [op]) when M2.mem op const_env.const_map && label = "min_caml_atan"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.atan f))
        | _ -> None
    ), const_env
    | CallDir (label, _, [op]) when M2.mem op const_env.const_map && label = "min_caml_floor"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.floor f))
        | _ -> None
    ), const_env
    | CallDir (label, _, [op]) when M2.mem op const_env.const_map && label = "min_caml_int_of_float"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CInt ( Pervasives.int_of_float f))
        | _ -> None
    ), const_env
    | CallDir (label, [op], _) when M2.mem op const_env.const_map && label = "min_caml_float_of_int"
    -> (match M2.find op const_env.const_map with
        CInt i -> Some (CFloat ( Pervasives.float_of_int i))
        | _ -> None
    ), const_env
    | CallDir (label, op_list1, op_list2) when not (List.mem label const_env.call_stack) && (StringMap.mem label env.fun_by_name) && (List.length const_env.call_stack < (!call_stack_threshold) || !call_stack_threshold < 0)
    ->
    (*external fun*)
    let const_args_binder =
        List.fold_left (fun (const_args, no) op ->
            (
                try
                    IntMap.add no (M2.find op const_env.const_map) const_args
                with Not_found -> const_args
            ), no + 1
        )
        (IntMap.empty, 0)
    in
    let int_const_args, _ =
        const_args_binder op_list1
    in
    let float_const_args, _ =
        const_args_binder op_list2
    in
    (
    try
        ArgMap.find (int_const_args, float_const_args) @@ StringMap.find label const_env.calculated, const_env
    with Not_found ->
        (*note: check what const_fold change in const_env*)
        (*const_fold create completedly new const_env. Keep only calculated*)
    let _, const_env', env = const_fold env.tmp (StringMap.find label env.fun_by_name) env.fun_by_name
        (Some (int_const_args, float_const_args))
        (const_env.call_stack @ [label])
        env.no_side_effect_defs
        const_env.calculated
    in
    let value =
        if env.calculable then
            let ret_assignments = env.ret_assignments
            in
            try
                let any = IntSet.choose ret_assignments
                in
                Printf.printf "any from %s %d\n" label any;
                List.iter (Printf.printf "%s\n") const_env.call_stack;
                let _, const = IntMap.find any const_env'.const_commands
                in
                (*check if there is any diff*)
                if IntSet.exists (fun command_id ->
                        try
                            let _, c = IntMap.find command_id const_env'.const_commands
                            in
                                c != const
                        with Not_found -> true
                    )
                    ret_assignments
                then
                    None
                else
                    Some const
            with Not_found ->
                None
        else
            None
    in
    let current_arg_map = try StringMap.find label const_env'.calculated
        with Not_found -> ArgMap.empty
    in
    let current_arg_map = ArgMap.add (int_const_args, float_const_args) value current_arg_map
    in
    let calculated = StringMap.add label current_arg_map const_env'.calculated
    in
    let const_env = {const_env with calculated = calculated}
    in
        value, const_env
    )

    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | Four _
    | Half _
    | Neg _
    | FNeg _
    | FAbs _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | Move _
    | FMove _

    | Print _
    | FStore _
    | Store _
    | Addi _
    | Load _
    | FLoad _

    | MoveImm _
    | IntRead
    | FloatRead
    | IfEQ _
    | FIfEQ _
    | IfLT _
    | FIfLT _
    | CallCls _
    | CallDir _
    -> None, const_env

and
init_worklist const_env env =
    let const_env =
        IntMap.fold (fun command_id command const_env -> match command with
            Assignment (op, exp, _) ->(match get_const_exp const_env env exp with
                None, const_env -> const_env
                | Some const, const_env ->
                        let const_commands =
                            IntMap.add command_id (op, const) const_env.const_commands
                        in {const_env with
                            const_commands = const_commands
                        }
            )
            | Alias _
            | Branch _
            -> const_env
            | Entry (op, _) -> match const_env.args with
                None -> const_env
                | Some args_map -> try
                    let value = M2.find op args_map
                    in
                    {const_env with
                        const_commands = IntMap.add command_id (op, value) const_env.const_commands
                    }
                with Not_found -> const_env
        )
        env.command_map
        const_env
    in {const_env with
        worklist = const_env.const_commands
    }

and
find_const_commands_loop const_env use reach env =
    if IntMap.is_empty const_env.worklist then const_env
    else
        let const_env =
            (*select any command from worklist*)
            let s, (x, value) = IntMap.choose const_env.worklist
            in
                Printf.printf "select from work list: ";
                Printf.printf "Command no %d of operand %s with value = %s\n" s (Operand.to_string x) (to_string_const value);
                (*IntSet.iter (Printf.printf "%d\n") (try IntMap.find s use with Not_found -> IntSet.empty);*)
                (*M3.iter (fun (op, id) set -> Printf.printf "%s %d\n" (Operand.to_string id) op) reach;*)
                (*Printf.printf "%s debug use for %d\n" env.funname s;*)
                (*IntMap.iter (fun s set -> Printf.printf "use of %d: " s; IntSet.iter (Printf.printf "%d, ") set; Printf.printf "\n") use;*)

                IntSet.fold (fun t const_env ->
                    Printf.printf "Command no %d uses %d's result \n" t s;
                    (*check if all other positions also leave same value*)
                    if IntSet.exists (fun sibling_id ->
                        try
                            let _, sibling_value =
                                IntMap.find sibling_id const_env.const_commands
                            in
                                sibling_value != value
                        with Not_found -> true
                    )
                    (try
                        (*list all positions that give command t of x's variable*)
                        M3.find (t, x) reach
                    with Not_found ->
                        Printf.printf "Algorithm logic error: not found any reach command to command_id %d for variable %s\n" t (Operand.to_string x);
                        List.iter (Printf.printf "%s\n") const_env.call_stack;
                        assert false;
                        )
                    then
                        (
                        Printf.printf "There are some position that give %d command different value of %s\n" t (Operand.to_string x);
                        const_env
                        )
                    else
                        let _ = Printf.printf "%d command gets %s variable as constant\n" t (Operand.to_string x)
                        in
                        let use_in_t = try IntMap.find t const_env.use_const with Not_found -> M2.empty
                        in
                        let use_in_t = M2.add x value use_in_t
                        in
                        let const_env = {const_env with
                            use_const = IntMap.add t use_in_t const_env.use_const;
                            const_map = use_in_t;
                        }
                        in
                        match IntMap.find t env.command_map with
                            Assignment (op, exp, _) ->
                        (*Printf.printf "hello %d\n" t;*)
                        (*M2.iter (fun op _ -> Printf.printf "op %s\n" @@ Operand.to_string op) use_in_t;*)
                                (match get_const_exp const_env env exp with
                                None, const_env -> const_env
                                | Some const, const_env ->
                                        Printf.printf "operand %s in command %d got evaluated as %s\n" (Operand.to_string op) t (to_string_const const);
                                        let const_commands =
                                            IntMap.add t (op, const) const_env.const_commands
                                        in {const_env with
                                            const_commands = const_commands;
                                            worklist = IntMap.add t (op, const) const_env.worklist
                                        }
                            )
                            | Alias _
                            | Branch _
                            | Entry _
                            -> const_env
                )
                (*iterate all places where s is used*)
                (try IntMap.find s use with Not_found -> IntSet.empty)
                {const_env with
                    worklist = IntMap.remove s const_env.worklist
                }
        in
            find_const_commands_loop const_env use reach env

and
find_const_commands use reach env arg_opt call_stack calculated=
    let const_env = {
        const_map = M2.empty;
        const_commands = IntMap.empty;
        worklist = IntMap.empty;
        use_const = IntMap.empty;
        call_stack = call_stack;
        args = arg_opt;
        calculated = calculated;
    }
    in
    let const_env = init_worklist const_env env
    in
        find_const_commands_loop const_env use reach env

and
const_fold tmp {name = name; args = int_args; fargs = float_args; body = body; ret = ret_type; info = info} fun_by_name args_opt_by_no call_stack no_side_effect_defs calculated =
        Printf.printf "const_folding closure %s\n" name;
        Printf.printf "Paramter list:\n";
        List.iter (fun x -> Printf.printf "%s\n" (Operand.to_string x)) int_args;
        Printf.printf "\n";
        (
        match args_opt_by_no with
            Some (int_args, float_args) ->
                Printf.printf "int param list:\n";
                IntMap.iter (fun no v -> Printf.printf "%d -> %s\n" no (to_string_const v)) int_args;
                Printf.printf "\n";
                Printf.printf "float param list:\n";
                IntMap.iter (fun no v -> Printf.printf "%d -> %s\n" no (to_string_const v)) float_args;
                Printf.printf "\n";
            | None -> ()
        );
    (*fidn dest*)
    let dest = match ret_type with Type.Float _ -> Operand.Reg Reg.freg_ret | _ -> Operand.Reg Reg.reg_ret
    in
    (*convention:
        * block id 0: parameter setup (if exists)
        * block id1: entry block
        *)
    (*entry block link to first block (id = env.after_entry_block_id) *)
    let env = {
        after_entry_block_id = -1;
        first_block_id = -1;
        calculable = true;
        tail = true;
        id = 0;
        dest = dest;
        funname = name;
        int_params = int_args;
        float_params = float_args;
        graph = IntMap.empty;
        last_blocks = [];
        block_map = IntMap.empty;
        tmp = tmp;
        command_map = IntMap.empty;
        ret_assignments = IntSet.empty;
        fun_by_name = fun_by_name;
        no_side_effect_defs = no_side_effect_defs;
    }
    in
    let entry_block_id = env.id
    in
    (*fixed: here, fold_left must be used, not fold_right because of the env.id generator order for command*)
    (*update entry block: parameter setup*)
    let env, entry_block = List.fold_left (fun (env, entry_block) arg ->
        let new_command = Entry (arg, env.id)
        in
        let env = env_new_command new_command env
        in
            env, entry_block @ [new_command]

        )
        (env, [])
        (int_args @ float_args)
    in
    let env = env_new_block (entry_block, entry_block_id) env
    in
    let body, env = gen_graph env body
    in
    let env = {env with
        graph = graph_add_edge entry_block_id env.first_block_id env.graph
    }
    in
    let def = find_def env
    in
    let kill = find_kill def env
    in
    let inset, _ = find_inout def kill env
    in
    let reach = find_reach inset env
    in
    (*Printf.printf "debug reach for fun %s\n" name;*)
    (*M3.iter (fun (cmd, op) set ->*)
        (*Printf.printf "cmd no %d operand %s\n" cmd (Operand.to_string op);*)
        (*IntSet.iter (Printf.printf "%d, ") set;*)
        (*Printf.printf "\n"*)
    (* )*)
    (*reach;*)
    let use = find_use reach env
    in
    let args_opt =
        (*the order is not by original order, but follow by M2.t's order*)
        match args_opt_by_no with
            | None -> None
            | Some (int_const_args, float_const_args) ->
                    let m, _ = List.fold_left (fun (map, no) int_op ->
                            (
                            try
                                M2.add int_op (IntMap.find no int_const_args) map
                            with Not_found -> map
                            ), no + 1
                        )
                        (M2.empty, 0)
                        int_args
                    in
                    let m, _ = List.fold_left (fun (map, no) int_op ->
                            (
                            try
                                M2.add int_op (IntMap.find no float_const_args) map
                            with Not_found -> map
                            ), no + 1
                        )
                        (m, 0)
                        float_args
                    in
                    (*M2.iter (fun op va -> Printf.printf "const for arg const_fold %s\n" @@ Operand.to_string op) m;*)
                    Some m
    in
    let const_env = find_const_commands use reach env args_opt call_stack calculated
    in
        body, const_env, env

let const_to_exp data info = function
    Unit -> data, Asm.Nop
    | CInt i ->
          if Pervasives.abs i < (1 lsl (Asm.imm_length - 1)) then
              data, Asm.MoveImm(Loc.Constant i)
          else
          let data, label =
            try
              (* すでに定数テーブルにあったら再利用 *)
              let (l, _) = List.find (fun (_, i') -> i = i') data.idata in
              data, fst l
            with Not_found ->
              let l = Id.genlabel info in
              {data with idata = (l, i) :: data.idata},
              fst l
          in
            data, Asm.Load(Asm.Absolute (Loc.Label label, None))
    | CFloat f ->
          let data, label =
            try
              (* すでに定数テーブルにあったら再利用 *)
              let (l, _) = List.find (fun (_, f') -> f = f') data.fdata in
              data, fst l
            with Not_found ->
              let l = Id.genlabel info  in
              {data with fdata = (l, f) :: data.fdata},
              fst l
          in
            data, Asm.FLoad(Asm.Absolute (Loc.Label label, None))
let rec convert_def_loop const_env data  = function
    | Ans (exp, id, info) when IntMap.mem id const_env.const_commands ->
            let _, const = IntMap.find id const_env.const_commands
            in
            let data, exp = const_to_exp data info const
            in
                data, Asm.Ans(exp, info)
    | Let ((op, op_typ), exp, id, body, info) when IntMap.mem id const_env.const_commands ->
            let _, const = IntMap.find id const_env.const_commands
            in
            let data, exp = const_to_exp data info const
            in
            let data, body = convert_def_loop const_env data body
            in
                data, Asm.Let((op, op_typ), exp, body, info)
    | Ans(exp, id, info) ->
            let data, exp = convert_def_loop_exp const_env data exp
            in
                data, Asm.Ans(exp, info)
    | Let ((op, op_typ), exp, id, body, info) ->
            let data, exp = convert_def_loop_exp const_env data exp
            in
            let data, body = convert_def_loop const_env data body
            in
                data, Asm.Let((op, op_typ), exp, body, info)
and
convert_def_loop_exp const_env data = function
    | Nop -> data, Asm.Nop
    | Int _ | Float _ -> failwith "wrong compiler flow. Int and float must be const folded before"
    | IntRead -> data, Asm.IntRead
    | FloatRead -> data, Asm.FloatRead
    | Add (op1, op2) -> data, Asm.Add (op1, op2)
    | ShiftLeft (op1, op2) -> data, Asm.ShiftLeft (op1, op2)
    | ShiftRight (op1, op2) -> data, Asm.ShiftRight (op1, op2)
    | Div (op1, op2) -> data, Asm.Div (op1, op2)
    | Mul (op1, op2) -> data, Asm.Mul (op1, op2)
    | Sub (op1, op2) -> data, Asm.Sub (op1, op2)
    | Addi (op1, loc) -> data, Asm.Addi (op1, loc)
    | Four op -> data, Asm.Four op
    | Half op -> data, Asm.Half op
    | Load addr -> data, Asm.Load (convert_def_loop_addr addr)
    | Store (op, add) -> data, Asm.Store (op, convert_def_loop_addr add)
    | Neg op -> data, Asm.Neg op
    | FNeg op -> data, Asm.FNeg op
    | FAbs op -> data, Asm.FAbs op
    | Print op -> data, Asm.Print op
    | FAdd (op1, op2) -> data, Asm.FAdd (op1, op2)
    | FSub (op1, op2) -> data, Asm.FSub (op1, op2)
    | FMul (op1, op2) -> data, Asm.FMul (op1, op2)
    | FDiv (op1, op2) -> data, Asm.FDiv (op1, op2)
    | FLoad addr -> data, Asm.FLoad (convert_def_loop_addr addr)
    | FStore (op, add) -> data, Asm.FStore (op, convert_def_loop_addr add)


    | MoveImm loc -> data, Asm.MoveImm loc
    | Move op -> data, Asm.Move op
    | FMove op -> data, Asm.FMove op

    | IfEQ (op1, op2, exp1, exp2) ->
            convert_def_loop_branch const_env data exp1 exp2 (fun data body1 body2 ->
                data, Asm.IfEQ (op1, op2, body1, body2)
            )
    | FIfEQ (op1, op2, exp1, exp2) ->
        convert_def_loop_branch const_env data exp1 exp2 (fun data body1 body2 ->
            data, Asm.FIfEQ (op1, op2, body1, body2)
        )
    | IfLT (op1, op2, exp1, exp2) ->
        convert_def_loop_branch const_env data exp1 exp2 (fun data body1 body2 ->
            data, Asm.IfLT (op1, op2, body1, body2)
        )
    | FIfLT (op1, op2, exp1, exp2) ->
        convert_def_loop_branch const_env data exp1 exp2 (fun data body1 body2 ->
            data, Asm.FIfLT (op1, op2, body1, body2)
        )
    | CallCls (op, op_list1, op_list2) -> data, Asm.CallCls (op, op_list1, op_list2)
    | CallDir (label, op_list1, op_list2) -> data, Asm.CallDir (label, op_list1, op_list2)
and
convert_def_loop_addr = function
    (*relative address from a reg*)
    Relative (t, loc) -> Asm.Relative(t, loc)
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
    | Dynamic (op1, size, op2) -> Asm.Dynamic (op1, size, op2)
    | Absolute (loc, loc_opt) -> Asm.Absolute (loc, loc_opt)
and
convert_def_loop_branch const_env data exp1 exp2 f =
    let data, body1 = convert_def_loop const_env data exp1
    in
    let data, body2 = convert_def_loop const_env data exp2
    in
        f data body1 body2

let convert_def tmp fun_by_name data fundef no_side_effect_defs =
    let body, const_env, env = const_fold tmp fundef fun_by_name None [] no_side_effect_defs StringMap.empty
    in convert_def_loop const_env data body

let get_info = function
  | Ans (_, _, info)
  | Let (_, _, _, _, info) -> info

let generate tmp data fun_by_name body no_side_effect_defs =
    let info = get_info body
    in
    let fundef =
        {name = "min_caml_start"; args = []; fargs = []; body = body; ret = Type.Unit info; info = info}
    in
        convert_def tmp fun_by_name data fundef no_side_effect_defs

let rec gen_no_side_effect_defs fundefs set =
    let set, found, left =
        List.fold_left (fun (set, found, left) def ->
            if has_side_effect set def.body then set, found, def::left
            else
                StringSet.add def.name set, true, left
        )
        (set, false, [])
        fundefs
    in
    if found then gen_no_side_effect_defs left set
    else
        set

let gen_fundefs tmp fundefs =
    let fun_by_name = List.fold_left (fun map fundef -> StringMap.add (fundef.name) fundef map) StringMap.empty fundefs
    in
    let no_side_effect_defs = gen_no_side_effect_defs fundefs StringSet.empty
    in
    no_side_effect_defs,
    fun_by_name, List.fold_right (fun fundef (data, ret) ->
        let data, converted_def =  convert_def tmp fun_by_name data fundef no_side_effect_defs
        in
        let fundef = { Asm.name = fundef.name; args = fundef.args; fargs = fundef.fargs; body = converted_def; ret = fundef.ret ; info = fundef.info}
        in
            data, (fundef :: ret)
    )
    fundefs
    ({
        idata = [];
        fdata = [];
    }, [])

let f out (fundefs, e) =
    let tmp = Operand.ID (Id.genid ("dfa_tmp", get_info e))
    in
    let no_side_effect_defs, fun_by_name, (data, fundefs) = gen_fundefs tmp fundefs
    in
    let data, e = generate tmp data fun_by_name  e no_side_effect_defs
    in
    let prog = Asm.Prog(data.idata, data.fdata, fundefs, e)
    in
        Asm.print_all out prog;
        prog

let rec to_string_pre pre e =
    let npre = pre ^ "  "
    in
    match e with
  | Ans (exp, t, info) -> Printf.sprintf "%s%d:Ans of \t#%s\n%s" pre t (Info.to_string info) (exp_to_string_pre npre exp)
  | Let ((operand, operand_type), exp, id, t, info) ->
          Printf.sprintf "%s%d: LET %s\t%s\n%s\n%s=\n%s\n%sIN\n%s" pre id (Operand.to_string operand) (Info.to_string info) (Type.to_string_pre npre operand_type)
            pre (exp_to_string_pre npre exp) pre (to_string_pre npre t)
and
to_string exp =
    to_string_pre "" exp
and
exp_to_string_pre pre exp =
    let npre = pre ^ Common.indent
    in
    match exp with
    | Nop -> "Nop"
    | IntRead -> "IntRead"
    | FloatRead -> "FloatRead"
    | Int i -> Printf.sprintf "%sInt %d" pre i
    | Float i -> Printf.sprintf "%sInt %.5f" pre i
    | Add (op1, op2) -> Printf.sprintf "%sAdd %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | ShiftLeft (op1, op2) -> Printf.sprintf "%sShiftLeft %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | ShiftRight (op1, op2) -> Printf.sprintf "%sShiftRight %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | Div (op1, op2) -> Printf.sprintf "%sDiv %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | Mul (op1, op2) -> Printf.sprintf "%sMul %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | Sub (op1, op2) -> Printf.sprintf "%sSub %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | Addi (op1, loc) -> Printf.sprintf "%sAddi %s, %s" pre (Operand.to_string op1) (Loc.to_string loc)
    | Four op -> Printf.sprintf "%sFour %s" pre (Operand.to_string op)
    | Half op -> Printf.sprintf "%sHalf %s" pre (Operand.to_string op)
    | Load addr -> Printf.sprintf "%sLoad %s" pre (addr_to_string addr)
    | Store (op, add) -> Printf.sprintf "%sStore %s, %s" pre (Operand.to_string op) (addr_to_string add)
    | Neg op -> Printf.sprintf "%sNeg %s" pre (Operand.to_string op)
    | FNeg op -> Printf.sprintf "%sFNeg %s" pre (Operand.to_string op)
    | FAbs op -> Printf.sprintf "%sFAbs %s" pre (Operand.to_string op)
    | Print op -> Printf.sprintf "%sPrint %s" pre (Operand.to_string op)
    | FAdd (op1, op2) -> Printf.sprintf "%sFAdd %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | FSub (op1, op2) -> Printf.sprintf "%sFSub %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | FMul (op1, op2) -> Printf.sprintf "%sFMul %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | FDiv (op1, op2) -> Printf.sprintf "%sFDiv %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | FLoad addr -> Printf.sprintf "%sFLoat %s" pre (addr_to_string addr)
    | FStore (op, add) -> Printf.sprintf "%sFStore %s, %s" pre (Operand.to_string op) (addr_to_string add)


    | MoveImm loc -> Printf.sprintf "%sMoveImm %s" pre (Loc.to_string loc)
    | Move op -> Printf.sprintf "%sMove %s" pre (Operand.to_string op)
    | FMove op -> Printf.sprintf "%sFMove %s" pre (Operand.to_string op)

    | IfEQ (op1, op2, exp1, exp2) -> Printf.sprintf "%sIfEQ %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre npre exp1) (to_string_pre npre exp2)
    | FIfEQ (op1, op2, exp1, exp2) -> Printf.sprintf "%sFIfEQ %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre npre exp1) (to_string_pre npre exp2)
    | IfLT (op1, op2, exp1, exp2) -> Printf.sprintf "%sIfLT %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre npre exp1) (to_string_pre npre exp2)
    | FIfLT (op1, op2, exp1, exp2) -> Printf.sprintf "%sFIfLT %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre npre exp1) (to_string_pre npre exp2)
    | CallCls (op, op_list1, op_list2) -> Printf.sprintf "%sCallCls %s%s%s" pre (Operand.to_string op) (op_list_to_string op_list1 npre) (op_list_to_string op_list2 npre)
    | CallDir (label, op_list1, op_list2) -> Printf.sprintf "%sCallDir %s%s%s" pre label (op_list_to_string op_list1 npre) (op_list_to_string op_list2 npre)
and
op_list_to_string ll pre = List.fold_left
    (fun current op  -> Printf.sprintf "\n%s%s" pre (Operand.to_string op))
    ""
    ll
and
addr_to_string = function
    | Relative (op, loc) -> Printf.sprintf "Relative %s(%s)" (Loc.to_string loc) (Operand.to_string op)
    | Dynamic (op1, size4, op2) -> Printf.sprintf "Dynamic (%s * %d)(%s)" (Operand.to_string op2) size4 (Operand.to_string op1)
    | Absolute (loc1, Some loc2) -> Printf.sprintf "Absolute %s + %s" (Loc.to_string loc1) (Loc.to_string loc2)
    | Absolute(loc, None) -> Printf.sprintf "Absolute %s" (Loc.to_string loc)

let print_all out (fundefs, body )=
      Printf.fprintf out "main:\n%s\n" @@ to_string body;
      List.iter (fun fundef ->
          Printf.fprintf out "closure %s\n" fundef.name ;
          Printf.fprintf out "int args:\n";
          List.iter (fun x->Printf.fprintf out "%s, " @@ Operand.to_string x) fundef.args;
          Printf.fprintf out "\n";
          Printf.fprintf out "float args:\n";
          List.iter (fun x->Printf.fprintf out "%s, " @@ Operand.to_string x) fundef.fargs;
          Printf.fprintf out "\n";
          Printf.fprintf out "closure body\n";
          Printf.fprintf out "%s\n" @@ to_string fundef.body
      ) fundefs;
