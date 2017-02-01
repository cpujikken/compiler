let global_reg_threshold = 7
let nreg = 32
let nfreg = 32

type t = string
let reg_no i = Printf.sprintf "%%r%d" i
let freg_no i = Printf.sprintf "%%fr%d" i
let allregs = Array.to_list (Array.init (nreg - 3) reg_no)
let allfregs = Array.to_list (Array.init nfreg freg_no)
let reg_cl = reg_no 0 (*"%rcl" *)
let reg_sp = reg_no (nreg - 1) (*"%rsp"*)
let reg_dump = "%rd" (*never used in .s*)
let freg_dump = "%frd" (*never used in .s*)
let reg_ret = reg_no 0
let freg_ret = freg_no 0
let reg_hp = reg_no (nreg - 2) (*"%rhp"*)
let to_string x = x

let compare = Pervasives.compare

let local_regs_list = Array.to_list (Array.init  global_reg_threshold reg_no)
let local_fregs_list = Array.to_list (Array.init  global_reg_threshold freg_no)
let local_regs = StringSet.union (StringSet.of_list local_regs_list) (StringSet.of_list local_fregs_list)
let global_regs = StringSet.diff (StringSet.union (StringSet.of_list allfregs) @@ StringSet.of_list allregs) local_regs

let is_freg reg =
    List.mem reg allfregs
