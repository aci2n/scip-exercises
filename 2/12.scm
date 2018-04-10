(define (make-center-percent c p)
 (make-center-width c (* c p)))

(define (percent x)
 (/ (width x) (center x)))
