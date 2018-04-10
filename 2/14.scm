(load "interval.scm")
(load "test-intervals.scm")

(define (par1 r1 r2)
 (div-interval (mul-interval r1 r2)
               (add-interval r1 r2)))

(define (par2 r1 r2)
 (let ((one (make-interval 1 1)))
  (div-interval
   one
   (add-interval (div-interval one r1)
                 (div-interval one r2)))))

;calculating parallel resistance using par1 gives very different results from par2 when the width is large
;examples: i2, i3, i4
;when the interval widths are smaller, both par1 and par2 yield similar results
;examples: i5, i6
;using a large percent with make-percent-width also (naturally) produces different results
