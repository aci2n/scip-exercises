(define (repeated f n)
 (define (iter step result)
  (if (= step 0)
      result
      (iter (- step 1) (f result))))
 (lambda (x) (iter n x)))

(load "compose.scm")

(define (repeated-2 f n)
 (define (iter step composed)
  (if (= step 1)
      composed
      (iter (- step 1) (compose f composed))))
 (iter n f))
