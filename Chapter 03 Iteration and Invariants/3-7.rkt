#lang sicp

(define square
  (lambda (x)
    (* x x)))

(define improve
  (lambda (approx)
    (+ 1 (/ 1 approx))))

; this is interesting, good-enough? is called before it is defined
(define approximate-golden-ratio
  (lambda (tolerance)
    (define find-approximation-from
      (lambda (starting-point)
        (if (good-enough? starting-point)
            starting-point
            (find-approximation-from (improve starting-point)))))
    (define good-enough?
      (lambda (approximation)
        (< (/ 1 (square (denominator approximation)))
           tolerance)))
    (find-approximation-from 1)))
 
(approximate-golden-ratio 1/50000)