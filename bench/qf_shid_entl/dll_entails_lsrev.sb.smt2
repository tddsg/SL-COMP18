(set-logic QF_SHID)
(set-info :source | Songbird - https://songbird-prover.github.io/ |)
(set-info :smt-lib-version 2)
(set-info :category "crafted")
(set-info :status unsat)

;; singleton heap

(declare-sort Refnode 0)

(declare-datatypes
 ((node 0))
 (((c_node (next Refnode) (prev Refnode)))))

(declare-heap (Refnode node))

;; heap predicates

(define-fun-rec dll ((hd_2 Refnode) (p_3 Refnode) (tl_4 Refnode) (n_5 Refnode)) Bool
  (or
   (and
    (pto hd_2 (c_node n_5 p_3))
    (= hd_2 tl_4))
   (exists
    ((x_6 Refnode))
    (sep
     (pto hd_2 (c_node x_6 p_3))
     (dll x_6 hd_2 tl_4 n_5)))))

;; heap predicates

(define-fun-rec lsrev ((x_7 Refnode) (y_8 Refnode)) Bool
  (or
   (and
    (_ emp Refnode node)
    (= x_7 y_8))
   (exists
    ((anon_9 Refnode) (u_10 Refnode))
    (sep
     (pto u_10 (c_node y_8 anon_9))
     (lsrev x_7 u_10)))))

(check-sat)

;; entailment: dll(x,y,z,t) |- lsrev(x,t)

(declare-const x Refnode)
(declare-const y Refnode)
(declare-const z Refnode)
(declare-const t Refnode)

(assert
 (dll x y z t))

(assert
 (not
  (lsrev x t)))

(check-sat)
