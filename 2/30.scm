(define (square x)
 (* x x))

(define (square-tree tree)
 (if (null? tree) 
     tree
     (cons (if (pair? (car tree))
               (square-tree (car tree))
               (square (car tree)))
           (square-tree (cdr tree)))))

(define (square-tree-map tree)
 (map (lambda (current)
       (if (pair? current)
           (square-tree-map current)
           (square current)))
      tree))

(define x
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))
