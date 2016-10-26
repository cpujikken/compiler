type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* クロージャ変換後の式 (caml2html: closure_t) *)
  | Unit of Info.t
  | Int of int * Info.t
  | Float of float * Info.t
  | Neg of Id.t * Info.t
  | Add of Id.t * Id.t * Info.t
  | Sub of Id.t * Id.t * Info.t
  | FNeg of Id.t * Info.t
  | FAdd of Id.t * Id.t * Info.t
  | FSub of Id.t * Id.t * Info.t
  | FMul of Id.t * Id.t * Info.t
  | FDiv of Id.t * Id.t * Info.t
  | IfEq of Id.t * Id.t * t * t * Info.t
  | IfLE of Id.t * Id.t * t * t * Info.t
  | Let of (Id.t * Type.t) * t * t * Info.t
  | Var of Id.t * Info.t
  | MakeCls of (Id.t * Type.t) * closure * t * Info.t
  | AppCls of Id.t * Id.t list * Info.t
  | AppDir of Id.l * Id.t list * Info.t
  | Tuple of Id.t list * Info.t
  | LetTuple of (Id.t * Type.t) list * Id.t * t * Info.t
  | Get of Id.t * Id.t * Info.t
  | Put of Id.t * Id.t * Id.t * Info.t
  | ExtArray of Id.l * Info.t
type fundef = { name : Id.l * Type.t;
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list;
		body : t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit _ | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x, info) | FNeg(x, info) -> S.singleton x
  | Add(x, y, info) | Sub(x, y, info) | FAdd(x, y, info) | FSub(x, y, info) | FMul(x, y, info) | FDiv(x, y, info) | Get(x, y, info) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2, info)| IfLE(x, y, e1, e2, info) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, info) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, info) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e, info) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys, info) -> S.of_list (x :: ys)
  | AppDir(_, xs, info) | Tuple(xs, info) -> S.of_list xs
  | LetTuple(xts, y, e, info) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z, info) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

(*
 * convert KNormal.t to Closure.t
 *)
let rec g env known = function (* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
  | KNormal.Unit info -> Unit info
  | KNormal.Int(i, info) -> Int(i, info)
  | KNormal.Float(d, info) -> Float(d, info)
  | KNormal.Neg(x, info) -> Neg(x, info)
  | KNormal.Add(x, y, info) -> Add(x, y, info)
  | KNormal.Sub(x, y, info) -> Sub(x, y, info)
  | KNormal.FNeg(x, info) -> FNeg(x, info)
  | KNormal.FAdd(x, y, info) -> FAdd(x, y, info)
  | KNormal.FSub(x, y, info) -> FSub(x, y, info)
  | KNormal.FMul(x, y, info) -> FMul(x, y, info)
  | KNormal.FDiv(x, y, info) -> FDiv(x, y, info)
  | KNormal.IfEq(x, y, e1, e2, info) -> IfEq(x, y, g env known e1, g env known e2, info)
  | KNormal.IfLE(x, y, e1, e2, info) -> IfLE(x, y, g env known e1, g env known e2, info)
  | KNormal.Let((x, t), e1, e2, info) -> Let((x, t), g env known e1, g (M.add x t env) known e2, info)
  | KNormal.Var(x, info) -> Var(x, info)
  | KNormal.LetRec({ KNormal.name = (fun_name, fun_type); KNormal.args = param_list; KNormal.body = fun_body }, let_body, info) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
    (* 関数定義let rec fun_name y1 ... yn = fun_body in let_bodyの場合は、
    fun_nameに自由変数がない(closureを介さずdirectに呼び出せる)
    と仮定し、knownに追加してfun_bodyをクロージャ変換してみる *)

    (*backup top level*)
    let toplevel_backup = !toplevel in

    (*add function definition (function type) to current enviroment*)
    let env' = M.add fun_name fun_type env in

    (*add function name to known-free variable list*)
    let known' = S.add fun_name known in

    (*add parameter list (by name with type) to current env
    * and transform function's expression
    * *)
    let fun_body' = g (M.add_list param_list env') known' fun_body in
    (* 本当に自由変数がなかったか、変換結果fun_body'を確認する *)
    (* 注意: fun_body'にfun_name自身が変数として出現する場合はclosureが必要!
     (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml参照) *)

    (*get list of variables used in fun_body but not parameter
     * external_variables might include function name
     *
     * This is just a hack to known' variable.
     * If there is no external (free) variable, there also no need of closure.
     * Keep function name into known' list to acknowledge of application to use
     * closure
     *
     * Otherwise, Remove function name from known' list
    * *)
    let external_variables = S.diff (fv fun_body') (S.of_list (List.map fst param_list)) in

    let known', fun_body' =
        if
            S.is_empty external_variables
        then
            (*keep function name in known' list to aknowledge that there is no need of closure*)
            known', fun_body'
        else
            (* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
            (
                Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements external_variables)) (Id.to_string fun_name);
                 Format.eprintf "function %s cannot be directly applied in fact@." (Id.to_string fun_name);
                 toplevel := toplevel_backup;

                 (*reevaluate function's expression but without function name.
                  * There is no need of closure for this fun
                  * *)
                 let fun_body' = g (M.add_list param_list env') known fun_body
                 in
                 known, fun_body'
             )
    in
    (*re-calculate extern variables list*)
    let external_variables =
        (*convert to list*)
        S.elements
            (*free variable in this letrec*)
            (S.diff
                (*free variable in function's expression without func name*)
                (fv fun_body')
                (*paramter + func name set*)
                (S.add
                    fun_name
                    (*all parameter set*)
                    (S.of_list
                        (*all parameter list*)
                        (List.map fst param_list)
                    )
                )
            )(* 自由変数のリスト *)
    in
    let external_variable_with_type =
        List.map
            (fun z ->
                (*return a pair of its name and type*)
                (z, M.find z env')
                )
            (*for all free variables*)
            external_variables
    in (* ここで自由変数zの型を引くために引数envが必要 *)
        toplevel := { name = (Id.to_L fun_name, fun_type); args = param_list; formal_fv = external_variable_with_type; body = fun_body' } :: !toplevel; (* トップレベル関数を追加 *)
        (*parse let_body*)
        let let_body' = g env' known' let_body
        in
            (*if function is used after that*)
            if S.mem fun_name (fv let_body') then (* fun_nameが変数としてlet_body'に出現するか *)
                (* return a closure call*)
                MakeCls((fun_name, fun_type), { entry = Id.to_L fun_name; actual_fv = external_variables }, let_body', info) (* 出現していたら削除しない *)
            else
                (*just return let_body if function is not used*)
                (Format.eprintf "eliminating closure(s) %s@." (Id.to_string fun_name);
                let_body') (* 出現しなければMakeClsを削除 *)
  | KNormal.App(x, ys, info) when S.mem x known -> (* 関数適用の場合 (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." (Id.to_string x);
      AppDir(Id.to_L x, ys, info)
  | KNormal.App(f, xs, info) -> AppCls(f, xs, info)
  | KNormal.Tuple(xs, info) -> Tuple(xs, info)
  | KNormal.LetTuple(xts, y, e, info) -> LetTuple(xts, y, g (M.add_list xts env) known e, info)
  | KNormal.Get(x, y, info) -> Get(x, y, info)
  | KNormal.Put(x, y, z, info) -> Put(x, y, z, info)
  | KNormal.ExtArray(x, info) -> ExtArray(Id.to_L(x), info)
  | KNormal.ExtFunApp(x, ys, info) -> AppDir(("min_caml_" ^ (fst x), snd x), ys, info)

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')

let get_info = function
  | Unit info
  | Int (_, info)
  | Float(_, info)
  | Neg(_, info)
  | Add (_, _, info)
  | Sub (_, _, info)
  | FNeg(_, info)
  | FAdd (_, _, info)
  | FSub (_, _, info)
  | FMul (_, _, info)
  | FDiv (_, _, info)
  | IfEq (_, _, _, _, info)
  | IfLE (_, _, _, _, info)
  | Let (_, _, _, info)
  | Var(_, info)
  | MakeCls (_, _, _, info)
  | AppCls (_, _, info)
  | AppDir (_, _, info)
  | Tuple(_, info)
  | LetTuple (_, _, _, info)
  | Get (_, _, info)
  | Put (_, _, _, info)
  | ExtArray(_, info)
  -> info
