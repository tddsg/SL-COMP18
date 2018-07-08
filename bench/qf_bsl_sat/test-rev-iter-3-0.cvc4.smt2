(set-logic QF_BSL)
(set-info :source | CVC4 - Andrew Reynolds |)
(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :status unsat)


(declare-sort Loc 0)
;
(declare-const c0 Loc)

(declare-datatypes (
        (Node 0)
        ) (
        ((node (data Loc) (next Loc)))
        )
)
(declare-heap (Loc Node))
(declare-const loc0 Loc)


(declare-const u Loc)
(declare-const v Loc)
(declare-const a1 Loc)
(declare-const a2 Loc)

(declare-const nx1 Loc)
(declare-const nx2 Loc)
(declare-const nx3 Loc)
(declare-const nx4 Loc)
(declare-const nx5 Loc)
(declare-const nx6 Loc)
(declare-const nx7 Loc)
(declare-const nx8 Loc)
(declare-const nx9 Loc)
(declare-const dt1 Loc)
(declare-const dt2 Loc)
(declare-const dt4 Loc)
(declare-const dt5 Loc)
(declare-const dt7 Loc)
(declare-const dt8 Loc)

;------- f -------
(assert (= nx1 (as nil Loc)))
(assert (= nx2 (as nil Loc)))
(assert (= nx3 (as nil Loc)))
(assert (= nx4 a2))
(assert (= nx5 a2))
(assert (= nx6 a2))
(assert (= nx7 a1))
(assert (= nx8 a1))
(assert (= nx9 a1))
(assert (= dt1 c0))
(assert (= dt2 c0))
(assert (= dt4 c0))
(assert (= dt5 c0))
(assert (= dt7 c0))
(assert (= dt8 c0))
;-----------------

(assert (and (sep (pto u (node c0 a1)) (pto a1 (node c0 a2)) (pto a2 (node c0 (as nil Loc)))) (= v (as nil Loc))))

(assert (not (and (sep (pto u (node c0 nx9)) true) (and (sep (pto u (node dt7 nx7)) (wand (pto u (node dt7 v)) (and (sep (pto nx8 (node c0 nx6)) true) (and (sep (pto nx8 (node dt4 nx4)) (wand (pto nx8 (node dt4 u)) (and (sep (pto nx5 (node c0 nx3)) true) (and (sep (pto nx5 (node dt1 nx1)) (wand (pto nx5 (node dt1 nx8)) (and (= nx2 (as nil Loc)) (sep (pto nx5 (node c0 a2)) (pto a2 (node c0 a1)) (pto a1 (node c0 (as nil Loc))))))) (sep (pto nx5 (node dt2 nx2)) true))))) (sep (pto nx8 (node dt5 nx5)) true))))) (sep (pto u (node dt8 nx8)) true)))))

(check-sat)
;(get-model)
