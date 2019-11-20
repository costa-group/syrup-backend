open Core
open Z3util
open Consts
open Instruction
open Params
open Sk_util

let pick_instr params j =
  let t_j = mk_t j in
  let instrs = params.instrs in
  let instr iota = Params.enc_instr_name params iota in
  let open Z3Ops in
  conj (List.map instrs ~f:(fun iota -> (instr iota == t_j) ==> (iota.effect params.k j))) &&
  disj (List.map instrs ~f:(fun iota -> (instr iota == t_j)))

let nop_propagate params =
  let t j = mk_t j in
  let t' j = mk_t (j+1) in
  let ns = List.range ~start:`inclusive ~stop:`exclusive 0 (params.n - 1) in
  let nop = Z3util.num (Params.nop_enc_name params) in
  let open Z3Ops in
  conj (List.map ns ~f:(fun j -> (t j == nop) ==> (t' j == nop)))

let enc_block params =
  let ns = List.range ~start:`inclusive ~stop:`exclusive 0 params.n in
  let open Z3Ops in
  conj (List.map ns ~f:(pick_instr params)) && nop_propagate params

let enc_block_192 params =
  let s_0 = mk_s 0 (* =^= 146 *) in
  let s_2 = Z3util.intconst ("sk_x") (* =^= input variable on stack *) in
  let s_1 = mk_s 1 (* =^= ADD_1 *) in
  let source_sk = sk_init params.k 0 [s_2] in
  let c_t =
    let uT_0 = mk_u 0 params.n and uT_1 = mk_u 1 params.n in
    let xT_0 = mk_x 0 params.n in
    let open Z3Ops in
    (s_0 == num 146) && s_0 == xT_0 && uT_0 && uT_1
  in
  let
    target =
    let xT_1 = mk_x 1 params.n in
    let x_0_0 = mk_x 0 0 in
    let open Z3Ops in
    s_1 == xT_1 && (x_0_0 == s_2)
  in
  let open Z3Ops in
  foralls params.ss (target ==> source_sk && c_t && (enc_block params))

let enc_block_ex1 params =
  let s_0 = mk_s 0 (* =^= 146 *) in
  let source_sk = sk_init params.k 0 [] in
  let target_sk = sk_init params.k (params.n-1) [s_0] in
  let cstrs = let open Z3Ops in s_0 == num 146 in
  let open Z3Ops in
  foralls params.ss (source_sk && target_sk && cstrs && enc_block params)
