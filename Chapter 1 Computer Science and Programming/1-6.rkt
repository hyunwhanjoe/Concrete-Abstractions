#lang sicp
(define turkey-servings 
  (lambda (weight) 
    (if (<= weight 12)
        (/ weight 3/4)
        (/ weight 1/2))))

(turkey-servings  12)
(turkey-servings  13)