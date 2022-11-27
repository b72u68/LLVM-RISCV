(* Result: 1 *)

(* Utilities *)

let mempty : int list = [];;

let plus = fun (i : int) -> fun (j : int) -> i + j;;

let rec foldr (k : int -> int -> int) : int -> int list -> int =
  fun (z : int) ->
  fun (xs: int list) ->
  match xs with
  | [] -> z
  | x :: xs -> k x (foldr k z xs);;

let rec append (xs : int list) : int list -> int list =
  fun (ys : int list) ->
  match xs with
  | [] -> ys
  | x :: xs -> x :: (append xs ys);;

let rec appendp (xs : (int * int) list) : (int * int) list -> (int * int) list =
  fun (ys : (int * int) list) ->
  match xs with
  | [] -> ys
  | x :: xs -> x :: (appendp xs ys);;

let rec equals (xs : int list) : int list -> bool =
  fun (ys : int list) ->
  match xs with
  | [] -> (match ys with | [] -> true | y :: ys -> false)
  | x :: xs -> (match ys with | [] -> false | y :: ys -> (x = y) && (equals xs ys));;

let rec assoc (needle : int) : (int * int) list -> int =
  fun (xys : (int * int) list) ->
  match xys with
  | [] -> ~-1
  | xy :: xys -> let (x, y) = xy in if x = needle then y else assoc needle xys;;

let rec map (f : int -> int) : int list -> int list =
  fun (xs : int list) ->
  match xs with
  | [] -> ([] : int list)
  | x :: xs -> (f x) :: (map f xs);;

let rec mapp (f : (int * int) -> (int * int)) : (int * int) list -> (int * int) list =
  fun (xs : (int * int) list) ->
  match xs with
  | [] -> ([] : (int * int) list)
  | x :: xs -> (f x) :: (mapp f xs);;

let rec indexFrom (i : int) : int list -> (int * int) list =
  fun (xs : int list) ->
  match xs with
  | [] -> ([] : (int * int) list)
  | x :: xs -> (i, x) :: (indexFrom (i + 1) xs);;

let bool2int (b : bool) = if b then 1 else 0;;

(*

Original monad type:
  (string * int) list  -> Ca.p_stmt list * 'a * closure_typ list

MiniML monad type:
  (int * int) list -> int list * (int * int list)

Technically this does not form a monad because there is no type
constructor.

*)

let bind (m : (int * int) list -> int list * int * int list) =
  fun (k : int -> (int * int) list -> int list * int * int list) ->
  fun (e : (int * int) list) ->
  let (s1x, c1) = m e in
  let (s1, x) = s1x in
  let (s2y, c2) = k x e in
  let (s2, y) = s2y in
  ((append s1 s2, y), append c2 c1);;

let pure (x : int) = fun (e : (int * int) list) -> ((mempty, x), mempty);;

(* No operators in MiniML so using liftA instead of <*> *)
let liftA2 = 
  fun (f : int -> int -> int) ->
  fun (m : (int * int) list -> int list * int * int list) ->
  fun (n : (int * int) list -> int list * int * int list) ->
  bind m (fun (x : int) ->
  bind n (fun (y : int) ->
  pure (f x y)
  ));;

(* As in >>, not sequenceA *)
let sequence = liftA2 (fun (ignored : int) -> fun (x : int) -> x);;

let tellS (l : int list) = fun (e : (int * int) list) -> ((l, 0), mempty);;

let tellC (l : int list) = fun (e : (int * int) list) -> ((mempty, 0), l);;

(* Can't return a pair with a list, so just sum to return an int *)
let censorListenS (m : (int * int) list -> int list * int * int list) =
  fun (e : (int * int) list) -> 
  let (sr, c) = m e in
  let (s, r) = sr in
  ((mempty, foldr plus r s), c);;

(* Can't return a list, so implementing asks instead *)
let asks (f : (int * int) list -> int) =
  fun (e : (int * int) list) ->
  ((mempty, f e), mempty);;

let local (f : (int * int) list -> (int * int) list) =
  fun (m : (int * int) list -> int list * int * int list) ->
  fun (e : (int * int) list) ->
  m (f e);;

(* Locally extends the environment for the given computation and tells some
   statements *)
let withExtendedEnv =
  fun (vars : int list) ->
  fun (m : (int * int) list -> int list * int * int list) ->
  let length = foldr (fun (x : int) -> fun (y : int) -> 1 + y) 0 vars in
  let ixed = indexFrom 0 vars in
  let inc (p : int * int) = let (x, y) = p in (x + length, y) in
  sequence
    (tellS vars)
    (local
      (fun (env : (int * int) list) -> appendp ixed (mapp inc env))
      (bind m (fun (x : int) -> sequence
        (tellS (map (fun (i : int) -> 0-i) vars))
        (pure x))
    ));;

(* Fake compiler that returns a value and tells a statement or a closure *)
let compile = fun (i : int) -> sequence
  (if i >= 500 then tellC ((i - 500)::[]) else tellS ((i - 400)::[]))
  (pure (i + 1));;

(* Test *)

let r =
bind (tellS (1::[])) (fun (ignore : int) ->
bind (tellS (2::[])) (fun (ignore : int) ->
bind (tellC (3::[])) (fun (ignore : int) ->
bind (asks (assoc 0)) (fun (x : int) ->
bind (withExtendedEnv (440::430::[]) (
  bind (asks (assoc 0)) (fun (y : int) ->
  bind (asks (assoc 3)) (fun (z : int) ->
  liftA2 plus (compile y) (compile z)
  )))) (fun (yz : int) ->
censorListenS (
  bind (tellS (x::[])) (fun (ignore : int) ->
  bind (tellS (yz::[])) (fun (ignore : int) ->
  bind (tellC (1::[])) (fun (ignore : int) ->
  pure 42
  ))) 
)))))) ((0, 443)::(1, 595)::[]) in
let (sx, c) = r in
let (s, x) = sx in
bool2int (
  (equals s (1::2::440::430::40::(0-440)::(0-430)::[])) &&
  (x = (440 + 443 + 2 + 595 + 42)) &&
  (equals c (1::95::3::[])));;
