(load "common.scm")

(define (iterative-improve good-enough? improve-guess)
 (define (try guess)
  (if (good-enough? guess)
      guess
      (try (improve-guess guess))))
 (lambda (first-guess) (try first-guess)))

(define (sqrt x)
 ((iterative-improve
   (lambda (guess)
    (< (abs (- (square guess) x)) 0.001))
   (lambda (guess)
    (average guess (/ x guess))))
  1.0))
  
(define (fixed-point f)
 ((iterative-improve
   (lambda (guess) 
    (< (abs (- guess (f guess))) 0.001))
   f)
  1.0))
