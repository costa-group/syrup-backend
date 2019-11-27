open Core
open Z3util
open Consts
open Sk_util

type t = {
  id : string;
  alpha : int;
  delta : int;
  effect : int -> int -> Z3.Expr.expr;
} [@@deriving show {with_path = false}]

let mk id alpha delta effect = {
    id = id;
    alpha = alpha;
    delta = delta;
    effect = effect;
  }

let enc_push diff alpha k j  =
  let x'_0 = mk_x' 0 j in
  let u_k = mk_u (k-1) j in
  let a = mk_a j in
  let open Z3Ops in
  ~! u_k &&
  (x'_0 == a && enc_prsv k j diff alpha && enc_sk_utlz k j diff)

let mk_PUSH =
  let id = "PUSH" in
  let alpha = 1 and delta = 0 in
  let diff = alpha - delta in
  mk id alpha delta (enc_push diff alpha)

let enc_pop diff alpha k j =
  let u_0 = mk_u 0 j in
  let open Z3Ops in
  u_0 && (enc_prsv k j diff alpha && enc_sk_utlz k j diff)

let mk_POP =
  let id = "POP" in
  let alpha = 0 and delta = 1 in
  let diff = alpha - delta in
  mk id alpha delta (enc_pop diff alpha)

let enc_swap diff alpha k j =
  let x_0 = mk_x 0 j and x'_0 = mk_x' 0 j in
  let x_1 = mk_x 1 j and x'_1 = mk_x' 1 j in
  let u_0 = mk_u 0 j and u_1 = mk_u 1 j in
  let open Z3Ops in
  u_0 && u_1 &&
  ((x'_0 == x_1) && (x'_1 == x_0)) && enc_prsv k j diff alpha && enc_sk_utlz k j diff

let mk_SWAP =
  let id = "SWAP" in
  let alpha = 2 and delta = 2 in
  let diff = alpha - delta in
  mk id alpha delta (enc_swap diff alpha)

let enc_dup diff alpha k j =
  let x_0 = mk_x 0 j and x'_0 = mk_x' 0 j in
  let x'_1 = mk_x' 1 j in
  let u_0 = mk_u 0 j and u_l = mk_u (k-1) j in
  let open Z3Ops in
  u_0 && ~! u_l &&
  ((x'_0 == x_0) && (x'_1 == x_0) && enc_prsv k j diff alpha && enc_sk_utlz k j diff)

let mk_DUP =
  let id = "DUP" in
  let alpha = 2 and delta = 1 in
  let diff = alpha - delta in
  mk id alpha delta (enc_dup diff alpha)

let enc_nop diff alpha k j =
  let open Z3Ops in
  enc_prsv k j diff alpha  && enc_sk_utlz k j diff

let mk_NOP =
  let id = "NOP" in
  let alpha = 0 and delta = 0 in
  let diff = alpha - delta in
  mk id alpha delta (enc_nop diff alpha)

let mk_bin_op id enc_sk =
  let alpha = 1 and delta = 2 in
  let diff = alpha - delta in
  let enc k j =
    let u_0 = mk_u 0 j and u_1 = mk_u 1 j in
    let open Z3Ops in
    u_0 && u_1 && enc_sk j &&
    enc_prsv k j diff alpha && enc_sk_utlz k j diff
  in
  mk id alpha delta enc

let enc_block_192 j =
  let s_1 = mk_s 1 (* =^= ADD_1 *) in
  let sk_x = Z3util.intconst ("sk_x") (* =^= input variable on stack *) in
  let x_0 = mk_x 0 j and x'_0 = mk_x' 0 j in
  let x_1 = mk_x 1 j in
  let open Z3Ops in x_0 == sk_x && x_1 == num 1 && x'_0 == s_1

let enc_block_192_rev j =
  let s_1 = mk_s 1 (* =^= ADD_1 *) in
  let sk_x = Z3util.intconst ("sk_x") (* =^= input variable on stack *) in
  let x_0 = mk_x 0 j and x'_0 = mk_x' 0 j in
  let x_1 = mk_x 1 j in
  let open Z3Ops in x_1 == sk_x && x_0 == num 1 && x'_0 == s_1
