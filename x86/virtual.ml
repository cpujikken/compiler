(* translation into assembly with infinite number of virtual registers *)

open Asm

let data = ref [] (* 浮動小数点数の定数テーブル (caml2html: virtual_data) *)

let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
      match t with
      | Type.Unit -> acc
      | Type.Float -> addf acc x
      | _ -> addi acc x t)
    ini
    xts

let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
      let offset = align offset in
      (offset + 8, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + 4, addi x t offset acc))

let rec g env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure.Unit info -> Ans(Nop info, info)
  | Closure.Int(i, info) -> Ans(Set(i, info), info)
  | Closure.Float(d, info) ->
      let l =
	try
	  (* すでに定数テーブルにあったら再利用 *)
	  let (l, _) = List.find (fun (_, d') -> d = d') !data in
	  l
	with Not_found ->
	  let l = Id.L(Id.genid "l") in
	  data := (l, d) :: !data;
	  l in
      let x = Id.genid "l" in
      Let((x, Type.Int), SetL(l, info), Ans(LdDF(x, C(0), 1, info), info), info)
  | Closure.Neg(x, info) -> Ans(Neg(x, info), info)
  | Closure.Add(x, y, info) -> Ans(Add(x, V(y), info), info)
  | Closure.Sub(x, y, info) -> Ans(Sub(x, V(y), info), info)
  | Closure.FNeg(x, info) -> Ans(FNegD(x, info), info)
  | Closure.FAdd(x, y, info) -> Ans(FAddD(x, y, info), info)
  | Closure.FSub(x, y, info) -> Ans(FSubD(x, y, info), info)
  | Closure.FMul(x, y, info) -> Ans(FMulD(x, y, info), info)
  | Closure.FDiv(x, y, info) -> Ans(FDivD(x, y, info), info)
  | Closure.IfEq(x, y, e1, e2, info) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfEq(x, V(y), g env e1, g env e2, info), info)
      | Type.Float -> Ans(IfFEq(x, y, g env e1, g env e2, info), info)
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfLE(x, y, e1, e2, info) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfLE(x, V(y), g env e1, g env e2, info), info)
      | Type.Float -> Ans(IfFLE(x, y, g env e1, g env e2, info), info)
      | _ -> failwith "inequality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1, e2, info) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2'
  | Closure.Var(x, info) ->
      (match M.find x env with
      | Type.Unit -> Ans(Nop info, info)
      | Type.Float -> Ans(FMovD(x, info), info)
      | _ -> Ans(Mov(x, info), info))
  | Closure.MakeCls((x, t), { Closure.entry = l; Closure.actual_fv = ys }, e2, info) -> (* クロージャの生成 (caml2html: virtual_makecls) *)
      (* Closureのアドレスをセットしてから、自由変数の値をストア *)
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
	expand
	  (List.map (fun y -> (y, M.find y env)) ys)
	  (4, e2')
	  (fun y offset store_fv -> seq(StDF(y, x, C(offset), 1, info), store_fv, info))
	  (fun y _ offset store_fv -> seq(St(y, x, C(offset), 1, info), store_fv, info)) in
      Let(
          (x, t),
          Mov(reg_hp, info),
          Let(
              (reg_hp, Type.Int),
              Add(reg_hp, C(align offset), info),

              (
              let z = Id.genid "l"
              in
              Let(
                  (z, Type.Int),
                  SetL(l, info),
                  seq(
                      St(z, x, C(0), 1, info),
                      store_fv,
                      info
                      ),
                  info
                  )
              ),

              info
              ),
          info
          )
  | Closure.AppCls(x, ys, info) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, int, float, info), info)
  | Closure.AppDir(Id.L(x), ys, info) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallDir(Id.L(x), int, float, info), info)
  | Closure.Tuple(xs, info) -> (* 組の生成 (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
	expand
	  (List.map (fun x -> (x, M.find x env)) xs)
	  (0, Ans(Mov(y, info), info))
	  (fun x offset store -> seq(StDF(x, y, C(offset), 1, info), store, info))
	  (fun x _ offset store -> seq(St(x, y, C(offset), 1, info), store, info)) in
      Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mov(reg_hp, info),
	  Let((reg_hp, Type.Int), Add(reg_hp, C(align offset), info),
	      store, info), info)
  | Closure.LetTuple(xts, y, e2, info) ->
      let s = Closure.fv e2 in
      let (offset, load) =
	expand
	  xts
	  (0, g (M.add_list xts env) e2)
	  (fun x offset load ->
	    if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
	    fletd(x, LdDF(y, C(offset), 1, info), load, info))
	  (fun x t offset load ->
	    if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
	    Let((x, t), Ld(y, C(offset), 1, info), load, info)) in
      load
  | Closure.Get(x, y, info) -> (* 配列の読み出し (caml2html: virtual_get) *)
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop info, info)
      | Type.Array(Type.Float) -> Ans(LdDF(x, V(y), 8, info), info)
      | Type.Array(_) -> Ans(Ld(x, V(y), 4, info), info)
      | _ -> assert false)
  | Closure.Put(x, y, z, info) ->
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop info, info)
      | Type.Array(Type.Float) -> Ans(StDF(z, x, V(y), 8, info), info)
      | Type.Array(_) -> Ans(St(z, x, V(y), 4, info), info)
      | _ -> assert false)
  | Closure.ExtArray(Id.L(x), info) -> Ans(SetL(Id.L("min_caml_" ^ x), info), info)

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
    match e with
  | Closure.Unit info
  | Closure.Int (_, info)
  | Closure.Float(_, info)
  | Closure.Neg(_, info)
  | Closure.Add (_, _, info)
  | Closure.Sub (_, _, info)
  | Closure.FNeg(_, info)
  | Closure.FAdd (_, _, info)
  | Closure.FSub (_, _, info)
  | Closure.FMul (_, _, info)
  | Closure.FDiv (_, _, info)
  | Closure.IfEq (_, _, _, _, info)
  | Closure.IfLE (_, _, _, _, info)
  | Closure.Let (_, _, _, info)
  | Closure.Var(_, info)
  | Closure.MakeCls (_, _, _, info)
  | Closure.AppCls (_, _, info)
  | Closure.AppDir (_, _, info)
  | Closure.Tuple(_, info)
  | Closure.LetTuple (_, _, _, info)
  | Closure.Get (_, _, info)
  | Closure.Put (_, _, _, info)
  | Closure.ExtArray(_, info)
  ->
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> fletd(z, LdDF(x, C(offset), 1, info), load, info))
      (fun z t offset load -> Let((z, t), Ld(x, C(offset), 1, info), load, info)) in
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f (Closure.Prog(fundefs, e)) =
  data := [];
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  Prog(!data, fundefs, e)
