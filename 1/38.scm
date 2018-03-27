(load "37.scm")

(define (approx-e k)
 (+ 2 (cont-frac (lambda (x) 1.0)
                 (lambda (x)
                  (let ((i (+ x 1)))
                   (if (= (remainder i 3) 0) (* 2 (/ i 3)) 1)))
                 k)))
