#lang sicp
;a
(define tax
  (lambda (x) (+ x (* 5/100 x))))

;b
(tax 1.29)
(tax 2.40)