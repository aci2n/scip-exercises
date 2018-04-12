(define (reverse l)
 (define (step curr prev)
  (if (null? curr)
      prev
      (step (cdr curr) (cons (car curr) prev))))
 (step l '()))
