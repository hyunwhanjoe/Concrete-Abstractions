#lang sicp

(define num-digits-in-satisfying
  (lambda (n test?)
    (cond ((< n 0)
           (num-digits-in-satisfying (- n) test?))
          ((< n 10)
           (if (test? n) 1 0))
          ((test? (remainder n 10))
           (+ (num-digits-in-satisfying (quotient n 10)
                                        test?)
              1))
          (else
           (num-digits-in-satisfying (quotient n 10)
                                     test?)))))

(define num-digits
  (lambda (n)
    (num-digits-in-satisfying n (lambda (n) (< n 10)))))

(num-digits 577) ;3