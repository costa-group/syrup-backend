(declare-fun a_1 () Int)
(declare-fun a_0 () Int)
(declare-fun t_1 () Int)
(declare-fun t_0 () Int)
(declare-fun u_2_1 () Bool)
(declare-fun u_2_2 () Bool)
(declare-fun u_1_1 () Bool)
(declare-fun u_1_2 () Bool)
(declare-fun u_0_1 () Bool)
(declare-fun u_0_2 () Bool)
(declare-fun x_2_1 () Int)
(declare-fun x_2_2 () Int)
(declare-fun x_1_1 () Int)
(declare-fun x_1_2 () Int)
(declare-fun x_0_1 () Int)
(declare-fun x_0_2 () Int)
(declare-fun u_2_0 () Bool)
(declare-fun u_1_0 () Bool)
(declare-fun u_0_0 () Bool)
(declare-fun x_2_0 () Int)
(declare-fun x_1_0 () Int)
(declare-fun x_0_0 () Int)
(assert (let ((a!1 (and (= u_0_1 true) (= u_1_1 u_0_0) (= u_2_1 u_1_0)))
      (a!3 (=> (= 1 t_0)
               (and u_0_0
                    (=> u_0_1 (= x_0_1 x_1_0))
                    (=> u_1_1 (= x_1_1 x_2_0))
                    (= u_0_1 u_1_0)
                    (= u_1_1 u_2_0)
                    (= u_2_1 false))))
      (a!4 (and (= u_0_1 u_0_0) (= u_1_1 u_1_0) (= u_2_1 u_2_0)))
      (a!8 (and (= u_0_2 true) (= u_1_2 u_0_1) (= u_2_2 u_1_1)))
      (a!10 (=> (= 1 t_1)
                (and u_0_1
                     (=> u_0_2 (= x_0_2 x_1_1))
                     (=> u_1_2 (= x_1_2 x_2_1))
                     (= u_0_2 u_1_1)
                     (= u_1_2 u_2_1)
                     (= u_2_2 false))))
      (a!11 (and (= u_0_2 u_0_1) (= u_1_2 u_1_1) (= u_2_2 u_2_1))))
(let ((a!2 (=> (= 0 t_0)
               (and (not u_2_0)
                    (= x_0_1 a_0)
                    (=> u_1_1 (= x_1_1 x_0_0))
                    (=> u_2_1 (= x_2_1 x_1_0))
                    a!1)))
      (a!5 (=> (= 2 t_0)
               (and u_0_0
                    u_1_0
                    (= x_0_1 x_1_0)
                    (= x_1_1 x_0_0)
                    (=> u_2_1 (= x_2_1 x_2_0))
                    a!4)))
      (a!6 (=> (= 3 t_0)
               (and u_0_0
                    (not u_2_0)
                    (= x_0_1 x_0_0)
                    (= x_1_1 x_0_0)
                    (=> u_2_1 (= x_2_1 x_1_0))
                    a!1)))
      (a!7 (=> (= 4 t_0)
               (and (=> u_0_1 (= x_0_1 x_0_0))
                    (=> u_1_1 (= x_1_1 x_1_0))
                    (=> u_2_1 (= x_2_1 x_2_0))
                    a!4)))
      (a!9 (=> (= 0 t_1)
               (and (not u_2_1)
                    (= x_0_2 a_1)
                    (=> u_1_2 (= x_1_2 x_0_1))
                    (=> u_2_2 (= x_2_2 x_1_1))
                    a!8)))
      (a!12 (=> (= 2 t_1)
                (and u_0_1
                     u_1_1
                     (= x_0_2 x_1_1)
                     (= x_1_2 x_0_1)
                     (=> u_2_2 (= x_2_2 x_2_1))
                     a!11)))
      (a!13 (=> (= 3 t_1)
                (and u_0_1
                     (not u_2_1)
                     (= x_0_2 x_0_1)
                     (= x_1_2 x_0_1)
                     (=> u_2_2 (= x_2_2 x_1_1))
                     a!8)))
      (a!14 (=> (= 4 t_1)
                (and (=> u_0_2 (= x_0_2 x_0_1))
                     (=> u_1_2 (= x_1_2 x_1_1))
                     (=> u_2_2 (= x_2_2 x_2_1))
                     a!11))))
  (and (= u_0_0 false)
       (= u_1_0 false)
       (= u_2_0 false)
       (= x_0_2 146)
       (= u_0_2 true)
       (= u_1_2 false)
       (= u_2_2 false)
       true
       a!2
       a!3
       a!5
       a!6
       a!7
       (or (= 0 t_0) (= 1 t_0) (= 2 t_0) (= 3 t_0) (= 4 t_0))
       a!9
       a!10
       a!12
       a!13
       a!14
       (or (= 0 t_1) (= 1 t_1) (= 2 t_1) (= 3 t_1) (= 4 t_1))
       (=> (= t_0 4) (= t_1 4))
       (<= 0 a_0)
       (< a_0 1024)
       (<= 0 a_1)
       (< a_1 1024)))))
(assert-soft (= 4 t_0) :weight 2 :id gas)
(assert-soft (or (= 4 t_0) (= 1 t_0)) :weight 1 :id gas)
(assert-soft (= 4 t_1) :weight 2 :id gas)
(assert-soft (or (= 4 t_1) (= 1 t_1)) :weight 1 :id gas)
(check-sat)
(get-model)
(get-objectives)