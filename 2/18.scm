(define (reverse l)
 (define (iter curr result)
  (if (null? curr)
      result
      (iter (cdr curr) (cons (car curr) result))))
 (iter l '()))
