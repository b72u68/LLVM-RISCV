(* CS 443 Fall 2022 *)
(* Project 6 *)
(* My Dinh *)

open Allocutil
module R = Riscv.Ast
open LLVM.Ast

exception Unimplemented

module IG = Graph.Make
              (struct
                type data = varorreg
                let to_string =
                  function
                    Variable v -> string_of_var v
                  | Register r -> Riscv.Print.string_of_reg r
              end)

module FSet = Live.FSet

module Dfg = Live.DFG

type alloc_res = InReg of R.reg
               | OnStack of int (* stack position *)
               | InMem of R.symbol (* Risc-V global symbol *)

let vr_to_string =
    function Register r -> Riscv.Print.string_of_reg r
           | Variable v -> string_of_var v

(* Take an existing allocation and a node.
 * If the node is already allocated a register r, return Some r.
 * If the node may be allocated register r, return Some r.
 * Otherwise, return None.
*)
let get_reg (igraph: IG.t) (colors: alloc_res VRMap.t) (n: IG.node) :
      R.reg option =
  let node_color n =
    try
      (match VRMap.find (IG.get_data n) colors with
       | InReg r -> [r]
       | _ -> [])
    with Not_found -> []
  in
  let nbr_colors n =
    List.concat (List.map node_color (IG.succs igraph n))
  in
  match node_color n with
  | r::_ -> (* It already has a color! *) Some r
  | _ ->
     let used = nbr_colors n in
     try
       Some (List.find (fun r -> not (List.mem r used)) R.general_purpose)
     with Not_found -> None

(* Build interference graph from liveness analysis result and a dataflow graph.
 *)
let build_intf_graph (live_in, live_out) ((cfg, n): Dfg.t) : IG.t =
  let vr_nodes : IG.node VRMap.t ref = ref VRMap.empty in
  let node_of_vr vr =
    try
      VRMap.find vr (!vr_nodes)
    with Not_found ->
      let node = IG.new_node vr in
      vr_nodes := VRMap.add vr node (!vr_nodes);
      node
  in
  (* Build interference graph *)
  let intf_edges i live_out =
    let edges =
      match i with
      | ISet (d, _, Var v)
        | ICast (d, _, _, Var v, _) ->
         FSet.fold
           (fun v edges -> (d, v)::edges)
           (FSet.diff live_out (FSet.singleton v))
           []
      | ICall (d, _, f, args) ->
         List.concat
           (List.map
              (fun d ->
                FSet.fold
                  (fun v edges -> (d, v)::edges)
                  live_out
                  []
              )
              ((LLVM.Utils.def_inst i)
               @ (List.map (fun r -> Register r) R.caller_saved)
           ))
      | _ ->
         List.concat
           (List.map
              (fun d ->
                FSet.fold
                  (fun v edges -> (d, v)::edges)
                  live_out
                  []
              )
              (LLVM.Utils.def_inst i))
    in
    List.map (fun (s, d) -> (node_of_vr s, node_of_vr d)) edges
  in
  let add_undir_edge g (a, b) =
    match (IG.get_data a, IG.get_data b) with
    | (Variable (Global _), _)
      | (_, Variable (Global _)) ->
       (* Don't add global vars to interference graph *)
       g
    | (avr, bvr) ->
       let g = IG.add_node (IG.add_node g a) b in
       IG.add_edge (IG.add_edge g (a, b)) (b,a)
  in
  let add_intf_edges (g: IG.t) n =
    List.fold_left
      add_undir_edge
      g
      (intf_edges (Dfg.G.get_data n) (Live.NodeMap.find n live_out))
  in
  List.fold_left
    add_intf_edges
    IG.empty
    (Dfg.G.nodes cfg)


(* Perform register allocation on a dataflow graph for a program,
 * using a greedy algorithm (not quite linear scan, as it doesn't necessarily
 * go through vars in order of definition.
 * glob_alloc contains global variables, mapped to InMem of their symbols.
 * Return (list of spilled variables, allocation map)
 * Returned map should include glob_alloc. *)
let greedy (glob_alloc: alloc_res VRMap.t) ((cfg, n): Dfg.t) :
      var list * alloc_res VRMap.t =
  let li_info = liveness cfg in
  let igraph = build_intf_graph li_info (cfg, n) in

  let nodes = IG.nodes igraph in
  let rec color (spills, colors) n =
    match get_reg igraph colors n with
    | Some r -> (spills, VRMap.add (IG.get_data n) (InReg r) colors)
    | None ->
       let spills' =
         match IG.get_data n with
         | Register _ -> failwith "can't spill a register!"
         | Variable v -> v::spills
       in
       (spills',
        VRMap.add (IG.get_data n) (OnStack (List.length spills)) colors)
  in
  let init_colors =
      (* Pre-color the registers *)
      List.fold_left
        (fun colors r ->
          VRMap.add (Register r) (InReg r) colors)
        glob_alloc
        R.all_regs
    in
  let (spills, alloc) = List.fold_left color ([], init_colors) nodes in
  (List.rev spills, alloc)


(* Perform register allocation on a dataflow graph for a program,
 * using a graph-coloring-based algorithm as described in class
 * (with or without coalescing).
 * glob_alloc contains global variables, mapped to InMem of their symbols.
 * Return (list of spilled variables, allocation map)
 * Returned map should include glob_alloc. *)
let grcolor (glob_alloc: alloc_res VRMap.t) ((cfg, n): Dfg.t) :
      var list * alloc_res VRMap.t =
  (* Do liveness analysis *)
  let li_info = liveness cfg in
  let igraph = build_intf_graph li_info (cfg, n) in

  let glob_alloc =
    (* Pre-color the registers *)
    List.fold_left
      (fun colors r ->
        VRMap.add (Register r) (InReg r) colors)
      glob_alloc
      R.all_regs
  in

  let k = List.length Riscv.Ast.general_purpose in
  let get_deg igraph node = List.length (IG.preds igraph node) in
  let is_empty igraph = (List.length (IG.nodes igraph) = 0) in

  let rec simplify igraph stack =
      let rec simp_rec igraph stack = function
          | [] -> (stack, igraph)
          | n::t ->
                  if (get_deg igraph n) < k then
                     simp_rec (IG.rem_node igraph n) (n::stack) t
                  else simp_rec igraph stack t
      in
      let og_igraph = igraph in
      let nodes = IG.nodes igraph in
      let (stack, igraph) = simp_rec igraph stack nodes in
      if igraph <> og_igraph then simplify igraph stack
      else (stack, igraph)
  in

  let spill igraph stack =
      let nodes = IG.nodes igraph in
      let rec spill_rec = function
          | [] ->
                  let n = List.nth nodes 0 in
                  (n::stack, IG.rem_node igraph n)
          | n::t ->
                  match IG.get_data n with
                  | Variable _ -> (n::stack, IG.rem_node igraph n)
                  | Register _ -> spill_rec t
      in
      if is_empty igraph then (stack, igraph)
      else spill_rec nodes
  in

  let rec simp_spill igraph stack =
      if not (is_empty igraph) then
          let (stack, igraph) = simplify igraph stack in
          let (stack, igraph) = spill igraph stack in
          simp_spill igraph stack
      else stack
  in

  let select igraph alloc stack =
      let sel_rec (spills, alloc) n =
          let nvar = IG.get_data n in
          match get_reg igraph alloc n with
          | Some r -> (spills, VRMap.add nvar (InReg r) alloc)
          | None ->
                  match nvar with
                  | Register _ -> failwith "can't spill a regsiter"
                  | Variable v ->
                          (v::spills, VRMap.add nvar (OnStack (List.length spills)) alloc)
      in
      List.fold_left sel_rec ([], alloc) stack
  in

  let color igraph =
      simp_spill igraph []
      |> select igraph glob_alloc
  in

  color igraph

let rec codegen_body
          (ctx: typdefs)
          (insts: ainst list)
          (insts_so_far: R.label R.inst list)
          (frame_offset: int)
          (alloc: alloc_res VRMap.t) =
  let is_immed n = n > -2049 && n < 2048 in
  (* Return the loading code and register the data is in.
   * If is_fst, use X5 as a temp, otherwise X6 *)
  let get_reg_r is_fst v : R.label R.inst list * R.reg =
    let temp_reg = if is_fst then R.X5 else R.X6 in
    try
      match VRMap.find v alloc with
      | InReg r -> ([], r)
      | OnStack i ->
         ([R.I (R.Lw, temp_reg, R.fp, 0 - i * Config.word_size - frame_offset)],
          temp_reg)
      | InMem s ->
         ([R.LoadLabel (temp_reg, s)],
          temp_reg)
    with Not_found -> failwith ("Not found: " ^ (vr_to_string v))
  in
  let get_reg_r_val is_fst v : R.label R.inst list * R.reg =
    let temp_reg = if is_fst then R.X5 else R.X6 in
    match v with
    | Const n ->
       if is_immed n then
         ([R.I (R.Addi, temp_reg, R.zero, n)], temp_reg)
       else
         let n = Int32.of_int n in
         let upper = Int32.shift_right_logical n 12 in
         let lower = Int32.logxor n (Int32.shift_left upper 12) in
         let lower = Int32.to_int lower in
         let (lower, upper) =
           if lower > 2047
           then (lower - 4096, (Int32.to_int upper) + 1)
           else (lower, Int32.to_int upper)
         in
         ([R.Lui (temp_reg, upper);
           R.I (R.Addi, temp_reg, temp_reg, lower)],
          temp_reg)
    | Var v ->
       (try
          (match VRMap.find v alloc with
           | InReg r -> ([], r)
           | OnStack i ->
              ([R.I (R.Lw, temp_reg, R.fp, 0 - i * Config.word_size - frame_offset)],
               temp_reg)
           | InMem s ->
              ([R.LoadLabel (temp_reg, s)],
               temp_reg)
          )
        with Not_found -> failwith ("Not found: " ^ (vr_to_string v))
       )
  in
  (* Return the  storing code, and register to write to.
   * Use X7 as a temp if necessary. *)
  let get_reg_w v : R.label R.inst list * R.reg =
    let temp_reg = R.X7 in
    try
      (match VRMap.find v alloc with
       | InReg r -> ([], r)
       | OnStack i ->
          ([R.Sw (R.fp, temp_reg, 0 - i * Config.word_size - frame_offset)],
           temp_reg)
       | InMem s ->
          ([R.StoreLabel (temp_reg, s)],
           temp_reg)
      )
    with Not_found -> failwith ("Not found: " ^ (vr_to_string v))
  in
  let iop_of_binop =
    function BAdd -> R.Addi | BXor -> R.Xori | BOr -> R.Ori | BAnd -> R.Andi
             | _ -> raise (Invalid_argument "iop_of_binop")
  in
  let rop_of_binop =
    function BAdd -> R.Add | BSub -> R.Sub | BMul -> R.Mul | BDiv -> R.Div
             | BAnd -> R.And | BOr -> R.Or | BXor -> R.Xor
  in
  let (riscops, rest) =
    match insts with
    | [] -> ([], [])
    | (ICmp (d, c, _, v1, v2))::t ->
       let (read1, rs1) = get_reg_r_val true v1 in
       let (read2, rs2) = get_reg_r_val false v2 in
       let (write_d, rd) = get_reg_w d in
       let rec get_code c =
         match c with
         (* Some bit hacks here *)
         | CEq -> [R.R (R.Sub, rd, rs1, rs2);
                   R.I (R.Sltiu, rd, rd, 1)]
         | CSLt -> [R.R (R.Slt, rd, rs1, rs2)]
         | CSGt -> [R.R (R.Slt, rd, rs2, rs1)]
         | CNe -> (get_code CEq) @ [R.I (R.Xori, rd, rd, 1)]
         | CSLe -> (get_code CSGt) @ [R.I (R.Xori, rd, rd, 1)]
         | CSGe -> (get_code CSLt) @ [R.I (R.Xori, rd, rd, 1)]
       in
       (read1 @ read2 @ get_code c @ write_d,
        t)
    | (IRet _)::t ->
       (* We've already moved the return value into a0 in to_a_func *)
       ([], t)
    | (ICall (d, _, f, args))::t ->
       let rec place_args args arg_regs =
         match (args, arg_regs) with
         | ([], _) -> []
         | ((_, a1)::args, r1::arg_regs) ->
            (* We've already moved these arguments to registers in to_a_func *)
            place_args args arg_regs
         | (args, []) ->
            (* Put the rest of the arguments on the stack. *)
            (R.I (R.Addi, R.sp, R.sp, 0 - (Config.word_size * (List.length args))))
            ::(fst
                 (List.fold_left
                    (fun (is, i) (_, a) ->
                      let (read, rs) = get_reg_r_val true a in
                      (read @ [R.Sw (R.sp, rs, Config.word_size * i)] @ is, i + 1))
                    ([], 0)
                    args)
              )
       in
       let (readf, rf) = get_reg_r true f in
       let (writed, rd) = get_reg_w d in
       ((place_args args R.args)
        @
          readf
        @
          [R.I (R.Jalr, R.ra, rf, 0)]
        @
          (if List.length args > List.length R.args then
             [
               (* Pop the args off the stack *)
               R.I (R.Addi, R.sp, R.sp,
                    Config.word_size *
                      ((List.length args) - (List.length R.args)));
             ]
           else []
          )
        @
           (* Write the return value into rd *)
           [R.I (R.Addi, rd, R.retval, 0)]
        @ writed,
        t)
    | (IGetElementPtr (d, TStruct ts, p, [(_, v1); (_, v2)]))
      ::rest ->
       let (readp, rp) = get_reg_r true p in
       let (read1, rs1) = get_reg_r_val true v1 in
       let (read2, rs2) = get_reg_r_val false v2 in
       let (writed, rd) = get_reg_w d in
       (
         (* If we're really unlucky, rp and rd might both be X7, so we have
          * to be careful. *)
         readp
         @ (* We have to use rp before we load v1 *)
           [R.I (R.Addi, rd, rp, 0)]
         (* OK, now we're done with rp. *)
         @ read1
         @ [(* We haven't loaded v2 yet, so we can use x6 *)
             R.I (R.Addi, R.X6, R.zero, Config.word_size * (sizeof ctx (TStruct ts)));
             R.R (R.Mul, rs1, rs1, R.X6);
             R.R (R.Add, rd, rd, rs1)]
         @ read2
         @ [(* We're done with v1, so we can use x5 *)
             R.I (R.Addi, R.X5, R.zero, Config.word_size);
             R.R (R.Mul, rs2, rs2, R.X5);
             R.R (R.Add, rd, rd, rs2)]
         @ writed
       , rest)
    | (IGetElementPtr (d, t, p, [(_, v1)]))::rest ->
       let (readp, rp) = get_reg_r true p in
       let (read1, rs1) = get_reg_r_val true v1 in
       let (writed, rd) = get_reg_w d in
       (
         (* If we're really unlucky, rp and rd might both be X7, so we have
          * to be careful. *)
         readp
         @ (* We have to use rp before we load v1 *)
           [R.I (R.Addi, rd, rp, 0)]
         (* OK, now we're done with rp. *)
         @ read1
         @ [(* There's no v2, so we can use x6 *)
             R.I (R.Addi, R.X6, R.zero, Config.word_size * (sizeof ctx t));
             R.R (R.Mul, rs1, rs1, R.X6);
             R.R (R.Add, rd, rd, rs1)]
         @ writed
         , rest)
    | (IPhi _)::t ->
       failwith "shouldn't have phis"
    | (ISet (d, _, v))::t ->
            let (readp, rs) = get_reg_r_val true v in
            let (writed, rd) = get_reg_w d in
            (readp @ [R.R (R.Add, rd, rs, R.zero)] @ writed, t)
    | (ICast (d, ct, t1, v, t2))::t ->
            let (readp, rs) = get_reg_r_val true v in
            let (writed, rd) = get_reg_w d in
            (readp @ [R.R (R.Add, rd, rs, R.zero)] @ writed, t)
    | (IBinop (d, op, _, v1, v2))::t ->
            let (read1, rs1) = get_reg_r_val true v1 in
            let (read2, rs2) = get_reg_r_val false v2 in
            let (writed, rd) = get_reg_w d in
            (read1 @ read2 @ [R.R (rop_of_binop op, rd, rs1, rs2)] @ writed, t)
    | (ILabel l)::t -> ([R.Label l], t)
    | (IBr l)::t -> ([R.Jal (R.zero, l)], t)
    | (ICondBr (v, l1, l2))::t ->
            let (readp, rs) = get_reg_r_val true v in
            (
                readp
                @ [
                    R.B (R.Beq, rs, R.zero, l2);
                    R.Jal (R.zero, l1)
                ]
                , t)
    | (IAlloca (d, ty, n))::t ->
            let (writed, rd) = get_reg_w d in
            ([
                R.I (R.Addi, R.sp, R.sp, 0 - (n * Config.word_size * (sizeof ctx ty)));
                R.R (R.Add, rd, R.zero, R.sp)
            ]
            @ writed
            , t)
    | (ILoad (d, _, v))::t ->
            let (readp, rs) = get_reg_r_val true (Var v) in
            let (writed, rd) = get_reg_w d in
            (readp @ [R.I (R.Lw, rd, rs, 0)] @ writed , t)
    | (IStore (_, v, d))::t ->
            let (readp, rs) = get_reg_r_val true v in
            let (writed, rd) = get_reg_w d in
            (readp @ [R.Sw (rd, rs, 0)] @ writed , t)
    | i::_ ->
            (match i with
            | ILabel _ -> print_endline "Missing ILabel"
            | ISet _ -> print_endline "Missing ISet"
            | IBinop _ -> print_endline "Missing IBinop"
            | ICmp _ -> print_endline "Missing ICmp"
            | ICast _ -> print_endline "Missing ICast"
            | IBr _ -> print_endline "Missing IBr"
            | ICondBr _ -> print_endline "Missing ICondBr"
            | IRet _ -> print_endline "Missing IRet"
            | ICall _ -> print_endline "Missing ICall"
            | IGetElementPtr _ -> print_endline "Missing IGetElementPtr"
            | IAlloca _ -> print_endline "Missing IAlloca"
            | ILoad _ -> print_endline "Missing ILoad"
            | IStore _ -> print_endline "Missing IStore"
            | IPhi _ -> print_endline "Missing IPhi");
            raise Unimplemented
  in
  match rest with
  | [] -> insts_so_far @ riscops
  | _ ->
     codegen_body
       ctx
       rest
       (insts_so_far @ riscops)
       frame_offset
       alloc

(* Select which register allocation strategy we want to use *)
(*let regalloc_strategy = greedy*)
(* Uncomment this line to see your great graph-coloring allocator in action *)
let regalloc_strategy = grcolor

let print_alloc = ref false

let regalloc (glob_alloc: alloc_res VRMap.t) (cfg: Dfg.t) =
  let s_of_storage =
    function InReg r -> Printf.sprintf "Reg \t%s" (Riscv.Print.string_of_reg r)
           | OnStack n -> Printf.sprintf "Stk \t%d" n
           | InMem s -> Printf.sprintf "Heap\t%s" s
  in
  let (spilled, alloc) = regalloc_strategy glob_alloc cfg in
  if (!print_alloc) then
    (Printf.printf "\n%-30s\tLoc\tInfo\n" "Variable";
     Printf.printf "------------------------------------------------------------------------------\n";
     ignore
       (VRMap.mapi
          (fun vr s ->
            match vr with
            | Variable v -> Printf.printf "%-30s\t%s\n"
                              (LLVM.Print.string_of_var v)
                              (s_of_storage s)
            | Register _ -> ()
          )
          alloc);
     (spilled, alloc))
  else
    (spilled, alloc)

let codegen_func ctx glob_alloc (f: func) : R.label R.inst list =
  let f = to_a_func f in
  let insts = Array.to_list f.f_body in
  let rec alloc_args alloc args arg_regs =
    match (args, arg_regs) with
    | ([], _) -> alloc
    | ((_, v1)::args, r1::arg_regs) ->
       (* Argument v1 is in r1 *)
       (* We've already copied these in to_a_func *)
         (alloc_args alloc args arg_regs)
    | (args, []) ->
       (* Argument |arg_regs| + i is at fp - i - 1 *)
       fst
         (List.fold_left
            (fun (alloc, i) (_, v) ->
              (VRMap.add (Variable (Local v)) (OnStack (-1 - i)) alloc,
               i + 1)
            )
            (alloc, 0)
            args
         )
  in
  let alloc = alloc_args glob_alloc f.f_args R.args in
  let (spilled, alloc) =
    regalloc alloc (fst (Dfg.cfg_of_insts f.f_name insts))
  in

  let ret_code =
    [(* Pop most of stack frame *)
      R.I (R.Addi, R.sp, R.fp, 0 - Config.word_size);
      (* Restore fp *)
      R.I (R.Lw, R.fp, R.sp, Config.word_size);
      (* Restore return address *)
      R.I (R.Lw, R.ra, R.sp, 0);
      (* Pop rest of stack frame *)
      R.I (R.Addi, R.sp, R.sp, Config.word_size * 2);
      (* Jump *)
      R.I (R.Jalr, R.zero, R.ra, 0)]
  in
  let code = codegen_body ctx insts [] (Config.word_size * 2) alloc
  in
  [R.Label ("__" ^ f.f_name);
   (* Save old frame pointer *)
   R.I (R.Addi, R.sp, R.sp, 0 - Config.word_size * 2);
   R.Sw (R.sp, R.fp, Config.word_size);
   (* Save old return address *)
   R.Sw (R.sp, R.ra, 0);
   (* Set frame pointer *)
   R.I (R.Addi, R.fp, R.sp, Config.word_size);
   (* Make stack space for spilled locals *)
   R.I (R.Addi, R.sp, R.sp, 0 - Config.word_size * (List.length spilled));
  ]
  @
    code
  @
    ret_code

let heapoffset = Config.word_size
let heapsize_val = Config.word_size * 1024 * 1024
let heapsize = "heapsize"
let heapend = "heapend"
let heapptr = "heapptr"
let heapstart = "heapstart"

let lib =
  let t0 = R.X5 in
  let t1 = R.X6 in
  let t2 = R.X7 in
  let a0 = List.hd R.args in
  R.
  [Label "__malloc";
   LoadLabel (t0, heapptr);       (* t0 <- old alloc ptr *)
   LoadLabel (t2, heapend);       (* t2 <- heap limit *)
   R (Add, t1, t0, a0);           (* t1 <- new alloc ptr *)
   B (Blt, t2, t1, "__eom");      (* limit check *)
   StoreLabel (t1, heapptr);      (* store new alloc ptr *)
   I (Addi, a0, t0, 0);           (* a0 <- old alloc ptr *)
   I (Jalr, zero, ra, 0);         (* Return *)
   Label "__eom";
   R (Xor, a0, a0, a0);           (* a0 <- 0 *)
   I (Jalr, zero, ra, 0);         (* Return *)
  ]

let lib_funcs =
  ["__malloc"]

let lib_globals =
   [("malloc", 0);
    (heapptr, 0);
    (heapsize, heapsize_val);
    (heapend, 0);
    (heapstart, 0)]

let codegen_prog ((p, ctx): prog * typdefs) :
         (R.label R.inst list) * (R.symbol list) * ((R.symbol * int) list) =
  let t0 = R.X5 in
  let t1 = R.X6 in
  let t2 = R.X7 in
  let (_, glob_alloc, sgis, funcs, globs) =
    List.fold_left
      (fun (i, a, is, fs, gs) f ->
        (i + 1,
         VRMap.add (Variable (Global f.f_name))
           (InMem f.f_name)
           a,
         [R.LoadAddress (t0, "__" ^ f.f_name);
          R.StoreLabel (t0, f.f_name)] @ is,
         ("__" ^ f.f_name)::fs,
         (f.f_name, 0)::gs
        )
      )
      (0, VRMap.singleton (Variable (Global "malloc")) (InMem "malloc"),
       [R.LoadAddress (t0, "__malloc");
        R.StoreLabel (t0, "malloc")],
       [],
       [])
      p
  in
  (
    sgis
    @
      [R.LoadAddress (t0, heapstart);
       R.StoreLabel (t0, heapptr);
       R.LoadLabel (t1, heapsize);
       R.R (R.Add, t2, t0, t1);
       R.StoreLabel (t2, heapend);
       R.Jal (R.ra, "__main");
       R.Jal (R.ra, "__halt")]
    @
      List.concat (List.map (codegen_func ctx glob_alloc) p)
    @
      lib
    @
      [R.Label "__halt"]
  ,
    funcs @ lib_funcs,
  globs @ lib_globals
  )
