open Asm
open Operand
open Reg
open Loc

(*remove unused let if all of place can be replacable*)
let rec g env = function (* 命令列の即値最適化 (caml2html: simm13_g) *)
  | Ans(exp, info) -> Ans(g' env exp, info)
  | Let((ID x, t), Addi(reg_zero, Constant i), e, info) ->
      (* Format.eprintf "found simm %s = %d@." x i; *)
      let e' = g (M.add x i env) e in
      if List.mem (ID x) (get_free_vars e') then
          Let((ID x, t), Addi(reg_zero, Constant i), e', info)
      else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
       e')
  | Let(xt, exp, e, info) -> Let(xt, g' env exp, g env e, info)
and g' env = function (* 各命令の即値最適化 (caml2html: simm13_gprime) *)
  | Add(x, ID y) when M.mem y env -> Addi(x, Constant (M.find y env))
  | Add(ID x, y) when M.mem x env -> Addi(y, Constant (M.find x env))
  | Load (Relative (ID id, loc)) when M.mem id env ->
          Load (Absolute(Constant (M.find id env), Some loc))
  | FLoad (Relative (ID id, loc)) when M.mem id env ->
          FLoad (Absolute(Constant (M.find id env), Some loc))
  | Store(reg1, Relative(ID id, loc)) when M.mem id env ->
          Store(reg1, Absolute(Constant (M.find id env), Some loc))
  | FStore(reg1, Relative(ID id, loc)) when M.mem id env ->
          FStore(reg1, Absolute(Constant (M.find id env), Some loc))
  | IfEQ(reg1, reg2, asm1, asm2) -> IfEQ(reg1, reg2, g env asm1, g env asm2)
  | IfLT(reg1, reg2, asm1, asm2) -> IfLT(reg1, reg2, g env asm1, g env asm2)
  | FIfEQ(reg1, reg2, asm1, asm2) -> FIfEQ(reg1, reg2, g env asm1, g env asm2)
  | e -> e

let fun_converter { name = l; args = xs; fargs = ys; body = e; ret = t ; info = info} = (* トップレベル関数の即値最適化 *)
    { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t; info = info }

let f (Prog(idata, data, fundefs, e)) = (* プログラム全体の即値最適化 *)
  Prog(idata, data, List.map fun_converter fundefs, g M.empty e)
