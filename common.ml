let rec list_compare list1 list2 compare = match list1, list2 with
| [], [] -> 0
| [], x2::_ -> -1
| x1::_, [] -> 1
| x1::list1', x2::list2' ->
        let cmp = compare x1 x2 in
        if cmp != 0 then cmp
        else
            list_compare list1' list2' compare
