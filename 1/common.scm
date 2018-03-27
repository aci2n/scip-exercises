(define (abs a)
 (if (< a 0) (- a) a))

(define (even a)
 (* a 2))

(define (halve a)
 (/ a 2))

(define (even a)
 (= (remainder a 2) 0))

(define (square a)
 (* a a))

(define (smallest-divisor n)
 (find-divisor n 2))

(define (find-divisor-old n test-divisor)
 (cond ((> (square test-divisor) n) n)
       ((divides? test-divisor n) test-divisor)
       (else (find-divisor n (+ test-divisor 1)))))

(define (next-divisor divisor)
 (if (= divisor 2) 3 (+ divisor 2)))

(define (find-divisor n test-divisor)
 (cond ((> (square test-divisor) n) n)
       ((divides? test-divisor n) test-divisor)
       (else (find-divisor n (next-divisor test-divisor)))))

(define (divides? a b)
 (= (remainder b a) 0))

(define (prime? n)
 (= (smallest-divisor n) n))

(define (even? a)
 (even a))

(load "fast-prime.scm")
(load "expmod-alt.scm")
(load "fast-expt.scm")

(define (cube x) (* x x x))
(define (identity x) x)
(define (inc x) (+ x 1))
