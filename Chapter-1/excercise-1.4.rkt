#lang sicp
;;Excercise 1.4

(define (a-plus-abs a b)
  ((if (> b 0) + -) a b))

;;((if (> -5 0 ) + -) 1 -5)
;;((if (#f) + - ) 1 -5)
;;(- 1 -5)
;;6

(a-plus-abs 1 -5)
