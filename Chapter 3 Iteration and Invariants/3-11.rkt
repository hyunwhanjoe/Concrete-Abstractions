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

(survives? 1 8)
(survives? 2 8)
(survives? 3 8)
(survives? 4 8)
(survives? 5 8)
(survives? 6 8)
(survives? 7 8)
(survives? 8 8)           