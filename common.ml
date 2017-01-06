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
let default_heap = 1 lsl 20
let default_stack = 1 lsl 25
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
    "fneg";
    "fsqr";
    "fhalf";
    "fless";
    "fisneg";
]
