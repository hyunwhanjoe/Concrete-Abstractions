#lang sicp

(define factory
  (lambda (ftn)
    (define repeat
      (lambda (n)
        (if (= n 1)
            1
            (ftn (repeat (- n 1))
                 n))))
    repeat))

(define factorial (factory *))
(factorial 5) ; 120

(define sum-of-first (factory +))
(sum-of-first 5) ; 15