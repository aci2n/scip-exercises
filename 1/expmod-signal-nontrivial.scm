(define (expmod-check-square x n)
 (if (and (not (= x 1))
          (not (= x n))
          (= 1 (remainder x (+ n 1))))
     0
     (remainder x n)))

(define (expmod-signal-nontrivial base exp m)
 (cond ((= exp 0) 1)
       ((even? exp)
        (expmod-check-square
         (square (expmod-signal-nontrivial base (/ exp 2) m))
         m))
       (else
        (remainder
         (* base (expmod-signal-nontrivial base (- exp 1) m))
         m))))

