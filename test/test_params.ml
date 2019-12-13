open Core
open OUnit2
open Opti
open Instruction
open User_params

let predef = [mk_PUSH; mk_POP; mk_SWAP; mk_DUP; mk_NOP]

let ups_0 = {
  n = 4;
  k = 3;
  ss = ["s_0";];
  src_ws = [Const "s_0"];
  tgt_ws = [Val 146; Const "s_0"];
  user_instrs = []
}

let sk = [

  "Words on source stack are set correctly">:: (fun _ ->
      let ps = Params.mk predef ups_0 in
      assert_equal
        ~cmp:[%eq: Z3.Expr.t list]
        ~printer:(List.to_string ~f:Z3.Expr.to_string)
        [Consts.mk_user_const "s_0"]
        ps.src_ws
    );

  "Empty source stack">:: (fun _ ->
      let ps = Params.mk predef {ups_0 with src_ws = []} in
      assert_equal
        ~cmp:[%eq: Z3.Expr.t list]
        ~printer:(List.to_string ~f:Z3.Expr.to_string)
        []
        ps.src_ws
    );

  "Words on target stack are set correctly">:: (fun _ ->
      let ps = Params.mk predef ups_0 in
      assert_equal
        ~cmp:[%eq: Z3.Expr.t list]
        ~printer:(List.to_string ~f:Z3.Expr.to_string)
        [Z3util.num 146; Consts.mk_user_const "s_0"]
        ps.tgt_ws
    );

  "Empty target stack">:: (fun _ ->
      let ps = Params.mk predef {ups_0 with tgt_ws = []} in
      assert_equal
        ~cmp:[%eq: Z3.Expr.t list]
        ~printer:(List.to_string ~f:Z3.Expr.to_string)
        []
        ps.tgt_ws
    );

  ]

let add_1 = {
  id = "ADD_1";
  opcode = "00";
  disasm = "ADD";
  inpt_sk = [Const "s_0"; Val 1];
  outpt_sk = [Const "s_1"];
  gas = 3;
}

let ups_1 =
  { n = 4;
    k = 3;
    ss = ["s_0"; "s_1"];
    src_ws = [Const "s_0"];
    tgt_ws = [Val 146; Const "s_1"];
    user_instrs = [add_1]
  }

let timestamp = {
  id = "TIMESTAMP";
  opcode = "42";
  disasm = "TIMESTAMP";
  inpt_sk = [];
  outpt_sk = [Const "s_2"];
  gas = 2;
}

let ups_2 =
  { n = 4;
    k = 3;
    ss = ["s_0"; "s_1"; "s_2"];
    src_ws = [Const "s_0"];
    tgt_ws = [Const "s_2"; Const "s_1"];
    user_instrs = [add_1; timestamp]
  }


let user_instrs = [

  "No user_instrs">:: (fun _ ->
      let ps = Params.mk predef ups_0 in
      assert_equal
        ~cmp:[%eq: int] ~printer:[%show: int]
        (List.length predef)
        (List.length ps.instrs)
    );

  "One user_instrs">:: (fun _ ->
      let ps = Params.mk predef ups_1 in
      assert_equal
        ~cmp:[%eq: int] ~printer:[%show: int]
        ((List.length predef) + 1)
        (List.length ps.instrs)
    );

  "Two user_instrs">:: (fun _ ->
      let ps = Params.mk predef ups_2 in
      assert_equal
        ~cmp:[%eq: int] ~printer:[%show: int]
        ((List.length predef) + 2)
        (List.length ps.instrs)
    );

  "Contains instr with id ADD_1">:: (fun _ ->
      let ps = Params.mk predef ups_1 in
      assert_bool ""
        (List.exists ps.instrs ~f:(fun iota -> iota.id = "ADD_1"))
    );

  "Instruction with id ADD_1 has correct gas and opcode">:: (fun _ ->
      let ps = Params.mk predef ups_1 in
      let iota = List.find_exn ps.instrs ~f:(fun iota -> iota.id = "ADD_1") in
      assert_bool ""
        (iota.gas = add_1.gas && iota.opcode = add_1.opcode)
    );

  "Contains instr with id TIMESTAMP">:: (fun _ ->
      let ps = Params.mk predef ups_2 in
      assert_bool ""
        (List.exists ps.instrs ~f:(fun iota -> iota.id = "TIMESTAMP"))
    );

]

let suite = "suite" >::: sk @ user_instrs

let () =
  run_test_tt_main suite
