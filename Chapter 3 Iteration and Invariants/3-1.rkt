#lang sicp
(define factorial
  (lambda (n)
    (define factorial-product 
      (lambda (a b)
        (if (> b n)
            a
            (factorial-product (* a b) (+ b 1)))))
    (factorial-product 1 1)))

(factorial 3)
(factorial 6)