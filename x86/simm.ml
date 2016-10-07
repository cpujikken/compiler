open Asm

let rec g env = function (* 命令列の即値最適化 (caml2html: simm13_g) *)
  | Ans(exp, info) -> Ans(g' env exp, info)
  | Let((x, t), Set(i, s_info), e, l_info) ->
      (* Format.eprintf "found simm %s = %d@." x i; *)
      let e' = g (M.add x i env) e in
      if List.mem x (fv e') then Let((x, t), Set(i, s_info), e', l_info) else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
       e')
  | Let(xt, exp, e, info) -> Let(xt, g' env exp, g env e, info)
and g' env = function (* 各命令の即値最適化 (caml2html: simm13_gprime) *)
  | Add(x, V(y), info) when M.mem y env -> Add(x, C(M.find y env), info)
  | Add(x, V(y), info) when M.mem x env -> Add(y, C(M.find x env), info)
  | Sub(x, V(y), info) when M.mem y env -> Sub(x, C(M.find y env), info)
  | Ld(x, V(y), i, info) when M.mem y env -> Ld(x, C(M.find y env), i, info)
  | St(x, y, V(z), i, info) when M.mem z env -> St(x, y, C(M.find z env), i, info)
  | LdDF(x, V(y), i, info) when M.mem y env -> LdDF(x, C(M.find y env), i, info)
  | StDF(x, y, V(z), i, info) when M.mem z env -> StDF(x, y, C(M.find z env), i, info)
  | IfEq(x, V(y), e1, e2, info) when M.mem y env -> IfEq(x, C(M.find y env), g env e1, g env e2, info)
  | IfLE(x, V(y), e1, e2, info) when M.mem y env -> IfLE(x, C(M.find y env), g env e1, g env e2, info)
  | IfGE(x, V(y), e1, e2, info) when M.mem y env -> IfGE(x, C(M.find y env), g env e1, g env e2, info)
  | IfEq(x, V(y), e1, e2, info) when M.mem x env -> IfEq(y, C(M.find x env), g env e1, g env e2, info)
  | IfLE(x, V(y), e1, e2, info) when M.mem x env -> IfGE(y, C(M.find x env), g env e1, g env e2, info)
  | IfGE(x, V(y), e1, e2, info) when M.mem x env -> IfLE(y, C(M.find x env), g env e1, g env e2, info)
  | IfEq(x, y', e1, e2, info) -> IfEq(x, y', g env e1, g env e2, info)
  | IfLE(x, y', e1, e2, info) -> IfLE(x, y', g env e1, g env e2, info)
  | IfGE(x, y', e1, e2, info) -> IfGE(x, y', g env e1, g env e2, info)
  | IfFEq(x, y, e1, e2, info) -> IfFEq(x, y, g env e1, g env e2, info)
  | IfFLE(x, y, e1, e2, info) -> IfFLE(x, y, g env e1, g env e2, info)
  | e -> e

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の即値最適化 *)
  Prog(data, List.map h fundefs, g M.empty e)
