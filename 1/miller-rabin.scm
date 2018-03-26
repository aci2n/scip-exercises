(load "expmod-signal-nontrivial.scm")

(define (miller-rabin n)
 (define (iter step limit m)
  (cond ((> step limit) true)
        ((= 0 (expmod-signal-nontrivial step m m)) false) 
        (else (iter (+ 1 step) limit m))))
 (if (even n) (= n 2) (iter 1 (/ (+ n 1) 2) (- n 1))))
