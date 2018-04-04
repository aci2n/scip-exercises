(define (cdr z)
 (z (lambda (p q) q)))

;(cdr (cons 1 2))
;(cdr (lambda (m) (m 1 2)))
;((lambda (m) (m 1 2)) (lambda (p q) q))
;((lambda (p q) q) 1 2)
;2
