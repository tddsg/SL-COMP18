(set-logic QF_BSL)
(set-info :source | CVC4 - Andrew Reynolds |)
(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :status sat)


(declare-sort Loc 0)
(declare-const c0 Loc)
(declare-datatypes (
        (Node 0)
        ) (
        ((node (data Loc) (next Loc)))
        )
)
(declare-heap (Loc Node))
(declare-const loc0 Loc)

(declare-const w Loc)
(declare-const u Loc)
(declare-const nx1 Loc)
(declare-const nx2 Loc)
(declare-const dt1 Loc)
(declare-const node0 Node)

;------- f -------
(assert (= nx1 u))
(assert (= nx2 u))
(assert (= dt1 c0))
(assert (= node0 (node c0 u)))
;-----------------

(assert (sep (pto w (node c0 u)) (pto u (node c0 (as nil Loc)))))

(assert (not (and (sep (pto w (node c0 nx2)) true) (and (sep (pto nx1 (node c0 (as nil Loc))) (pto w node0)) (sep (pto w (node dt1 nx1)) true)))))

(check-sat)
;(get-model)
