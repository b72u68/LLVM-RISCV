(* Result: 20 *)
let emp : int list = [];;

let rec map (f : int -> int) : (int list -> int list) = fun (l : int list) ->
  match l with
  | [] -> emp
  | h :: t -> (f h) :: ((map f) t);;

let mult_10 (x : int) = 10 * x;;

let l = 3::(2::(1::[])) in
  let l = ((map mult_10) l) in
    (* Gives the second element in l *)
    match l with
    | [] -> 0
    | h::t -> match t with
                | [] -> 0
                | h::t -> h;;
