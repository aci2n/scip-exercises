(define a (list 1 2 (list 5 7) 9))
(define b (list (list 7)))
(define c (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(define (pick-a)
 (car (cdr (car (cdr (cdr a))))))

(define (pick-b)
 (car (car b)))

(define (pick-c)
 (car (cdr (cdr (cdr (cdr (cdr (cdr (cdr c)))))))))

(define (pick-all)
 (= (pick-a) (pick-b) (pick-c) 7))


