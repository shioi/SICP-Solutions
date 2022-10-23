;;The small number may give wrong result due to the criteria of good-enough? reaching very early
;;due to value being relatively large. For the Large Number, it may take infinite amount of time.


#lang sicp

(define  (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))


(define (average x y)
  (/ (+ x y) 2))


(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (abs (* guess 0.001))))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x)
  (* x x))

;;test
(sqrt 88787677)
(sqrt 0.0000000000008)
(sqrt 8987652345166)

;;Yes, this works better for small and large numbers since
;;in the good-enough?, the value being compared are the change in guess to the fraction of guess.
;;For the large number, the time taken isn't large and for the smaller number, it doesn't end too fast
;;to give the proper answer.



