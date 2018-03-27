;golden ratio phi / phi^2 = phi + 1
;dividing by phi:
;phi = 1 + 1/phi

(load "fixed-point.scm")
(define (golden-ratio)
 (fixed-point (lambda (x) (+ 1 (/ 1 x)))
              1.0))
