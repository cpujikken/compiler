(* give names to intermediate values (K-normalization) *)

type t = (* K正規化後の式 (caml2html: knormal_t) *)
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
  | IfEq of Id.t * Id.t * t * t * Info.t (* 比較 + 分岐 (caml2html: knormal_branch) *)
  | IfLE of Id.t * Id.t * t * t * Info.t (* 比較 + 分岐 *)
  | Let of (Id.t * Type.t) * t * t * Info.t
  | Var of Id.t * Info.t
  | LetRec of fundef * t * Info.t
  | App of Id.t * Id.t list * Info.t
  | Tuple of Id.t list * Info.t
  | LetTuple of (Id.t * Type.t) list * Id.t * t * Info.t
  | Get of Id.t * Id.t * Info.t
  | Put of Id.t * Id.t * Id.t * Info.t
  | ExtArray of Id.t * Info.t
  | ExtFunApp of Id.t * Id.t list * Info.t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let to_string x =
    let rec to_string_pre pre k =
        let npre = pre ^ " "
        in
        match k with
        | Unit info -> Printf.sprintf "%sUnit%s" pre (Info.to_string info)
        | Int(i, info) -> Printf.sprintf "%sINT %d%s" pre i (Info.to_string info)
        | Float( f , info)-> Printf.sprintf "%sFLOAT %f%s" pre f (Info.to_string info)
        | Neg(t, info) -> Printf.sprintf "%sNEG%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Add (x, y, info) -> Printf.sprintf "%sADD%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Sub (x, y, info) -> Printf.sprintf "%sSUB%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FNeg( t , info)-> Printf.sprintf "%sFNEG%s\n%s" pre  (Info.to_string info) (Id.to_string_pre npre t)
        | FAdd (x, y, info) -> Printf.sprintf "%sFADD%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FSub (x, y, info) -> Printf.sprintf "%sFSUB%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FMul (x, y, info) -> Printf.sprintf "%sFMUL%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FDiv (x, y, info) -> Printf.sprintf "%sFDIV%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | IfEq (idx, idy, z, u, info) -> Printf.sprintf "%sIF_EQ%s\n%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre idx) (Id.to_string_pre npre idy) (to_string_pre npre z) (to_string_pre npre u)
        | IfLE (idx, idy, z, u, info) -> Printf.sprintf "%sIF_LE%s\n%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre idx) (Id.to_string_pre npre idy) (to_string_pre npre z) (to_string_pre npre u)
        | Let ((id, typ), x, y, info) -> Printf.sprintf "%sLET%s\n%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre id) (Type.to_string_pre npre typ) (to_string_pre npre x) (to_string_pre npre y)
        | Var( id , info)-> Printf.sprintf "%sVAR%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre id)
        | LetRec (f, t, info) -> Printf.sprintf "%sLET_REC%s\n%s\n%s" pre (Info.to_string info) (to_string_let_rec npre f) (to_string_pre npre t)
        | App (x, xlist, info) -> Printf.sprintf "%sAPP%s\n%s%s" pre (Info.to_string info) (Id.to_string_pre npre x) (to_string_idlist npre xlist)
        | Tuple(idlist, info) -> Printf.sprintf "%sTUPLE%s%s" pre (Info.to_string info) (to_string_idlist npre idlist)
        | LetTuple (idtype_list, id, x, info) -> Printf.sprintf "%sLET_TUPLE%s\n%s\n%s\n%s" pre (Info.to_string info) (to_string_idtype_list npre idtype_list) (Id.to_string_pre npre id) (to_string_pre npre x)
        | Get (x, y, info) -> Printf.sprintf "%sGET%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Put (x, y, z, info) -> Printf.sprintf "%sPUT%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y) (Id.to_string_pre npre z)
        | ExtArray(x, info) -> Printf.sprintf "%sEXT_ARRAY%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x)
        | ExtFunApp (x, xlist, info) -> Printf.sprintf "%sEXT_FUN_APP%s\n%s%s" pre (Info.to_string info) (Id.to_string_pre npre x) (to_string_idlist npre xlist)
    and to_string_idlist pre = function
        | [] -> ""
        | id :: idlist -> Printf.sprintf "\n%s%s" (Id.to_string_pre pre id) (to_string_idlist pre idlist)
    and to_string_let_rec pre f =
        let npre = pre ^ " "
        in
        let nid, ntype = f.name
        in
        Printf.sprintf "%sNAME\n%s\n%sTYPE\n%s\n%sARG%s\n%sBODY\n%s" pre (Id.to_string_pre npre nid) pre (Type.to_string_pre npre ntype) pre (to_string_args npre f.args) pre (to_string_pre npre f.body)
    and to_string_args pre = function
        | [] -> ""
        | (id, typ) :: args -> Printf.sprintf "\n%s\n%s%s" (Id.to_string_pre pre id) (Type.to_string_pre pre typ) (to_string_args pre args)
    and to_string_idtype_list pre x = to_string_args pre x
    in
    to_string_pre "" x

let rec fv = function (* 式に出現する（自由な）変数 (caml2html: knormal_fv) *)
  | Unit (_) | Int(_, _) | Float(_, _) | ExtArray(_, _) -> S.empty
  | Neg(x, _) | FNeg(x, _) -> S.singleton x
  | Add(x, y, _) | Sub(x, y, _) | FAdd(x, y, _) | FSub(x, y, _) | FMul(x, y, _) | FDiv(x, y, _) | Get(x, y, _) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2, _) | IfLE(x, y, e1, e2, _) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, _) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, _) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, _) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
      S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys, _) -> S.of_list (x :: ys)
  | Tuple(xs, _) | ExtFunApp(_, xs, _) -> S.of_list xs
  | Put(x, y, z, _) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e, _) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let insert_let (e, t) k info = (* letを挿入する補助関数 (caml2html: knormal_insert) *)
  match e with
  | Var(x, _) -> k x
  | _ ->
      let x = Id.gentmp t info in
      let e', t' = k x in
      Let((x, t), e, e', info), t'

let rec g env = function (* K正規化ルーチン本体 (caml2html: knormal_g) *)
  | Syntax.Unit info -> Unit info, Type.Unit info
  | Syntax.Bool(b, info) -> Int((if b then 1 else 0), info), Type.Int info (* 論理値true, falseを整数1, 0に変換 (caml2html: knormal_bool) *)
  | Syntax.Int(i, info) -> Int(i, info), Type.Int info
  | Syntax.Float(d, info) -> Float(d, info), Type.Float info
  | Syntax.Not(e, info) -> g env (Syntax.If(e, Syntax.Bool(false, info), Syntax.Bool(true, info), info))
  | Syntax.Neg(e, info) ->
      insert_let (g env e)
	(fun x -> Neg(x, info), Type.Int info) info
  | Syntax.Add(e1, e2, info) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> Add(x, y, info), Type.Int info) info) info
  | Syntax.Sub(e1, e2, info) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> Sub(x, y, info), Type.Int info) info) info
  | Syntax.FNeg(e, info) ->
      insert_let (g env e)
	(fun x -> FNeg(x, info), Type.Float info) info
  | Syntax.FAdd(e1, e2, info) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> FAdd(x, y, info), Type.Float info) info) info
  | Syntax.FSub(e1, e2, info) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> FSub(x, y, info), Type.Float info) info) info
  | Syntax.FMul(e1, e2, info) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> FMul(x, y, info), Type.Float info) info) info
  | Syntax.FDiv(e1, e2, info) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> FDiv(x, y, info), Type.Float info) info) info
  | Syntax.Eq (_, _, info) | Syntax.LE (_, _, info) as cmp ->
      g env (Syntax.If(cmp, Syntax.Bool(true, info), Syntax.Bool(false, info), info))
  | Syntax.If(Syntax.Not(e1, _), e2, e3, info) -> g env (Syntax.If(e1, e3, e2, info)) (* notによる分岐を変換 (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Eq(e1, e2, _), e3, e4, info) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y ->
	      let e3', t3 = g env e3 in
	      let e4', t4 = g env e4 in
	      IfEq(x, y, e3', e4', info), t3) info) info
  | Syntax.If(Syntax.LE(e1, e2, _), e3, e4, info) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y ->
	      let e3', t3 = g env e3 in
	      let e4', t4 = g env e4 in
	      IfLE(x, y, e3', e4', info), t3) info) info
  | Syntax.If(e1, e2, e3, info) -> g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false, info), info), e3, e2, info)) (* 比較のない分岐を変換 (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2, info) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
      Let((x, t), e1', e2', info), t2
  | Syntax.Var(x, info) when M.mem x env -> Var(x, info), M.find x env
  | Syntax.Var(x, info) -> (* 外部配列の参照 (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
      | Type.Array(_, _) as t -> ExtArray(x, info), t
      | _ -> failwith (Printf.sprintf "external variable %s does not have an array type" (Id.to_string x)))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2, info) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
      LetRec({ name = (x, t); args = yts; body = e1' }, e2', info), t2
  | Syntax.App(Syntax.Var(f, _) as f_with_info, e2s, info) when not (M.mem f env) -> (* 外部関数の呼び出し (caml2html: knormal_extfunapp) *)
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t, _) ->
	  let rec bind xs = function (* "xs" are identifiers for the arguments *)
	    | [] -> ExtFunApp(f, xs, info), t
	    | e2 :: e2s ->
		insert_let (g env e2)
		  (fun x -> bind (xs @ [x]) e2s) info in
	  bind [] e2s (* left-to-right evaluation *)
      | _ -> failwith (Printf.sprintf "%s is not a function" (Syntax.to_string f_with_info))
      )
  | Syntax.App(e1, e2s, info) ->
      (match g env e1 with
      | _, Type.Fun(_, t, _) as g_e1 ->
	  insert_let g_e1
	    (fun f ->
	      let rec bind xs = function (* "xs" are identifiers for the arguments *)
		| [] -> App(f, xs, info), t
		| e2 :: e2s ->
		    insert_let (g env e2)
		      (fun x -> bind (xs @ [x]) e2s) info in
	      bind [] e2s) info (* left-to-right evaluation *)
      | _ -> failwith (Printf.sprintf "%s is not a function" (Syntax.to_string e1)))
  | Syntax.Tuple(es, info) ->
      let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
	| [] -> Tuple(xs, info), Type.Tuple(ts, info)
	| e :: es ->
	    let _, t as g_e = g env e in
	    insert_let g_e
	      (fun x -> bind (xs @ [x]) (ts @ [t]) es) info in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2, info) ->
      insert_let (g env e1)
	(fun y ->
	  let e2', t2 = g (M.add_list xts env) e2 in
	  LetTuple(xts, y, e2', info), t2) info
  | Syntax.Array(e1, e2, info) ->
      insert_let (g env e1)
	(fun x ->
	  let _, t2 as g_e2 = g env e2 in
	  insert_let g_e2
	    (fun y ->
	      let l =
		match t2 with
		| Type.Float info -> "create_float_array", info
		| x -> "create_array", (Type.get_info x) in
	      ExtFunApp(l, [x; y], info), Type.Array(t2, info)) info) info
  | Syntax.Get(e1, e2, info) ->
      (match g env e1 with
      |	_, Type.Array(t, info) as g_e1 ->
	  insert_let g_e1
	    (fun x -> insert_let (g env e2)
		(fun y -> Get(x, y, info), t) info) info
      | _ -> failwith (Printf.sprintf "cannot get element from non-array type (%s)" (Syntax.to_string e1)))
  | Syntax.Put(e1, e2, e3, info) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> insert_let (g env e3)
		(fun z -> Put(x, y, z, info), Type.Unit info) info) info) info

let f e =
    Printf.printf "%s" (Syntax.to_string e);
    fst (g M.empty e)
