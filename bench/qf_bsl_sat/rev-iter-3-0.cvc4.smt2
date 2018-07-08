(set-logic QF_BSL)
(set-info :source | CVC4 - Andrew Reynolds |)
(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :status unsat)


(declare-sort Loc 0)
(declare-heap (Loc Loc))
(declare-const loc0 Loc)

(declare-const u Loc)
(declare-const v Loc)
(declare-const a1 Loc)
(declare-const a2 Loc)

(declare-const x0 Loc)
(declare-const y0 Loc)
(declare-const x1 Loc)
(declare-const y1 Loc)
(declare-const x2 Loc)
(declare-const y2 Loc)

;------- f -------
(assert (= x0 (as nil Loc)))
(assert (= y0 (as nil Loc)))
(assert (= x1 a2))
(assert (= y1 a2))
(assert (= x2 a1))
(assert (= y2 a1))
;-----------------

(assert (and (sep (pto u a1) (pto a1 a2) (pto a2 (as nil Loc))) (= v (as nil Loc))))

(assert (not (and (sep (pto u x2) (wand (pto u v) (and (sep (pto y2 x1) (wand (pto y2 u) (and (sep (pto y1 x0) (wand (pto y1 y2) (and (= y0 (as nil Loc)) (sep (pto y1 a2) (pto a2 a1) (pto a1 (as nil Loc)))))) (sep (pto y1 y0) true)))) (sep (pto y2 y1) true)))) (sep (pto u y2) true))))

(check-sat)
;(get-model)
