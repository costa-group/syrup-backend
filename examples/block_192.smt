; 
(set-info :status unknown)
(declare-fun a_3 () Int)
(declare-fun a_2 () Int)
(declare-fun a_1 () Int)
(declare-fun a_0 () Int)
(declare-fun t_3 () Int)
(declare-fun t_2 () Int)
(declare-fun t_1 () Int)
(declare-fun t_0 () Int)
(declare-fun x_2_3 () Int)
(declare-fun x_1_4 () Int)
(declare-fun x_0_4 () Int)
(declare-fun x_1_3 () Int)
(declare-fun x_0_3 () Int)
(declare-fun x_2_4 () Int)
(declare-fun x_2_2 () Int)
(declare-fun x_1_2 () Int)
(declare-fun x_0_2 () Int)
(declare-fun x_2_1 () Int)
(declare-fun x_1_1 () Int)
(declare-fun x_0_1 () Int)
(declare-fun x_2_0 () Int)
(declare-fun x_1_0 () Int)
(declare-fun x_0_0 () Int)
(declare-fun s_0 () Int)
(declare-fun u_2_4 () Bool)
(declare-fun u_2_3 () Bool)
(declare-fun u_1_4 () Bool)
(declare-fun u_1_3 () Bool)
(declare-fun u_0_4 () Bool)
(declare-fun u_0_3 () Bool)
(declare-fun u_2_2 () Bool)
(declare-fun u_1_2 () Bool)
(declare-fun u_0_2 () Bool)
(declare-fun u_2_1 () Bool)
(declare-fun u_1_1 () Bool)
(declare-fun u_0_1 () Bool)
(declare-fun u_2_0 () Bool)
(declare-fun u_1_0 () Bool)
(declare-fun u_0_0 () Bool)
(assert
 (forall ((s_1 Int) (sk_x Int) )(let (($x44 (and (<= 0 a_2) (< a_2 1024))))
 (let (($x40 (and (<= 0 a_1) (< a_1 1024))))
 (let (($x36 (and (<= 0 a_0) (< a_0 1024))))
 (let (($x57 (= t_2 1028)))
 (let (($x52 (= t_1 1028)))
 (let (($x58 (=> $x52 $x57)))
 (let (($x55 (=> (= t_0 1028) $x52)))
 (let (($x63 (and (and $x55 $x58 (=> $x57 (= t_3 1028))) (and $x36 $x40 $x44 (and (<= 0 a_3) (< a_3 1024))))))
 (let (($x306 (or (= 1024 t_3) (= 1025 t_3) (= 1026 t_3) (= 1027 t_3) (= 1028 t_3) (= 1029 t_3))))
 (let (($x361 (and (=> u_1_4 (= x_1_4 x_2_3)) (and (= u_0_4 u_1_3) (= u_1_4 u_2_3) (= u_2_4 false)))))
 (let (($x384 (and (and (= x_0_3 sk_x) (and (= x_1_3 1) (= x_0_4 s_1))) $x361)))
 (let (($x358 (and (=> u_0_4 (= x_0_4 x_0_3)) (=> u_1_4 (= x_1_4 x_1_3)) (=> u_2_4 (= x_2_4 x_2_3)))))
 (let (($x359 (and $x358 (and (= u_0_4 u_0_3) (= u_1_4 u_1_3) (= u_2_4 u_2_3)))))
 (let (($x348 (and (=> u_2_4 (= x_2_4 x_1_3)) (and (= u_0_4 true) (= u_1_4 u_0_3) (= u_2_4 u_1_3)))))
 (let (($x312 (= x_1_4 x_0_3)))
 (let (($x353 (and u_0_3 (and (not u_2_3) (and (= x_0_4 x_0_3) (and $x312 $x348))))))
 (let (($x342 (and (=> u_2_4 (= x_2_4 x_2_3)) (and (= u_0_4 u_0_3) (= u_1_4 u_1_3) (= u_2_4 u_2_3)))))
 (let (($x347 (=> (= 1026 t_3) (and u_0_3 (and u_1_3 (and (and (= x_0_4 x_1_3) $x312) $x342))))))
 (let (($x332 (and (=> u_0_4 (= x_0_4 x_1_3)) (=> u_1_4 (= x_1_4 x_2_3)))))
 (let (($x333 (and $x332 (and (= u_0_4 u_1_3) (= u_1_4 u_2_3) (= u_2_4 false)))))
 (let (($x318 (and (and (=> u_1_4 $x312) (=> u_2_4 (= x_2_4 x_1_3))) (and (= u_0_4 true) (= u_1_4 u_0_3) (= u_2_4 u_1_3)))))
 (let (($x323 (=> (= 1024 t_3) (and (not u_2_3) (and (= x_0_4 a_3) $x318)))))
 (let (($x388 (and $x323 (=> (= 1025 t_3) (and u_0_3 $x333)) $x347 (=> (= 1027 t_3) $x353) (=> (= 1028 t_3) $x359) (=> (= 1029 t_3) (and u_0_3 (and u_1_3 $x384))))))
 (let (($x227 (= 1028 t_2)))
 (let (($x226 (= 1027 t_2)))
 (let (($x225 (= 1026 t_2)))
 (let (($x224 (= 1025 t_2)))
 (let (($x223 (= 1024 t_2)))
 (let (($x254 (and (= u_0_3 u_1_2) (= u_1_3 u_2_2) (= u_2_3 false))))
 (let (($x258 (=> u_1_3 (= x_1_3 x_2_2))))
 (let (($x394 (and (and (= x_0_2 sk_x) (and (= x_1_2 1) (= x_0_3 s_1))) (and $x258 $x254))))
 (let (($x263 (= u_2_3 u_2_2)))
 (let (($x264 (= u_1_3 u_1_2)))
 (let (($x265 (= u_0_3 u_0_2)))
 (let (($x266 (and $x265 $x264 $x263)))
 (let (($x267 (= x_2_3 x_2_2)))
 (let (($x268 (=> u_2_3 $x267)))
 (let (($x285 (and (=> u_0_3 (= x_0_3 x_0_2)) (=> u_1_3 (= x_1_3 x_1_2)) $x268)))
 (let (($x287 (=> $x227 (and $x285 $x266))))
 (let (($x232 (= u_2_3 u_1_2)))
 (let (($x234 (= u_1_3 u_0_2)))
 (let (($x236 (= u_0_3 true)))
 (let (($x237 (and $x236 $x234 $x232)))
 (let (($x242 (= x_2_3 x_1_2)))
 (let (($x243 (=> u_2_3 $x242)))
 (let (($x239 (= x_1_3 x_0_2)))
 (let (($x277 (= x_0_3 x_0_2)))
 (let (($x248 (not u_2_2)))
 (let (($x281 (=> $x226 (and u_0_2 (and $x248 (and $x277 (and $x239 (and $x243 $x237))))))))
 (let (($x273 (and u_0_2 (and u_1_2 (and (and (= x_0_3 x_1_2) $x239) (and $x268 $x266))))))
 (let (($x274 (=> $x225 $x273)))
 (let (($x262 (=> $x224 (and u_0_2 (and (and (=> u_0_3 (= x_0_3 x_1_2)) $x258) $x254)))))
 (let (($x249 (and $x248 (and (= x_0_3 a_2) (and (and (=> u_1_3 $x239) $x243) $x237)))))
 (let (($x250 (=> $x223 $x249)))
 (let (($x398 (and $x250 $x262 $x274 $x281 $x287 (=> (= 1029 t_2) (and u_0_2 (and u_1_2 $x394))))))
 (let (($x150 (= 1028 t_1)))
 (let (($x149 (= 1027 t_1)))
 (let (($x148 (= 1026 t_1)))
 (let (($x147 (= 1025 t_1)))
 (let (($x146 (= 1024 t_1)))
 (let (($x174 (= u_2_2 false)))
 (let (($x175 (= u_1_2 u_2_1)))
 (let (($x176 (= u_0_2 u_1_1)))
 (let (($x177 (and $x176 $x175 $x174)))
 (let (($x180 (= x_1_2 x_2_1)))
 (let (($x181 (=> u_1_2 $x180)))
 (let (($x404 (and (and (= x_0_1 sk_x) (and (= x_1_1 1) (= x_0_2 s_1))) (and $x181 $x177))))
 (let (($x186 (= u_2_2 u_2_1)))
 (let (($x187 (= u_1_2 u_1_1)))
 (let (($x188 (= u_0_2 u_0_1)))
 (let (($x189 (and $x188 $x187 $x186)))
 (let (($x190 (= x_2_2 x_2_1)))
 (let (($x191 (=> u_2_2 $x190)))
 (let (($x206 (= x_1_2 x_1_1)))
 (let (($x207 (=> u_1_2 $x206)))
 (let (($x200 (= x_0_2 x_0_1)))
 (let (($x205 (=> u_0_2 $x200)))
 (let (($x208 (and $x205 $x207 $x191)))
 (let (($x209 (and $x208 $x189)))
 (let (($x210 (=> $x150 $x209)))
 (let (($x155 (= u_2_2 u_1_1)))
 (let (($x157 (= u_1_2 u_0_1)))
 (let (($x159 (= u_0_2 true)))
 (let (($x160 (and $x159 $x157 $x155)))
 (let (($x165 (= x_2_2 x_1_1)))
 (let (($x166 (=> u_2_2 $x165)))
 (let (($x198 (and $x166 $x160)))
 (let (($x162 (= x_1_2 x_0_1)))
 (let (($x199 (and $x162 $x198)))
 (let (($x201 (and $x200 $x199)))
 (let (($x171 (not u_2_1)))
 (let (($x202 (and $x171 $x201)))
 (let (($x203 (and u_0_1 $x202)))
 (let (($x204 (=> $x149 $x203)))
 (let (($x192 (and $x191 $x189)))
 (let (($x178 (= x_0_2 x_1_1)))
 (let (($x193 (and $x178 $x162)))
 (let (($x194 (and $x193 $x192)))
 (let (($x195 (and u_1_1 $x194)))
 (let (($x196 (and u_0_1 $x195)))
 (let (($x197 (=> $x148 $x196)))
 (let (($x179 (=> u_0_2 $x178)))
 (let (($x182 (and $x179 $x181)))
 (let (($x183 (and $x182 $x177)))
 (let (($x184 (and u_0_1 $x183)))
 (let (($x185 (=> $x147 $x184)))
 (let (($x163 (=> u_1_2 $x162)))
 (let (($x167 (and $x163 $x166)))
 (let (($x168 (and $x167 $x160)))
 (let (($x169 (= x_0_2 a_1)))
 (let (($x170 (and $x169 $x168)))
 (let (($x172 (and $x171 $x170)))
 (let (($x173 (=> $x146 $x172)))
 (let (($x408 (and $x173 $x185 $x197 $x204 $x210 (=> (= 1029 t_1) (and u_0_1 (and u_1_1 $x404))))))
 (let (($x71 (= 1028 t_0)))
 (let (($x70 (= 1027 t_0)))
 (let (($x68 (= 1026 t_0)))
 (let (($x66 (= 1025 t_0)))
 (let (($x64 (= 1024 t_0)))
 (let (($x97 (= u_2_1 false)))
 (let (($x100 (and (= u_0_1 u_1_0) (= u_1_1 u_2_0) $x97)))
 (let (($x105 (=> u_1_1 (= x_1_1 x_2_0))))
 (let (($x414 (and (and (= x_0_0 sk_x) (and (= x_1_0 1) (= x_0_1 s_1))) (and $x105 $x100))))
 (let (($x110 (= u_2_1 u_2_0)))
 (let (($x111 (= u_1_1 u_1_0)))
 (let (($x112 (= u_0_1 u_0_0)))
 (let (($x113 (and $x112 $x111 $x110)))
 (let (($x114 (= x_2_1 x_2_0)))
 (let (($x115 (=> u_2_1 $x114)))
 (let (($x132 (and (=> u_0_1 (= x_0_1 x_0_0)) (=> u_1_1 (= x_1_1 x_1_0)) $x115)))
 (let (($x134 (=> $x71 (and $x132 $x113))))
 (let (($x77 (= u_2_1 u_1_0)))
 (let (($x79 (= u_1_1 u_0_0)))
 (let (($x81 (= u_0_1 true)))
 (let (($x82 (and $x81 $x79 $x77)))
 (let (($x88 (= x_2_1 x_1_0)))
 (let (($x89 (=> u_2_1 $x88)))
 (let (($x84 (= x_1_1 x_0_0)))
 (let (($x124 (= x_0_1 x_0_0)))
 (let (($x94 (not u_2_0)))
 (let (($x128 (=> $x70 (and u_0_0 (and $x94 (and $x124 (and $x84 (and $x89 $x82))))))))
 (let (($x120 (and u_0_0 (and u_1_0 (and (and (= x_0_1 x_1_0) $x84) (and $x115 $x113))))))
 (let (($x121 (=> $x68 $x120)))
 (let (($x109 (=> $x66 (and u_0_0 (and (and (=> u_0_1 (= x_0_1 x_1_0)) $x105) $x100)))))
 (let (($x95 (and $x94 (and (= x_0_1 a_0) (and (and (=> u_1_1 $x84) $x89) $x82)))))
 (let (($x96 (=> $x64 $x95)))
 (let (($x418 (and $x96 $x109 $x121 $x128 $x134 (=> (= 1029 t_0) (and u_0_0 (and u_1_0 $x414))))))
 (let (($x420 (and (and $x418 (or $x64 $x66 $x68 $x70 $x71 (= 1029 t_0))) (and $x408 (or $x146 $x147 $x148 $x149 $x150 (= 1029 t_1))) (and $x398 (or $x223 $x224 $x225 $x226 $x227 (= 1029 t_2))) (and $x388 $x306))))
 (let (($x422 (and (and (= s_0 146) (and (= s_0 x_0_4) (and u_0_4 u_1_4))) (and $x420 $x63))))
 (let (($x12 (= u_2_0 false)))
 (let (($x10 (= u_1_0 false)))
 (let (($x427 (=> (and (= s_1 x_1_4) (= x_0_0 sk_x)) (and (and (= x_0_0 sk_x) (= u_0_0 true)) $x10 $x12))))
 (and $x427 $x422))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 )
(check-sat)
(get-model)