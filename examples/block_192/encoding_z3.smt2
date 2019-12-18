(set-logic QF_LIA)
(declare-fun a_3 () Int)
(declare-fun a_2 () Int)
(declare-fun a_1 () Int)
(declare-fun a_0 () Int)
(declare-fun t_3 () Int)
(declare-fun t_2 () Int)
(declare-fun t_1 () Int)
(declare-fun t_0 () Int)
(declare-fun s_1 () Int)
(declare-fun x_0_4 () Int)
(declare-fun x_1_3 () Int)
(declare-fun u_1_3 () Bool)
(declare-fun s_0 () Int)
(declare-fun x_0_3 () Int)
(declare-fun u_0_3 () Bool)
(declare-fun u_2_4 () Bool)
(declare-fun u_2_3 () Bool)
(declare-fun u_1_4 () Bool)
(declare-fun u_0_4 () Bool)
(declare-fun x_2_3 () Int)
(declare-fun x_1_4 () Int)
(declare-fun x_2_4 () Int)
(declare-fun x_1_2 () Int)
(declare-fun u_1_2 () Bool)
(declare-fun x_0_2 () Int)
(declare-fun u_0_2 () Bool)
(declare-fun u_2_2 () Bool)
(declare-fun x_2_2 () Int)
(declare-fun x_1_1 () Int)
(declare-fun u_1_1 () Bool)
(declare-fun x_0_1 () Int)
(declare-fun u_0_1 () Bool)
(declare-fun u_2_1 () Bool)
(declare-fun x_2_1 () Int)
(declare-fun x_1_0 () Int)
(declare-fun u_1_0 () Bool)
(declare-fun x_0_0 () Int)
(declare-fun u_0_0 () Bool)
(declare-fun u_2_0 () Bool)
(declare-fun x_2_0 () Int)
(assert (let ((a!1 (and (= u_0_1 true) (= u_1_1 u_0_0) (= u_2_1 u_1_0)))
      (a!3 (and (= u_0_1 u_1_0) (= u_1_1 u_2_0) (= u_2_1 false)))
      (a!5 (and (= u_0_1 u_0_0) (= u_1_1 u_1_0) (= u_2_1 u_2_0)))
      (a!10 (and (= u_0_2 true) (= u_1_2 u_0_1) (= u_2_2 u_1_1)))
      (a!12 (and (= u_0_2 u_1_1) (= u_1_2 u_2_1) (= u_2_2 false)))
      (a!14 (and (= u_0_2 u_0_1) (= u_1_2 u_1_1) (= u_2_2 u_2_1)))
      (a!19 (and (= u_0_3 true) (= u_1_3 u_0_2) (= u_2_3 u_1_2)))
      (a!21 (and (= u_0_3 u_1_2) (= u_1_3 u_2_2) (= u_2_3 false)))
      (a!23 (and (= u_0_3 u_0_2) (= u_1_3 u_1_2) (= u_2_3 u_2_2)))
      (a!28 (and (= u_0_4 true) (= u_1_4 u_0_3) (= u_2_4 u_1_3)))
      (a!30 (and (= u_0_4 u_1_3) (= u_1_4 u_2_3) (= u_2_4 false)))
      (a!32 (and (= u_0_4 u_0_3) (= u_1_4 u_1_3) (= u_2_4 u_2_3))))
(let ((a!2 (=> (= 0 t_0)
               (and (=> u_1_1 (= x_1_1 x_0_0))
                    (=> u_2_1 (= x_2_1 x_1_0))
                    a!1
                    true
                    (= x_0_1 a_0)
                    (not u_2_0))))
      (a!4 (=> (= 1 t_0)
               (and (=> u_0_1 (= x_0_1 x_1_0))
                    (=> u_1_1 (= x_1_1 x_2_0))
                    a!3
                    (and u_0_0 (= x_0_0 x_0_0))
                    (and true true))))
      (a!6 (=> (= 2 t_0)
               (and (=> u_2_1 (= x_2_1 x_2_0))
                    a!5
                    (and u_0_0 (= x_0_0 x_0_0))
                    u_1_0
                    (= x_1_0 x_1_0)
                    (= x_0_1 x_1_0)
                    (= x_1_1 x_0_0)
                    true)))
      (a!7 (=> (= 3 t_0)
               (and (=> u_2_1 (= x_2_1 x_1_0))
                    a!1
                    (and u_0_0 (= x_0_0 x_0_0))
                    (= x_0_1 x_0_0)
                    (= x_1_1 x_0_0)
                    (not u_2_0))))
      (a!8 (=> (= 4 t_0)
               (and (=> u_0_1 (= x_0_1 x_0_0))
                    (=> u_1_1 (= x_1_1 x_1_0))
                    (=> u_2_1 (= x_2_1 x_2_0))
                    a!5
                    (and true (and true true)))))
      (a!9 (=> (= 5 t_0)
               (and (=> u_1_1 (= x_1_1 x_2_0))
                    a!3
                    u_0_0
                    (= x_0_0 s_0)
                    u_1_0
                    (= x_1_0 1)
                    (= x_0_1 s_1)
                    true)))
      (a!11 (=> (= 0 t_1)
                (and (=> u_1_2 (= x_1_2 x_0_1))
                     (=> u_2_2 (= x_2_2 x_1_1))
                     a!10
                     true
                     (= x_0_2 a_1)
                     (not u_2_1))))
      (a!13 (=> (= 1 t_1)
                (and (=> u_0_2 (= x_0_2 x_1_1))
                     (=> u_1_2 (= x_1_2 x_2_1))
                     a!12
                     (and u_0_1 (= x_0_1 x_0_1))
                     (and true true))))
      (a!15 (=> (= 2 t_1)
                (and (=> u_2_2 (= x_2_2 x_2_1))
                     a!14
                     (and u_0_1 (= x_0_1 x_0_1))
                     u_1_1
                     (= x_1_1 x_1_1)
                     (= x_0_2 x_1_1)
                     (= x_1_2 x_0_1)
                     true)))
      (a!16 (=> (= 3 t_1)
                (and (=> u_2_2 (= x_2_2 x_1_1))
                     a!10
                     (and u_0_1 (= x_0_1 x_0_1))
                     (= x_0_2 x_0_1)
                     (= x_1_2 x_0_1)
                     (not u_2_1))))
      (a!17 (=> (= 4 t_1)
                (and (=> u_0_2 (= x_0_2 x_0_1))
                     (=> u_1_2 (= x_1_2 x_1_1))
                     (=> u_2_2 (= x_2_2 x_2_1))
                     a!14
                     (and true (and true true)))))
      (a!18 (=> (= 5 t_1)
                (and (=> u_1_2 (= x_1_2 x_2_1))
                     a!12
                     u_0_1
                     (= x_0_1 s_0)
                     u_1_1
                     (= x_1_1 1)
                     (= x_0_2 s_1)
                     true)))
      (a!20 (=> (= 0 t_2)
                (and (=> u_1_3 (= x_1_3 x_0_2))
                     (=> u_2_3 (= x_2_3 x_1_2))
                     a!19
                     true
                     (= x_0_3 a_2)
                     (not u_2_2))))
      (a!22 (=> (= 1 t_2)
                (and (=> u_0_3 (= x_0_3 x_1_2))
                     (=> u_1_3 (= x_1_3 x_2_2))
                     a!21
                     (and u_0_2 (= x_0_2 x_0_2))
                     (and true true))))
      (a!24 (=> (= 2 t_2)
                (and (=> u_2_3 (= x_2_3 x_2_2))
                     a!23
                     (and u_0_2 (= x_0_2 x_0_2))
                     u_1_2
                     (= x_1_2 x_1_2)
                     (= x_0_3 x_1_2)
                     (= x_1_3 x_0_2)
                     true)))
      (a!25 (=> (= 3 t_2)
                (and (=> u_2_3 (= x_2_3 x_1_2))
                     a!19
                     (and u_0_2 (= x_0_2 x_0_2))
                     (= x_0_3 x_0_2)
                     (= x_1_3 x_0_2)
                     (not u_2_2))))
      (a!26 (=> (= 4 t_2)
                (and (=> u_0_3 (= x_0_3 x_0_2))
                     (=> u_1_3 (= x_1_3 x_1_2))
                     (=> u_2_3 (= x_2_3 x_2_2))
                     a!23
                     (and true (and true true)))))
      (a!27 (=> (= 5 t_2)
                (and (=> u_1_3 (= x_1_3 x_2_2))
                     a!21
                     u_0_2
                     (= x_0_2 s_0)
                     u_1_2
                     (= x_1_2 1)
                     (= x_0_3 s_1)
                     true)))
      (a!29 (=> (= 0 t_3)
                (and (=> u_1_4 (= x_1_4 x_0_3))
                     (=> u_2_4 (= x_2_4 x_1_3))
                     a!28
                     true
                     (= x_0_4 a_3)
                     (not u_2_3))))
      (a!31 (=> (= 1 t_3)
                (and (=> u_0_4 (= x_0_4 x_1_3))
                     (=> u_1_4 (= x_1_4 x_2_3))
                     a!30
                     (and u_0_3 (= x_0_3 x_0_3))
                     (and true true))))
      (a!33 (=> (= 2 t_3)
                (and (=> u_2_4 (= x_2_4 x_2_3))
                     a!32
                     (and u_0_3 (= x_0_3 x_0_3))
                     u_1_3
                     (= x_1_3 x_1_3)
                     (= x_0_4 x_1_3)
                     (= x_1_4 x_0_3)
                     true)))
      (a!34 (=> (= 3 t_3)
                (and (=> u_2_4 (= x_2_4 x_1_3))
                     a!28
                     (and u_0_3 (= x_0_3 x_0_3))
                     (= x_0_4 x_0_3)
                     (= x_1_4 x_0_3)
                     (not u_2_3))))
      (a!35 (=> (= 4 t_3)
                (and (=> u_0_4 (= x_0_4 x_0_3))
                     (=> u_1_4 (= x_1_4 x_1_3))
                     (=> u_2_4 (= x_2_4 x_2_3))
                     a!32
                     (and true (and true true)))))
      (a!36 (=> (= 5 t_3)
                (and (=> u_1_4 (= x_1_4 x_2_3))
                     a!30
                     u_0_3
                     (= x_0_3 s_0)
                     u_1_3
                     (= x_1_3 1)
                     (= x_0_4 s_1)
                     true))))
  (and (= x_0_0 s_0)
       (= u_0_0 true)
       (= u_1_0 false)
       (= u_2_0 false)
       (= x_0_4 146)
       (= u_0_4 true)
       (= x_1_4 s_1)
       (= u_1_4 true)
       (= u_2_4 false)
       (= s_0
          115792089237316195423570985008687907853269984665640564039457584007913129639936)
       (= s_1
          115792089237316195423570985008687907853269984665640564039457584007913129639937)
       a!2
       a!4
       a!6
       a!7
       a!8
       a!9
       (or (= 0 t_0) (= 1 t_0) (= 2 t_0) (= 3 t_0) (= 4 t_0) (= 5 t_0))
       a!11
       a!13
       a!15
       a!16
       a!17
       a!18
       (or (= 0 t_1) (= 1 t_1) (= 2 t_1) (= 3 t_1) (= 4 t_1) (= 5 t_1))
       a!20
       a!22
       a!24
       a!25
       a!26
       a!27
       (or (= 0 t_2) (= 1 t_2) (= 2 t_2) (= 3 t_2) (= 4 t_2) (= 5 t_2))
       a!29
       a!31
       a!33
       a!34
       a!35
       a!36
       (or (= 0 t_3) (= 1 t_3) (= 2 t_3) (= 3 t_3) (= 4 t_3) (= 5 t_3))
       (=> (= t_0 4) (= t_1 4))
       (=> (= t_1 4) (= t_2 4))
       (=> (= t_2 4) (= t_3 4))
       (<= 0 a_0)
       (< a_0
          115792089237316195423570985008687907853269984665640564039457584007913129639936)
       (<= 0 a_1)
       (< a_1
          115792089237316195423570985008687907853269984665640564039457584007913129639936)
       (<= 0 a_2)
       (< a_2
          115792089237316195423570985008687907853269984665640564039457584007913129639936)
       (<= 0 a_3)
       (< a_3
          115792089237316195423570985008687907853269984665640564039457584007913129639936)))))
(assert-soft (or (= 4 t_0) (= 1 t_0)) :weight 1 :id gas)
(assert-soft (= 4 t_0) :weight 2 :id gas)
(assert-soft (or (= 4 t_1) (= 1 t_1)) :weight 1 :id gas)
(assert-soft (= 4 t_1) :weight 2 :id gas)
(assert-soft (or (= 4 t_2) (= 1 t_2)) :weight 1 :id gas)
(assert-soft (= 4 t_2) :weight 2 :id gas)
(assert-soft (or (= 4 t_3) (= 1 t_3)) :weight 1 :id gas)
(assert-soft (= 4 t_3) :weight 2 :id gas)
(check-sat)
(get-model)
(get-objectives)
