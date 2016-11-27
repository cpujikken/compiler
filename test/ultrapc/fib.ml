let rec fib n =
    if n = 1 then 1
    else
        if n = 2 then 1
        else
            fib ( n -1) + fib (n - 2)
in
    print_byte (fib 10)
