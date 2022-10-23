#lang sicp

;; define a procedure that takes three numbers as arguments and returns the sum
;;of the squares of the two larger numbers

(define (find-largest-three a b c)
  (cond ((and (>= a b) (>= a c)) a)
        ((and (>= b a) (>= b c)) b)
        ((and (>= c a) (>= c b)) c)))

(define (find-largest-two a b)
  (if (>= a b) a b))

(define (find-second-largest a b c)
  (cond ((= (find-largest-three a b c) a) (find-largest-two b c))
        ((= (find-largest-three a b c) b) (find-largest-two a c))
        ((= (find-largest-three a b c) c) (find-largest-two a b))))


(define (square a)
  (* a a))


(define (sos-largest a b c)
  (+ (square (find-largest-three a b c))
     (square (find-second-largest a b c))))

;;test
(sos-largest 8 9 6)
