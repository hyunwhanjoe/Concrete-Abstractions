#lang sicp

(define make-exponentiater
  (lambda (power)
    (lambda (e)
      (expt e power))
    ))

(define square (make-exponentiater 2))
(define cube (make-exponentiater 3))

(square 4) ;16
(cube 4) ;64