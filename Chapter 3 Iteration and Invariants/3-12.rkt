#lang sicp

(define renumber
  (lambda (oldPosNum oldNumPpl)
    (cond ((> oldPosNum 3) (- oldPosNum 3))
          ((= oldPosNum 1) (- oldNumPpl 2))
          ((= oldPosNum 2) (- oldNumPpl 1)))))

(define survives?
  (lambda (position n)
    (if (< n 3)
        #t 
        (if (= position 3) 
            #f 
            (survives? (renumber position n) (- n 1))))))

(define first-survivor-after
  (lambda (n)
    (let ((next (+ n 1)))
    (if (survives? next 40)
        next
        (first-survivor-after next)))))

(first-survivor-after 0)
(first-survivor-after 13)