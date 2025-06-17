#lang sicp
(define power
  (lambda (base exponent)
    (if (= exponent 0)
        1
        (* base (power base (- exponent 1))))))

(power 2 3)
(expt 2 3)