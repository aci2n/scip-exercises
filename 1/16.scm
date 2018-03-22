(define (even n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
 (define (fast-expt-iter step a)
  (cond ((= step 0) a)
        ((even step) (fast-expt-iter (/ step 2) (* a b b)))
        (else (fast-expt-iter (- step 1) (* a b)))))
 (fast-expt-iter (- n 1) 1))

;fast-expt 5 5
;fast-expt-iter 4 1
;fast-expt-iter 2 25
;fast-expt-iter 1 625
;fast-expt-iter 0 3125
;3125
