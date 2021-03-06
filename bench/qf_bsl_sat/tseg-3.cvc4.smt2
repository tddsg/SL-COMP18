(set-logic QF_BSL)
(set-info :source | CVC4 - Andrew Reynolds |)
(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :status unsat)


(declare-sort Loc 0)
;
(declare-datatypes (
                (Node 0)
                ) (
                ((node (left Loc) (right Loc)))
                )
)
(declare-heap (Loc Node))
(declare-const loc0 Loc)
(declare-const data0 Node)

(declare-const root Loc)
(declare-const end Loc)
(declare-const yl Loc)
(declare-const yr Loc)
(declare-const yl0 Loc)
(declare-const yr0 Loc)
(declare-const yl00 Loc)
(declare-const yr00 Loc)
(declare-const yl01 Loc)
(declare-const yr01 Loc)
(declare-const yl1 Loc)
(declare-const yr1 Loc)
(declare-const yl10 Loc)
(declare-const yr10 Loc)
(declare-const yl11 Loc)
(declare-const yr11 Loc)
(declare-const xl0 Loc)
(declare-const xr0 Loc)
(declare-const xl00 Loc)
(declare-const xr00 Loc)
(declare-const xl01 Loc)
(declare-const xr01 Loc)
(declare-const xl1 Loc)
(declare-const xr1 Loc)
(declare-const xl10 Loc)
(declare-const xr10 Loc)
(declare-const xl11 Loc)
(declare-const xr11 Loc)
(declare-const ul Loc)
(declare-const ur Loc)
(declare-const ul0 Loc)
(declare-const ur0 Loc)
(declare-const ul00 Loc)
(declare-const ur00 Loc)
(declare-const ul01 Loc)
(declare-const ur01 Loc)
(declare-const ul1 Loc)
(declare-const ur1 Loc)
(declare-const ul10 Loc)
(declare-const ur10 Loc)
(declare-const ul11 Loc)
(declare-const ur11 Loc)
(declare-const tl0 Loc)
(declare-const tr0 Loc)
(declare-const tl00 Loc)
(declare-const tr00 Loc)
(declare-const tl01 Loc)
(declare-const tr01 Loc)
(declare-const tl1 Loc)
(declare-const tr1 Loc)
(declare-const tl10 Loc)
(declare-const tr10 Loc)
(declare-const tl11 Loc)
(declare-const tr11 Loc)

(define-fun acyc_tseg3 ((y Loc) (z Loc)) Bool (or (and (= y z) (_ emp Loc Node)) (and (distinct y z) (sep (pto y (node yl yr)) (or (and (= yl z) (_ emp Loc Node)) (and (distinct yl z) (sep (pto yl (node yl0 yr0)) (or (and (= yl0 z) (_ emp Loc Node)) (and (distinct yl0 z) (sep (pto yl0 (node yl00 yr00)) (and (= yl00 z) (_ emp Loc Node)) (and (= yr00 (as nil Loc)) (_ emp Loc Node)))) (and (distinct yl0 z) (sep (pto yl0 (node yl00 yr00)) (and (= yl00 (as nil Loc)) (_ emp Loc Node)) (and (= yr00 z) (_ emp Loc Node))))) (or (and (= yr0 (as nil Loc)) (_ emp Loc Node)) (and (distinct yr0 z) (sep (pto yr0 (node xl01 xr01)) (and (= xl01 (as nil Loc)) (_ emp Loc Node)) (and (= xr01 (as nil Loc)) (_ emp Loc Node))))))) (and (distinct yl z) (sep (pto yl (node yl0 yr0)) (or (and (= yl0 (as nil Loc)) (_ emp Loc Node)) (and (distinct yl0 z) (sep (pto yl0 (node xl00 xr00)) (and (= xl00 (as nil Loc)) (_ emp Loc Node)) (and (= xr00 (as nil Loc)) (_ emp Loc Node))))) (or (and (= yr0 z) (_ emp Loc Node)) (and (distinct yr0 z) (sep (pto yr0 (node yl01 yr01)) (and (= yl01 z) (_ emp Loc Node)) (and (= yr01 (as nil Loc)) (_ emp Loc Node)))) (and (distinct yr0 z) (sep (pto yr0 (node yl01 yr01)) (and (= yl01 (as nil Loc)) (_ emp Loc Node)) (and (= yr01 z) (_ emp Loc Node)))))))) (or (and (= yr (as nil Loc)) (_ emp Loc Node)) (and (distinct yr z) (sep (pto yr (node xl1 xr1)) (or (and (= xl1 (as nil Loc)) (_ emp Loc Node)) (and (distinct xl1 z) (sep (pto xl1 (node xl10 xr10)) (and (= xl10 (as nil Loc)) (_ emp Loc Node)) (and (= xr10 (as nil Loc)) (_ emp Loc Node))))) (or (and (= xr1 (as nil Loc)) (_ emp Loc Node)) (and (distinct xr1 z) (sep (pto xr1 (node xl11 xr11)) (and (= xl11 (as nil Loc)) (_ emp Loc Node)) (and (= xr11 (as nil Loc)) (_ emp Loc Node)))))))))) (and (distinct y z) (sep (pto y (node yl yr)) (or (and (= yl (as nil Loc)) (_ emp Loc Node)) (and (distinct yl z) (sep (pto yl (node xl0 xr0)) (or (and (= xl0 (as nil Loc)) (_ emp Loc Node)) (and (distinct xl0 z) (sep (pto xl0 (node xl00 xr00)) (and (= xl00 (as nil Loc)) (_ emp Loc Node)) (and (= xr00 (as nil Loc)) (_ emp Loc Node))))) (or (and (= xr0 (as nil Loc)) (_ emp Loc Node)) (and (distinct xr0 z) (sep (pto xr0 (node xl01 xr01)) (and (= xl01 (as nil Loc)) (_ emp Loc Node)) (and (= xr01 (as nil Loc)) (_ emp Loc Node)))))))) (or (and (= yr z) (_ emp Loc Node)) (and (distinct yr z) (sep (pto yr (node yl1 yr1)) (or (and (= yl1 z) (_ emp Loc Node)) (and (distinct yl1 z) (sep (pto yl1 (node yl10 yr10)) (and (= yl10 z) (_ emp Loc Node)) (and (= yr10 (as nil Loc)) (_ emp Loc Node)))) (and (distinct yl1 z) (sep (pto yl1 (node yl10 yr10)) (and (= yl10 (as nil Loc)) (_ emp Loc Node)) (and (= yr10 z) (_ emp Loc Node))))) (or (and (= yr1 (as nil Loc)) (_ emp Loc Node)) (and (distinct yr1 z) (sep (pto yr1 (node xl11 xr11)) (and (= xl11 (as nil Loc)) (_ emp Loc Node)) (and (= xr11 (as nil Loc)) (_ emp Loc Node))))))) (and (distinct yr z) (sep (pto yr (node yl1 yr1)) (or (and (= yl1 (as nil Loc)) (_ emp Loc Node)) (and (distinct yl1 z) (sep (pto yl1 (node xl10 xr10)) (and (= xl10 (as nil Loc)) (_ emp Loc Node)) (and (= xr10 (as nil Loc)) (_ emp Loc Node))))) (or (and (= yr1 z) (_ emp Loc Node)) (and (distinct yr1 z) (sep (pto yr1 (node yl11 yr11)) (and (= yl11 z) (_ emp Loc Node)) (and (= yr11 (as nil Loc)) (_ emp Loc Node)))) (and (distinct yr1 z) (sep (pto yr1 (node yl11 yr11)) (and (= yl11 (as nil Loc)) (_ emp Loc Node)) (and (= yr11 z) (_ emp Loc Node))))))))))))

(define-fun tseg3 ((u Loc) (v Loc)) Bool (or (and (= u v) (_ emp Loc Node)) (sep (pto u (node ul ur)) (or (and (= ul v) (_ emp Loc Node)) (sep (pto ul (node ul0 ur0)) (or (and (= ul0 v) (_ emp Loc Node)) (sep (pto ul0 (node ul00 ur00)) (and (= ul00 v) (_ emp Loc Node)) (and (= ur00 (as nil Loc)) (_ emp Loc Node))) (sep (pto ul0 (node ul00 ur00)) (and (= ul00 (as nil Loc)) (_ emp Loc Node)) (and (= ur00 v) (_ emp Loc Node)))) (or (and (= ur0 (as nil Loc)) (_ emp Loc Node)) (sep (pto ur0 (node tl01 tr01)) (and (= tl01 (as nil Loc)) (_ emp Loc Node)) (and (= tr01 (as nil Loc)) (_ emp Loc Node))))) (sep (pto ul (node ul0 ur0)) (or (and (= ul0 (as nil Loc)) (_ emp Loc Node)) (sep (pto ul0 (node tl00 tr00)) (and (= tl00 (as nil Loc)) (_ emp Loc Node)) (and (= tr00 (as nil Loc)) (_ emp Loc Node)))) (or (and (= ur0 v) (_ emp Loc Node)) (sep (pto ur0 (node ul01 ur01)) (and (= ul01 v) (_ emp Loc Node)) (and (= ur01 (as nil Loc)) (_ emp Loc Node))) (sep (pto ur0 (node ul01 ur01)) (and (= ul01 (as nil Loc)) (_ emp Loc Node)) (and (= ur01 v) (_ emp Loc Node)))))) (or (and (= ur (as nil Loc)) (_ emp Loc Node)) (sep (pto ur (node tl1 tr1)) (or (and (= tl1 (as nil Loc)) (_ emp Loc Node)) (sep (pto tl1 (node tl10 tr10)) (and (= tl10 (as nil Loc)) (_ emp Loc Node)) (and (= tr10 (as nil Loc)) (_ emp Loc Node)))) (or (and (= tr1 (as nil Loc)) (_ emp Loc Node)) (sep (pto tr1 (node tl11 tr11)) (and (= tl11 (as nil Loc)) (_ emp Loc Node)) (and (= tr11 (as nil Loc)) (_ emp Loc Node))))))) (sep (pto u (node ul ur)) (or (and (= ul (as nil Loc)) (_ emp Loc Node)) (sep (pto ul (node tl0 tr0)) (or (and (= tl0 (as nil Loc)) (_ emp Loc Node)) (sep (pto tl0 (node tl00 tr00)) (and (= tl00 (as nil Loc)) (_ emp Loc Node)) (and (= tr00 (as nil Loc)) (_ emp Loc Node)))) (or (and (= tr0 (as nil Loc)) (_ emp Loc Node)) (sep (pto tr0 (node tl01 tr01)) (and (= tl01 (as nil Loc)) (_ emp Loc Node)) (and (= tr01 (as nil Loc)) (_ emp Loc Node)))))) (or (and (= ur v) (_ emp Loc Node)) (sep (pto ur (node ul1 ur1)) (or (and (= ul1 v) (_ emp Loc Node)) (sep (pto ul1 (node ul10 ur10)) (and (= ul10 v) (_ emp Loc Node)) (and (= ur10 (as nil Loc)) (_ emp Loc Node))) (sep (pto ul1 (node ul10 ur10)) (and (= ul10 (as nil Loc)) (_ emp Loc Node)) (and (= ur10 v) (_ emp Loc Node)))) (or (and (= ur1 (as nil Loc)) (_ emp Loc Node)) (sep (pto ur1 (node tl11 tr11)) (and (= tl11 (as nil Loc)) (_ emp Loc Node)) (and (= tr11 (as nil Loc)) (_ emp Loc Node))))) (sep (pto ur (node ul1 ur1)) (or (and (= ul1 (as nil Loc)) (_ emp Loc Node)) (sep (pto ul1 (node tl10 tr10)) (and (= tl10 (as nil Loc)) (_ emp Loc Node)) (and (= tr10 (as nil Loc)) (_ emp Loc Node)))) (or (and (= ur1 v) (_ emp Loc Node)) (sep (pto ur1 (node ul11 ur11)) (and (= ul11 v) (_ emp Loc Node)) (and (= ur11 (as nil Loc)) (_ emp Loc Node))) (sep (pto ur1 (node ul11 ur11)) (and (= ul11 (as nil Loc)) (_ emp Loc Node)) (and (= ur11 v) (_ emp Loc Node)))))))))

;------- f -------
(assert (= yl ul))
(assert (= yr ur))
(assert (= yl0 ul0))
(assert (= yr0 ur0))
(assert (= yl00 ul00))
(assert (= yr00 ur00))
(assert (= yl01 ul01))
(assert (= yr01 ur01))
(assert (= yl1 ul1))
(assert (= yr1 ur1))
(assert (= yl10 ul10))
(assert (= yr10 ur10))
(assert (= yl11 ul11))
(assert (= yr11 ur11))
(assert (= xl0 tl0))
(assert (= xr0 tr0))
(assert (= xl00 tl00))
(assert (= xr00 tr00))
(assert (= xl01 tl01))
(assert (= xr01 tr01))
(assert (= xl1 tl1))
(assert (= xr1 tr1))
(assert (= xl10 tl10))
(assert (= xr10 tr10))
(assert (= xl11 tl11))
(assert (= xr11 tr11))
;-----------------

(assert (distinct root end))
(assert (distinct yl end))
(assert (distinct yr end))
(assert (distinct yl0 end))
(assert (distinct yr0 end))
(assert (distinct yl1 end))
(assert (distinct yr1 end))
(assert (distinct xl0 end))
(assert (distinct xr0 end))
(assert (distinct xl1 end))
(assert (distinct xr1 end))
(assert (distinct yl (as nil Loc)))
(assert (distinct yr (as nil Loc)))
(assert (distinct yl0 (as nil Loc)))
(assert (distinct yr0 (as nil Loc)))
(assert (distinct yl1 (as nil Loc)))
(assert (distinct yr1 (as nil Loc)))
(assert (distinct xl0 (as nil Loc)))
(assert (distinct xr0 (as nil Loc)))
(assert (distinct xl1 (as nil Loc)))
(assert (distinct xr1 (as nil Loc)))

(assert (acyc_tseg3 root end))
(assert (not (tseg3 root end)))

(check-sat)
;(get-model)
