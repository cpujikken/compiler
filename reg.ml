type t = string
let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [|
      "%r01";
      "%r02";
      "%r03";
      "%r04";
      "%r05";
      "%r06";
      "%r07";
      "%r08";
      "%r09";
      "%r10";
      "%r11";
      "%r12";
      "%r13";
      "%r14";
      "%r15";
      "%r16";
      "%r17";
      "%r18";
      "%r19";
      "%r20";
      "%r21";
      "%r22";
      "%r23";
      "%r24";
      "%r25";
      "%r26";
      "%r27";
      "%r28";
      "%r29"
  |]
let fregs = Array.init 32 (fun i -> (Printf.sprintf "%%fr%d" i))
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
(*
let reg_sw = regs.(Array.length regs - 1) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
*)
let reg_sp = "%rsp" (* stack pointer *)
let reg_hp = "%rhp" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_link = "%rlink"
let reg_zero = "%r0"
let freg_zero = "%fr0"
let reg_ret = regs.(0)
let freg_ret = fregs.(0)
(* let reg_ra = "%eax" (* return address *) *)
