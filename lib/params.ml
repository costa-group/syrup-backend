open Core
open Instruction

type params = {
  instrs : Instruction.t list;
  map : (Instruction.t * int) list;
  k : int;
  n : int;
  max_wsz : Z.t;
  src_ws : Z3.Expr.expr list; (* words on source stack, top of stack at postion 0 *)
  tgt_ws : Z3.Expr.expr list;
}

let mk ~k:k ~n:n ~src_ws:src_ws ~tgt_ws:tgt_ws instrs =
  let max_wsz = Z.pow (Z.of_int 2) 10 in
  let map = List.mapi instrs ~f:(fun i iota -> (iota, i)) in
  { instrs = instrs;
    map = map;
    k = k;
    n = n;
    max_wsz = max_wsz;
    src_ws = src_ws;
    tgt_ws = tgt_ws;
  }

let enc_instr_name params iota =
  List.Assoc.find_exn (params.map) iota ~equal:(fun i1 i2 -> i1.name = i2.name) |> Z3util.num

let show_map params =
  let show_pair (iota, i) = iota.name ^ " : " ^ [%show: int] i ^ "; " in
  List.fold params.map ~init:"" ~f:(fun m im -> m ^ (show_pair im))

let nop_enc_name params =
  let (_, i) = List.find_exn (params.map) ~f:(fun (iota, _) -> iota.name = "NOP")
  in i
