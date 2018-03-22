(load "ensure-prime.scm")

(define (test-carmichael-numbers)
 (and (ensure-prime 561)
      (ensure-prime 1105)
      (ensure-prime 1729)
      (ensure-prime 2465)
      (ensure-prime 2821)
      (ensure-prime 6601)))
