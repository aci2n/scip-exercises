(define (deep-reverse x)
 (define (iter current result)
  (if (null? current)
      result
      (iter (cdr current)
            (cons (if (pair? (car current))
                      (deep-reverse (car current))
                      (car current))
                  result))))
 (iter x '()))