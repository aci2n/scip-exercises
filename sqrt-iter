(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (abs x)
  (if (< x 0) (- x) x))

(define (improve guess x)
  (average (/ x guess) guess))

(define (average x y)
  (/ (+ x y) 2))
