(define (inc x) (+ x 1))

(define (double f)
 (lambda (x) (f (f x))))

;(double double)
;(lambda (x) (double (double x)))

;((double double) inc)
;(double (double inc))
;(double (lambda (x) (inc (inc x))))
;(lambda (y) ((lambda (x) (inc (inc x))) (inc (inc y))))

;could probably also expand (double (double double)) but that sounds really annoying
;anyways, the result is 21

;1 double: 2 times
;2 doubles: 4 times
;3 doubles: 16 times
;4 doubles: 264 times
;n doubles: let ((i (- n 1))) (power 2 (power 2 i))
