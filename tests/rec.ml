(* Result: 2 *)

let f (x : int) : int = x - 1;;
let f (x : int) : int -> int = fun (y : int) -> x + (f y);;
f 1 2;;
