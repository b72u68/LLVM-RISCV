(* Result: 3 *)
let l = 1::2::3::4::5::[];;

let rec find (l: int list) : int = 
  let i = 3 in 
  match l with 
  | [] -> 0
  | h::t -> if h = i then h else find t
;;

find l;;
