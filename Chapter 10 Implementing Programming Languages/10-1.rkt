#lang sicp

;a
(define keyword?
  (lambda (word)
    (if 
     (or
      (string=? "lambda" word) 
      (string=? "quote" word) 
      (string=? "if" word))
     #t
     #f)))

(keyword? "lambda") ;#t

;b
(define name?
  (lambda (word)
    (and
     (symbol? word)
     (not
      (keyword? word)))))

(name? "lambda") ;#f