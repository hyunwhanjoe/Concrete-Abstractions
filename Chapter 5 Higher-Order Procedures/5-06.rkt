#lang sicp

(define sum
  (lambda (low high ftn)
    (define iterate
      (lambda (state update)
        (if (= state high)
            (+ update (ftn state))
            (iterate (+ state 1) (+ update (ftn state))))))
    (iterate low 0)))

(define square
  (lambda (x)
    (* x x)))

(sum 5 10 square) ;355
(sum 10 100 sqrt) ;652.156946577112
