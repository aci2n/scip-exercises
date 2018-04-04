(load "power.scm")
(load "even.scm")

(define (cons a b)
 (* (power 2 a) (power 3 b)))

(define (car z)
 (define (iter x n)
  (if (even x)
      (iter (/ x 2) (+ n 1))
      n))
 (iter z 0))

(define (cdr z)
 (define (iter x n)
  (cond ((= x 1) n)
        ((even x) (iter (/ x 2) n))
        (else (iter (/ x 3) (+ n 1)))))
 (iter z 0))
