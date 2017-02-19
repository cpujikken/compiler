let rec list_compare list1 list2 compare = match list1, list2 with
| [], [] -> 0
| [], x2::_ -> -1
| x1::_, [] -> 1
| x1::list1', x2::list2' ->
        let cmp = compare x1 x2 in
        if cmp != 0 then cmp
        else
            list_compare list1' list2' compare

let is_lib = ref false
let default_heap = (1 lsl 28)
let default_stack = 88080
let lib_funs = [
    "cos";
    "sin";
    "sqrt";
    "atan";
    "floor";
    "int_of_float";
    "float_of_int";
    "print_int";
    "print_space";
    "print_newline";
    "create_int_array";
    "create_float_array";
    "print_char";
    "fiszero";
    "fispos";
    "fsqr";
    "fhalf";
    "fless";
    "fisneg";
    "read_int";
    "read_float";
]

let no_effect_external_funs = [
    "cos";
    "sin";
    "sqrt";
    "atan";
    "floor";
    "int_of_float";
    "float_of_int";
    "fiszero";
    "fispos";
    "fsqr";
    "fhalf";
    "fless";
    "fisneg";
]

let indent = " "

let library_prefix = "min_caml_"
let entry_label = "min_caml_start"
let reg_nfree = 15
let freg_nfree = 15
let addi_imm_limit = 1 lsl 15
let movei_imm_limit = 1 lsl 21
let optimize_level_default = 1000
let eps = 0.00001
