(define (even? a)
 (= (remainder a 2) 0))

(define (filter-list list filter)
 (if (null? list)
     list
     (if (filter (car list))
         (cons (car list) (filter-list (cdr list) filter))
         (filter-list (cdr list) filter))))

(define (same-parity a . z)
 (let ((even (even? a)))
  (filter-list z (lambda (x) (eq? (even? x) even)))))
