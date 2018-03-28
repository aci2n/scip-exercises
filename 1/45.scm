(load "common.scm")
(load "fixed-point.scm")
(load "repeated.scm")

(define (average-damp f)
 (lambda (x) (average x (f x))))

(define (repeated-average-damp f n)
 ((repeated average-damp n) f))

(define (root-search x n)
 (lambda (y) (/ x (power y (- n 1)))))

(define (required-damps n)
 (floor (/ (log n) (log 2))))

(define (root-fixed-point x n)
 (fixed-point (repeated-average-damp (root-search x n) (required-damps n))
              1))
