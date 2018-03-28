(define (average a b c)
 (/ (+ a b c) 3))

(define dx 0.00001)

(define (smooth f)
 (lambda (x) (average (f (- x dx)) (f x) (f (+ x dx)))))

(load "repeated.scm")

;this fucks with my brain
(define (repeated-smooth f n)
 ((repeated smooth n) f))
