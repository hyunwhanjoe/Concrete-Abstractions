#lang sicp

(define integers-from-to
  (lambda (low high)
    (if (> low high)
        '()
        (if (even? low) 
            (cons low (integers-from-to (+ low 1) high))
            (integers-from-to (+ low 1) high)))))

(integers-from-to 1 7)