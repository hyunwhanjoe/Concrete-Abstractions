#lang sicp

(define integers-from-to-iterative
  (lambda (low high)
    (define iter
      (lambda (high lst)
        (if (> low high)
            lst
            (iter (- high 1)
                  (cons high lst)))))
    (iter high '())))

(integers-from-to-iterative 2 7)
;original faulty version goes backward (7 6 5...)