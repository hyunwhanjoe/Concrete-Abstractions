#lang sicp

(define divides?
  (lambda (a b)
    (= (remainder b a) 0)))

(define sum-of-divisors
  (lambda (n)
    (define sum-from-plus
      (lambda (low addend)
        (if (>= (* low low) n)
            addend
            (sum-from-plus (+ low 1)
                           (cond ((and (divides? low n) (= (* low low) n)) 
                                  (+ addend low))
                                 ((divides? low n) 
                                  (+ (/ n low) (+ addend low)))
                                 (else addend))))))
    (sum-from-plus 1 0)))

(define perfect?
  (lambda (n)
    (= (sum-of-divisors n) (* 2 n))))

;(define first-perfect-after
;  (lambda (n)
;    (if (perfect? (+ n 1))
;        (+ n 1)
;        (first-perfect-after (+ n 1)))))

(define first-perfect-after
  (lambda (n)
    (let ((next (+ n 1)))
      (if (perfect? next)
          next
          (first-perfect-after next)))))

(first-perfect-after 0) ; 6
(first-perfect-after 6) ; 28
(first-perfect-after 28) ; 496