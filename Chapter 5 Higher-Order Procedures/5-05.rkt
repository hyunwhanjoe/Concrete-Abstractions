#lang sicp

(define num-digits-in-satisfying
  (lambda (n test?)
    (define iteration
      (lambda (state update)
    (cond ((< n 0)
           (num-digits-in-satisfying (- n) test?))
          ((< state 10)
           (if (test? state) (+ update 1) update))
          ((test? (remainder state 10))
           (iteration (quotient state 10) (+ update 1)))
          (else
           (iteration (quotient state 10) update))))) 
    (iteration n 0)))


(num-digits-in-satisfying 667 odd?)
;1

(num-digits-in-satisfying 666 (lambda (n) (= n 6)))
;3