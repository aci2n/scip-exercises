(load "37.scm")

(define (tan-cf x k)
 (let ((neg-square (- (* x x))))
  (cont-frac (lambda (i) (if (= i 1) x neg-square))
             (lambda (i) (- (* 2 i) 1))
             k)))
