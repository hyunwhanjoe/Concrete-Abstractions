#lang sicp

(define together-copies-of
  (lambda (combine quantity thing)
    (define iteration
      (lambda (i value)
        (if (= i quantity)
            value
            (iteration (+ i 1) (combine thing value)))))
    (iteration 1 thing)))

(together-copies-of * 5 2) ; 32