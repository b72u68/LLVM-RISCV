(* Result: 5 *)

let rec fold (args: (int -> int -> int) * (int list * int)): int =
    let (reducer, others) = args in
    let (elems, init_value) = others in
    match elems with
    | [] -> init_value
    | h::t ->
        fold (reducer, t, init_value + h)
;;

(* Also reverses the order of the original list but just ignore that *)
let map = fun (mapper: int -> int) -> fun (lst: int list) ->
    let rec map_helper (args: int list * int list): int list =
        let (mapped, remaining) = args in
        match remaining with
        | [] -> mapped
        | h::t ->
            let element = mapper h in
            let new_elements = element::mapped in
            map_helper (new_elements, t)
    in 
    map_helper ([], lst)
;;


let is_even = fun (x: int) -> if (x / 2) + (x / 2) = x then 1 else 0;;

let add = fun (x: int) -> fun (y: int) -> x + y;;

let elems = 1::2::3::4::5::6::7::8::9::10::[] in
fold (add, map is_even elems, 0);;
