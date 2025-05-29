#lang sicp
; only works for positive integers
(define multiply
  (lambda (x y) 
    (cond ((= y 0) 0)
          ((= y 1) x)
          (else (+ x (multiply x (- y 1)))))))

(multiply 5 3)