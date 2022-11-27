(* Result: 3 *)
let l = 1::1::1::2::3::3::1::1::4::5::5::5::5::[]
;;

let rec compress (l: int list) : int list =
    match l with
    | [] -> ([]: int list)
    | h1::t1 ->
            match t1 with
            | [] -> ([]: int list)
            | h2::t2 ->
                    if h1 = h2 then compress t1
                    else h1::(compress t1)
;;

match compress l with
| [] -> 0
| h::t ->
        match t with
        | [] -> 0
        | h::t ->
                match t with
                | [] -> 0
                | h::t -> h
;;
