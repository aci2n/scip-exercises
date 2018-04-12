;a

(define (make-mobile left right)
 (list left right))

(define (make-branch length structure)
 (list length structure))

(define (left-branch mobile)
 (car mobile))

(define (right-branch mobile)
 (cadr mobile))

(define (branch-length branch)
 (car branch))

(define (branch-structure branch)
 (cadr branch))

(define (mobile? x)
 (pair? x))

;b

(define (branch-weight branch)
 (if (mobile? (branch-structure branch))
     (total-weight (branch-structure branch))
     (branch-structure branch)))

(define (total-weight mobile)
 (+ (branch-weight (left-branch mobile))
    (branch-weight (right-branch mobile))))

;c

(define (torque branch)
 (* (branch-length branch) (branch-weight branch)))

(define (branch-balanced branch)
 (if (mobile? (branch-structure branch))
     (mobile-balanced (branch-structure branch))
     true))

(define (mobile-balanced mobile)
 (and (branch-balanced (left-branch mobile))
      (branch-balanced (right-branch mobile))
      (= (torque (left-branch mobile))
         (torque (right-branch mobile)))))

;d

;only need to change the selectors to use cdr instead of cadr

;test

(define x
 (make-mobile
  (make-branch 1 (make-mobile (make-branch 1 1) (make-branch 2 2)))
  (make-branch 2 3)))

(define y
 (make-mobile
  (make-branch 1 (make-mobile (make-branch 2 4) (make-branch 4 2)))
  (make-branch 2 3)))
