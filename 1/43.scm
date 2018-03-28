(define (repeated-alt f n)
 (define (iter step result)
  (if (= step 1)
      f
      (iter (- step 1) (f result))))
  (iter n f)))

(load "compose.scm")

(define (repeated f n)
 (if (= n 1)
     f
     (compose f (repeated f (- n 1)))))
