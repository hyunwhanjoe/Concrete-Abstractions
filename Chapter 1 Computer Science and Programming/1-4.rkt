#lang sicp
;a 
(define candy-temperature 
  (lambda (recipeTemp elevation) 
    (- recipeTemp (/ elevation 500))))
(candy-temperature 244 5280)

;b
(define candy-temperature1 
  (lambda (recipeTemp elevation) 
    (round (- recipeTemp (/ elevation 500)))))
(candy-temperature1 244 5280)

