type t =
    | Directive of string * directive_param option * comment option
    | Label of string * comment option
    | Command of opcode * operand list * Info.t option
    | IData of int
    | FData of float

and
opcode = string
and
operand = string
and
comment = string
and
directive_param = string

let cmd_list = ref []
  (*note: append each command in reserved order*)
  (*append command to current asm program*)
let append cmd =
    cmd_list := cmd :: !cmd_list

    (*convert one cmd to string*) (*one line*)
let to_string opcode operand_list info_o =
    let operand_list_to_string operand_list =
        let rec loop current = function
            | [] -> current
            | operand::alist ->
                    loop (current ^ ", " ^ operand) alist
        in
        match operand_list with
        | [] -> ""
        | first::remain ->
                "\t" ^ first ^ (loop "" remain)
    in
    match info_o with
    | Some info ->
        Printf.sprintf "\t%s%s\t# %s" opcode (operand_list_to_string operand_list)  (Info.to_string info)
    | None ->
        Printf.sprintf "\t%s%s" opcode (operand_list_to_string operand_list)

let rec f output =
    let g = function
        | Directive (directive, param_o, comment_o)->
                Printf.fprintf output ".%s" directive;
                (
                    match param_o with
                     | Some param -> Printf.fprintf output "\t%s" param
                     | None -> ()
                );
                (match comment_o with Some comment ->
                    Printf.fprintf output "\t#%s" comment
                     | None -> ()
                );
                Printf.fprintf output "\n"

        | Label(label, comment_o) ->
                if !Common.is_lib then
                    Printf.fprintf output "min_caml_%s:" label
                else
                    Printf.fprintf output "%s:" label;
                (match comment_o with
                    Some comment -> Printf.fprintf output "\t#%s" comment
                    | None -> ()
                );
                Printf.fprintf output "\n"
        | Command (a, b, c) ->
                Printf.fprintf output "%s\n" (to_string a b c)
        | IData i ->
                Printf.fprintf output "\t.long\t%x\n" i
        | FData i ->
                Printf.fprintf output "\t.long\t%x\n" (Int32.to_int (Int32.bits_of_float i))
    in
    List.iter g (List.rev !cmd_list)

(*constant declaration*)
let start_directive = "start"
let data_directive = "data"
let align_directive = "align"
let entry_label = "min_caml_start"
let align_length = 8
let text_directive = "text"

let cmd_nop = "NOP"
let cmd_add = "ADD"
let cmd_sub = "SUB"
let cmd_addi = "ADDI"
let cmd_four = "FOUR"
let cmd_half = "HALF"
let cmd_jump = "J"
let cmd_jumpZero = "JZ"
let cmd_fJumpEqual = "FJEQ"
let cmd_fJumpLT = "FJLT"
let cmd_loadRelative = "LDR"
let cmd_loadAbsolute = "LDA"
let cmd_loadDynamic = "LDD"
let cmd_storeRelative = "SDR"
let cmd_storeDynamic = "SDD"
let cmd_storeAbsolute = "SDA"
let cmd_fLoadRelative = "FLDR"
let cmd_fLoadAbsolute = "FLDA"
let cmd_fLoadDynamic = "FLDD"
let cmd_fStoreRelative = "FSDR"
let cmd_fStoreDynamic = "FSDD"
let cmd_fStoreAbsolute = "FSDA"

let cmd_fAdd = "FADD"
let cmd_fSub = "FSUB"
let cmd_fMul = "FMUL"
let cmd_fDiv = "FDIV"

let cmd_link = "LINK"
let cmd_jumpCls = "JC"
let cmd_storeIp = "SIP"
let cmd_xor = "XOR"
let cmd_move = "MV"
let cmd_moveImm = "MVI"
let cmd_neg1 = "NEG1"
let cmd_fNeg1 = "FNEG1"
let cmd_neg2 = "NEG2"
let cmd_fNeg2 = "FNEG2"
let cmd_inc = "INC"
let cmd_dec = "DEC"
let cmd_cmp = "CMP"
let cmd_fCmp = "FCMP"
let cmd_fMove = "FMV"
let cmd_readFloat = "RF"
let cmd_readInt = "RI"
let cmd_print = "PRINT"
let cmd_fAbs = "FABS"
let cmd_shiftLeft = "SL"
let cmd_shiftRight = "SR"
let cmd_div = "DIV"
let cmd_mul = "MUL"
let cmd_finish = "FIN"

let append_cmd_noinfo opcode operand_list =
    append (Command (opcode, operand_list, None))
let append_cmd opcode operand_list info =
    append (Command (opcode, operand_list, Some info))

let label_to_string label =
    if !Common.is_lib then
        "$" ^ "min_caml_" ^ label
    else
        "$" ^ label
let int_to_string i = "$" ^ string_of_int i
let align_length = 4
let addr_mode_relative = 0
let addr_mode_dynamic = 2
let addr_mode_absolute = 3
