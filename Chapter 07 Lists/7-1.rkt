#lang sicp
;a
(list + 2 3)
;(#<procedure:+> 2 3)
; Why?
; + is evaluated as a procedure

;b
(list '+ 2 3)
; why?
; 'expression gives the literal value
