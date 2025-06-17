#lang sicp

(define empty-tree? null?)
(define root car)
(define left-subtree cadr)

(define minimum
  (lambda (tree)
    (if (empty-tree? (left-subtree tree))
        (root tree)
        (minimum (left-subtree tree)))))

(minimum '(4
           (2
              (1 () ()) (3 () ()))
           (6
            (5 () ())
            (7 () ()))))