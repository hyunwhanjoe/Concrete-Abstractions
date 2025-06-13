#lang sicp

(define together-copies-of
  (lambda (combine quantity thing)
    (if (= quantity 1)
        thing
        (combine (together-copies-of combine
                                     (- quantity 1)
                                  thing)
                 thing))))

(define mystery
  (lambda (a b)
    (together-copies-of + a b)))
; this procedure multiples a and b
; what is its performance?
; dependent on together-copies-of

(mystery 5000000 5) ; out of memory