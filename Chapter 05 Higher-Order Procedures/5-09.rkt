#lang sicp

(define factory
  (lambda (ftn)
    (define repeat
      (lambda (n)
        (if (= n 1)
            1
            (+ (repeat (- n 1))
                 (ftn n)))))
    repeat))

(define square
  (lambda (x)
    (* x x)))

(define sum-of-squares (factory square))
(sum-of-squares 5) ; 55

(define cube
  (lambda (x)
    (* x x x)))

(define sum-of-cubes (factory cube))
(sum-of-cubes 5) ; 225