(define (sqrt-iter prev guess x)
  (if (good-enough? prev guess)
      guess
      (sqrt-iter guess (improve guess x) x)))

(define (good-enough? prev guess)
  (< (abs (- guess prev)) 0.001))

(define (abs x)
  (if (< x 0) (- x) x))

(define (improve guess x)
  (average (/ x guess) guess))

(define (average x y)
  (/ (+ x y) 2))
