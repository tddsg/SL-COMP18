(set-logic SHIDLIA)
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

(define-fun-rec dll ((hd_1 Refnode) (p_2 Refnode) (tl_3 Refnode) (n_4 Refnode) (len_5 Int)) Bool
  (or
   (and
    (pto hd_1 (c_node n_4 p_2))
    (and
     (= (- len_5 1) 0)
     (= hd_1 tl_3)))
   (exists
    ((x_6 Refnode) (k Int))
    (and
     (sep
      (pto hd_1 (c_node x_6 p_2))
      (dll x_6 hd_1 tl_3 n_4 k))
     (= k (- len_5 1))
     (<= 1 (- len_5 1))))))

(check-sat)

;; entailment: dll(x,y,z,t,1000) |- (exists u1,u2,u3,u4,u5. u1->node{u2,x} * u2->node{u3,u1} * u5->node{z,u4} * x->node{u1,y} * z->node{t,u5} * dll(u3,u2,u4,u5,995))

(declare-const x Refnode)
(declare-const y Refnode)
(declare-const z Refnode)
(declare-const t Refnode)
(declare-const k1000 Int)
(declare-const k995 Int)

(assert
 (and (= k1000 1000) (= k995 995)
 (dll x y z t k1000)))

(assert
 (not
  (exists
   ((u1 Refnode) (u2 Refnode) (u3 Refnode) (u4 Refnode) (u5 Refnode))
   (sep
    (pto u1 (c_node u2 x))
    (pto u2 (c_node u3 u1))
    (pto u5 (c_node z u4))
    (pto x (c_node u1 y))
    (pto z (c_node t u5))
    (dll u3 u2 u4 u5 k995)))))

(check-sat)
