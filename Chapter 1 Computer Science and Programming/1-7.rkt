#lang sicp
;a
(define puzzle1
  (lambda (a b c)
    (+ a (if (> b c)
             b 
             c))))
;This procedure adds a to the larger of b and c
(puzzle1 5 6 7)

; b
(define puzzle2
  (lambda (x)
    ((if (> x 0)
         -
         +)
     0 x)))
;Evaluates to -x
(puzzle2 5)
(puzzle2 -5)
         