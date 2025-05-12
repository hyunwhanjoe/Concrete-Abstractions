#lang sicp
(define marginal-tax
  (lambda (income)
    (if (< income 10000)
        0
        (* 20/100 (- income 10000)))))

(marginal-tax 12500)
