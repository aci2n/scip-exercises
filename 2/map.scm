(define (map proc items)
 (if (null? items)
     items
     (cons (proc (car items))
           (map proc (cdr items)))))
