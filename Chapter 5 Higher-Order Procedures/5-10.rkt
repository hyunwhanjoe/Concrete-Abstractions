#lang sicp

(define sum-of-digits
  (lambda (n)
    (define sum-plus ;(sum of n's digits) + addend
      (lambda (n addend)
        (if (= n 0)
            addend
            (sum-plus (quotient n 10)
                      (+ addend (remainder n 10))))))
      (sum-plus n 0)))

(define divisible-by-17 
  (lambda (n)
    (if (= 0 
           (remainder (sum-of-digits n) 
                      17))
        true
        false)))

(divisible-by-17 5493876);42 #f
(divisible-by-17 98) ;17 #t