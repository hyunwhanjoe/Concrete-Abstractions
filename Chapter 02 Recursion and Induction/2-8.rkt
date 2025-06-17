#lang sicp
; a
(define square
  (lambda (x)
    (* x x)))

(define sum-of-squares
  (lambda (n)
    (if (= n 1)
        1 
        (+ (sum-of-squares (- n 1))
           (square n)))))

(sum-of-squares 5)

;b
(define cube
  (lambda (x)
    (* x x x)))

(define sum-of-cubes
  (lambda (n)
    (if (= n 1)
        1 
        (+ (sum-of-cubes (- n 1))
           (cube n)))))

(sum-of-cubes 5)

;c
(define sum-of-powers
  (lambda (n p)
    (if (= n 1)
        1 
        (+ (sum-of-powers (- n 1) p)
           (expt n p)))))

(sum-of-powers 5 2)
(sum-of-powers 5 3)