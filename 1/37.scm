(define (cont-frac n d k)
 (define (aux step)
  (if (> step k)
      0
      (/ (n step) (+ (d step) (aux (+ step 1))))))
 (aux 1))

;12 iterations are needed to get an approximation accurate to 4 decimal places

(define (cont-frac-iter n d k)
 (define (iter k result)
  (if (= k 0)
      result
      (iter (- k 1) (/ (n k) (+ (d k) result)))))
 (iter k 0))

