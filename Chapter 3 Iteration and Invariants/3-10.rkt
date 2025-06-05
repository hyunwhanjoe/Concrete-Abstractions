#lang sicp

(define renumber
  (lambda (oldPosNum oldNumPpl)
    (cond ((> oldPosNum 3) (- oldPosNum 3))
          ((= oldPosNum 1) (- oldNumPpl 2))
          ((= oldPosNum 2) (- oldNumPpl 1)))))

(renumber 1 8)