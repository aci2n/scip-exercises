(define (spans-zero? x)
 (and (<= (lower-bound x) 0) (>= (upper-bound 0))))

(define (div-interval-safe x y)
 (if (spans-zero? y)
     (error "divisor interval cannot span 0")
     (div-interval x y)))
