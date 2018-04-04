(load "sqrt.scm")
(load "2.scm")

;the rectangle is defined by the diagonal (segment AC) that crosses it
;D___C
;A___B

(define (a-rect s)
 (start-segment s))

(define (b-rect s)
 (make-segment (x-point (c-rect s)) (y-point (a-rect s))))

(define (c-rect s)
 (end-segment s))

(define (d-rect s)
 (make-segment (x-point (a-rect s)) (y-point (c-rect s))))

(define (square-delta s point-extractor)
 (square (- (point-extractor (end-segment s)) (point-extractor (start-segment s)))))

(define (segment-length s)
 (sqrt (+ (square-delta s x-point) (square-delta s y-point))))

(define (a-segment-rect s)
 (make-segment (a-rect s) (b-rect s)))

(define (b-segment-rect s)
 (make-segment (b-rect s) (c-rect s)))

(define (a-segment-length-rect s)
 (segment-length (a-segment-rect s)))

(define (b-segment-length-rect s)
 (segment-length (b-segment-rect s)))

(define (perimeter s)
 (* 2 (+ (a-segment-length-rect s) (b-segment-length-rect s))))

(define (area s)
 (* (a-segment-length-rect s) (b-segment-length-rect s)))

(define test-rect
 (make-segment (make-point 0 0) (make-point 3 3)))
