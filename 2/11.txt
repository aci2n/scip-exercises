(define (sign x) ((if (< x 0) - +) 1))
(define (neg? x) (= (sign x) (- 1)))
(define (pos? x) (= (sign x) 1))
(define (pos-lower? x) (pos? (lower-bound x)))
(define (pos-upper? x) (pos? (upper-bound x)))
(define (neg-lower? x) (neg? (lower-bound x)))
(define (neg-upper? x) (neg? (upper-bound x)))

(define (mul-interval x y)
 (cond
  ((and (pos-lower? x) (pos-lower? y) (pos-upper? x) (pos-upper? y))
   (make-interval ((* (lower-bound x) (lower-bound y))
                   (* (upper-bound x) (upper-bound y)))))
...

cba to write the whole thing, it's something like this (8 cases with 2 multiplications and only 1 with 3)

+a +b +c +d
 [a * c; b * d]
+a +b -c +d
 [b * c; b * d]
+a +b -c -d
 [b * c; a * d]
-a +b +c +d
 [a * d; b * d]
-a -b +c +d
 [b * d; a * c]
-a +b -c +d
 [min(a * d, b * c), b * d]
-a +b -c -d
 [b * c; a * d]
-a -b -c +d
 [a * d; a * c]
-a -b -c -d
 [b * d; a * c]

