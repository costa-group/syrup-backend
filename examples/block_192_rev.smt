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
(declare-fun s_1 () Int)
(declare-fun x_0_4 () Int)
(declare-fun s_0 () Int)
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
 (let (($x50 (and (and (<= 0 a_0) (< a_0 1024)) (and (<= 0 a_1) (< a_1 1024)) (and (<= 0 a_2) (< a_2 1024)) (and (<= 0 a_3) (< a_3 1024)))))
 (let (($x63 (and (=> (= t_0 4) (= t_1 4)) (=> (= t_1 4) (= t_2 4)) (=> (= t_2 4) (= t_3 4)))))
 (let (($x320 (= 5 t_3)))
 (let (($x322 (= 4 t_3)))
 (let (($x303 (= 3 t_3)))
 (let (($x302 (= 2 t_3)))
 (let (($x231 (= 1 t_3)))
 (let (($x301 (= 0 t_3)))
 (let (($x20 (= u_2_4 false)))
 (let (($x330 (= u_1_4 u_2_3)))
 (let (($x331 (= u_0_4 u_1_3)))
 (let (($x332 (and $x331 $x330 $x20)))
 (let (($x327 (= x_1_4 x_2_3)))
 (let (($x333 (=> u_1_4 $x327)))
 (let (($x362 (and (and (and (= x_0_3 1) (= x_1_3 s_0)) (= x_0_4 s_1)) (and $x333 $x332))))
 (let (($x340 (= u_2_4 u_2_3)))
 (let (($x341 (= u_1_4 u_1_3)))
 (let (($x338 (= u_0_4 u_0_3)))
 (let (($x337 (and $x338 $x341 $x340)))
 (let (($x336 (= x_2_4 x_2_3)))
 (let (($x339 (=> u_2_4 $x336)))
 (let (($x357 (and (=> u_0_4 (= x_0_4 x_0_3)) (=> u_1_4 (= x_1_4 x_1_3)) $x339)))
 (let (($x314 (= u_2_4 u_1_3)))
 (let (($x315 (= u_1_4 u_0_3)))
 (let (($x22 (= u_0_4 true)))
 (let (($x316 (and $x22 $x315 $x314)))
 (let (($x310 (= x_2_4 x_1_3)))
 (let (($x312 (=> u_2_4 $x310)))
 (let (($x317 (= x_1_4 x_0_3)))
 (let (($x349 (= x_0_4 x_0_3)))
 (let (($x304 (not u_2_3)))
 (let (($x354 (=> $x303 (and u_0_3 (and $x304 (and $x349 (and $x317 (and $x312 $x316))))))))
 (let (($x347 (and u_0_3 (and u_1_3 (and (and (= x_0_4 x_1_3) $x317) (and $x339 $x337))))))
 (let (($x343 (=> $x231 (and u_0_3 (and (and (=> u_0_4 (= x_0_4 x_1_3)) $x333) $x332)))))
 (let (($x328 (and $x304 (and (= x_0_4 a_3) (and (and (=> u_1_4 $x317) $x312) $x316)))))
 (let (($x370 (and (=> $x301 $x328) $x343 (=> $x302 $x347) $x354 (=> $x322 (and $x357 $x337)) (=> $x320 (and (and u_0_3 u_1_3) (and true $x362))))))
 (let (($x232 (= 5 t_2)))
 (let (($x250 (= 4 t_2)))
 (let (($x225 (= 3 t_2)))
 (let (($x224 (= 2 t_2)))
 (let (($x153 (= 1 t_2)))
 (let (($x223 (= 0 t_2)))
 (let (($x259 (= u_2_3 false)))
 (let (($x260 (= u_1_3 u_2_2)))
 (let (($x261 (= u_0_3 u_1_2)))
 (let (($x255 (and $x261 $x260 $x259)))
 (let (($x256 (= x_1_3 x_2_2)))
 (let (($x262 (=> u_1_3 $x256)))
 (let (($x291 (and (and (and (= x_0_2 1) (= x_1_2 s_0)) (= x_0_3 s_1)) (and $x262 $x255))))
 (let (($x269 (= u_2_3 u_2_2)))
 (let (($x270 (= u_1_3 u_1_2)))
 (let (($x267 (= u_0_3 u_0_2)))
 (let (($x266 (and $x267 $x270 $x269)))
 (let (($x265 (= x_2_3 x_2_2)))
 (let (($x268 (=> u_2_3 $x265)))
 (let (($x286 (and (=> u_0_3 (= x_0_3 x_0_2)) (=> u_1_3 (= x_1_3 x_1_2)) $x268)))
 (let (($x241 (= u_2_3 u_1_2)))
 (let (($x233 (= u_1_3 u_0_2)))
 (let (($x244 (= u_0_3 true)))
 (let (($x245 (and $x244 $x233 $x241)))
 (let (($x234 (= x_2_3 x_1_2)))
 (let (($x239 (=> u_2_3 $x234)))
 (let (($x237 (= x_1_3 x_0_2)))
 (let (($x278 (= x_0_3 x_0_2)))
 (let (($x226 (not u_2_2)))
 (let (($x283 (=> $x225 (and u_0_2 (and $x226 (and $x278 (and $x237 (and $x239 $x245))))))))
 (let (($x276 (and u_0_2 (and u_1_2 (and (and (= x_0_3 x_1_2) $x237) (and $x268 $x266))))))
 (let (($x272 (=> $x153 (and u_0_2 (and (and (=> u_0_3 (= x_0_3 x_1_2)) $x262) $x255)))))
 (let (($x257 (and $x226 (and (= x_0_3 a_2) (and (and (=> u_1_3 $x237) $x239) $x245)))))
 (let (($x299 (and (=> $x223 $x257) $x272 (=> $x224 $x276) $x283 (=> $x250 (and $x286 $x266)) (=> $x232 (and (and u_0_2 u_1_2) (and true $x291))))))
 (let (($x154 (= 5 t_1)))
 (let (($x172 (= 4 t_1)))
 (let (($x147 (= 3 t_1)))
 (let (($x146 (= 2 t_1)))
 (let (($x145 (= 1 t_1)))
 (let (($x144 (= 0 t_1)))
 (let (($x181 (= u_2_2 false)))
 (let (($x182 (= u_1_2 u_2_1)))
 (let (($x183 (= u_0_2 u_1_1)))
 (let (($x177 (and $x183 $x182 $x181)))
 (let (($x178 (= x_1_2 x_2_1)))
 (let (($x184 (=> u_1_2 $x178)))
 (let (($x213 (and (and (and (= x_0_1 1) (= x_1_1 s_0)) (= x_0_2 s_1)) (and $x184 $x177))))
 (let (($x191 (= u_2_2 u_2_1)))
 (let (($x192 (= u_1_2 u_1_1)))
 (let (($x189 (= u_0_2 u_0_1)))
 (let (($x188 (and $x189 $x192 $x191)))
 (let (($x187 (= x_2_2 x_2_1)))
 (let (($x190 (=> u_2_2 $x187)))
 (let (($x208 (and (=> u_0_2 (= x_0_2 x_0_1)) (=> u_1_2 (= x_1_2 x_1_1)) $x190)))
 (let (($x163 (= u_2_2 u_1_1)))
 (let (($x155 (= u_1_2 u_0_1)))
 (let (($x166 (= u_0_2 true)))
 (let (($x167 (and $x166 $x155 $x163)))
 (let (($x156 (= x_2_2 x_1_1)))
 (let (($x161 (=> u_2_2 $x156)))
 (let (($x159 (= x_1_2 x_0_1)))
 (let (($x200 (= x_0_2 x_0_1)))
 (let (($x148 (not u_2_1)))
 (let (($x205 (=> $x147 (and u_0_1 (and $x148 (and $x200 (and $x159 (and $x161 $x167))))))))
 (let (($x198 (and u_0_1 (and u_1_1 (and (and (= x_0_2 x_1_1) $x159) (and $x190 $x188))))))
 (let (($x194 (=> $x145 (and u_0_1 (and (and (=> u_0_2 (= x_0_2 x_1_1)) $x184) $x177)))))
 (let (($x179 (and $x148 (and (= x_0_2 a_1) (and (and (=> u_1_2 $x159) $x161) $x167)))))
 (let (($x221 (and (=> $x144 $x179) $x194 (=> $x146 $x198) $x205 (=> $x172 (and $x208 $x188)) (=> $x154 (and (and u_0_1 u_1_1) (and true $x213))))))
 (let (($x73 (= 5 t_0)))
 (let (($x74 (or (= 0 t_0) (= 1 t_0) (= 2 t_0) (= 3 t_0) (= 4 t_0) $x73)))
 (let (($x100 (and (= u_0_1 u_1_0) (= u_1_1 u_2_0) (= u_2_1 false))))
 (let (($x105 (=> u_1_1 (= x_1_1 x_2_0))))
 (let (($x138 (and (and (and (= x_0_0 1) (= x_1_0 s_0)) (= x_0_1 s_1)) (and $x105 $x100))))
 (let (($x132 (and (=> u_0_1 (= x_0_1 x_0_0)) (=> u_1_1 (= x_1_1 x_1_0)) (=> u_2_1 (= x_2_1 x_2_0)))))
 (let (($x133 (and $x132 (and (= u_0_1 u_0_0) (= u_1_1 u_1_0) (= u_2_1 u_2_0)))))
 (let (($x122 (and (=> u_2_1 (= x_2_1 x_1_0)) (and (= u_0_1 true) (= u_1_1 u_0_0) (= u_2_1 u_1_0)))))
 (let (($x84 (= x_1_1 x_0_0)))
 (let (($x127 (and u_0_0 (and (not u_2_0) (and (= x_0_1 x_0_0) (and $x84 $x122))))))
 (let (($x116 (and (=> u_2_1 (= x_2_1 x_2_0)) (and (= u_0_1 u_0_0) (= u_1_1 u_1_0) (= u_2_1 u_2_0)))))
 (let (($x121 (=> (= 2 t_0) (and u_0_0 (and u_1_0 (and (and (= x_0_1 x_1_0) $x84) $x116))))))
 (let (($x109 (=> (= 1 t_0) (and u_0_0 (and (and (=> u_0_1 (= x_0_1 x_1_0)) $x105) $x100)))))
 (let (($x91 (and (and (=> u_1_1 $x84) (=> u_2_1 (= x_2_1 x_1_0))) (and (= u_0_1 true) (= u_1_1 u_0_0) (= u_2_1 u_1_0)))))
 (let (($x96 (=> (= 0 t_0) (and (not u_2_0) (and (= x_0_1 a_0) $x91)))))
 (let (($x141 (and $x96 $x109 $x121 (=> (= 3 t_0) $x127) (=> (= 4 t_0) $x133) (=> $x73 (and (and u_0_0 u_1_0) (and true $x138))))))
 (let (($x372 (and (and $x141 $x74) (and $x221 (or $x144 $x145 $x146 $x147 $x172 $x154)) (and $x299 (or $x223 $x153 $x224 $x225 $x250 $x232)) (and $x370 (or $x301 $x231 $x302 $x303 $x322 $x320)))))
 (let (($x381 (and (and (= s_1 1024) (= s_0 1025)) (and $x372 (and $x63 $x50)))))
 (let (($x31 (and (and (= x_0_4 146) $x22) (and (= x_1_4 s_1) (= u_1_4 true)) $x20)))
 (let (($x18 (and (and (= x_0_0 s_0) (= u_0_0 true)) (= u_1_0 false) (= u_2_0 false))))
 (and $x18 (and $x31 $x381)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(get-model)