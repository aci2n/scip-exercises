(define (cc amount coin-values)
 (cond ((= amount 0) 1)
       ((or (< amount 0) (no-more? coin-values)) 0)
       (else (+
              (cc amount (except-first-denomination coin-values))
              (cc (- amount (first-denomination coin-values)) coin-values)))))

(define (no-more? coin-values)
 (null? coin-values))

(define (except-first-denomination coin-values)
 (cdr coin-values))

(define (first-denomination coin-values)
 (car coin-values))

(define us-coins (list 50 25 10 5 1))
(define us-coins-reverse (list 1 5 10 25 50))
(define uk-coints (list 100 50 20 10 5 2 1 0.5))

;the order of the list does not matter since all combinations will be covered, albeit in a different order