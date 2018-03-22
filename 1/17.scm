(define (double a)
 (+ a a))

(define (halve a)
  (/ a 2))

(define (even a)
 (= (remainder a 2) 0))

(define (mult a b)
 (cond ((= b 0) 0)
       ((even b) (mult (double a) (halve b)))
       (else (+ a (mult a (- b 1))))))
