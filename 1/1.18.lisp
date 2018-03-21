(define (double a)
 (* a 2))

(define (halve a)
 (/ a 2))

(define (even a)
 (= (remainder a 2) 0))

(define (mult a b)
 (cond ((= b 0) 0)
       ((even b) (mult (double a) (halve b)))
       (else (+ a (mult a (- b 1))))))

(define (mult-2 a b)
 (define (mult-iter step total rem)
  (cond ((= step 1) (+ total rem))
        ((even step) (mult-iter (halve step) (double total) rem))
        (else (mult-iter (- step 1) total (+ rem total))))) 
 (mult-iter b a 0))

;mult-2 4 6
;mult-iter 2 12
;mult-iter 1 24
;24

;mult-2 8 7
;mult-iter 7 8 0
;mult-iter 6 8 8
;mult-iter 3 16 8
;mult-iter 2 16 24
;mult-iter 1 32 24
;56

;mult-2 9 11
;mult-iter 11 9 0
;mult-iter 10 9 9
;mult-iter 5 18 9
;mult-iter 4 18 27
;mult-iter 2 36 27
;mult-iter 1 72 27
;99
