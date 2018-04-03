(load "common.scm")
(load "../1/gcd.scm")

(define (make-rat-first-try x y)
 (let ((x (if (xor (< x 0) (< y 0)) (- (abs x)) (abs x)))
       (y (abs y))
       (g (abs (gcd x y))))
  (cons (/ x g) (/ y g))))

;stolen from http://community.schemewiki.org/?sicp-ex-2.1
;much better than mine tbh

(define (make-rat n d)
 (let ((g ((if (< d 0) - +) (abs (gcd n d)))))
  (cons (/ n g) (/ d g))))
