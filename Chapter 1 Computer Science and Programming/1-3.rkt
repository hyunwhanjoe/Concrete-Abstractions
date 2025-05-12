#lang sicp
;b
(define f (lambda (x) (* x x)))
(define square f)
(f 7) ;49
(square 7) ;49
(define f1 (lambda (x) (+ x 2)))
(f1 7) ;9
(square 7) ;49