(load "sqrt.scm")
(load "2.scm")

;the rectangle is defined by the diagonal (segment AC) that crosses it
;D___C
;A___B

(define (make-rectangle point-a point-c)
 (make-segment point-a point-c))

(define (rectangle-a rectangle)
 (start-segment rectangle))

(define (rectangle-b rectangle)
 (make-point (x-point (rectangle-c rectangle)) (y-point (rectangle-a rectangle))))

(define (rectangle-c rectangle)
 (end-segment rectangle))

(define (rectangle-d rectangle)
 (make-point (x-point (rectangle-a rectangle)) (y-point (rectangle-c rectangle))))

(define (square-delta segment point-getter)
 (square (- (point-getter (end-segment segment)) (point-getter (start-segment segment)))))

(define (segment-length segment)
 (sqrt (+ (square-delta segment x-point) (square-delta segment y-point))))

(define (rectangle-base rectangle)
 (make-segment (rectangle-a rectangle) (rectangle-b rectangle)))

(define (rectangle-height rectangle)
 (make-segment (rectangle-b rectangle) (rectangle-c rectangle)))

(define (rectangle-base-length rectangle)
 (segment-length (rectangle-base rectangle)))

(define (rectangle-height-length rectangle)
 (segment-length (rectangle-height rectangle)))

(define (rectangle-perimeter rectangle)
 (* 2 (+ (rectangle-base-length rectangle) (rectangle-height-length rectangle))))

(define (rectangle-area rectangle)
 (* (rectangle-base-length rectangle) (rectangle-height-length rectangle)))

(define test-rectangle (make-rectangle (make-point 0 0) (make-point 3 3)))
(define (test-rectangle-area) (rectangle-area test-rectangle))
(define (test-rectangle-perimeter) (rectangle-perimeter test-rectangle))
