;Tpq(a, b) = (bq + aq + ap, bp + aq)
;T(a, b) = T01(a, b) = (b + a, a)

;Tpq(a, b) = (a, b) = (bq + aq + ap, bp + aq)
;Tpq(a, b) = ((bp + aq)q + (bq + aq + ap)q + (bq + aq + ap)p, (bp + aq)p + (bq + aq + ap)q)
;Tpq(a, b) = (bpq + aqq + bqq + aqq + apq + bqp + aqp + app, bpp + aqp + bqq + aqq + apq)
;Tpq(a, b) = (2bpq + 2aqq + bqq + 2apq + app, bpp + 2aqp + bqq + aqq)

;Tpq(a,b) = (b(2pq + qq) + a(2pq + qq) + a(qq + pp), b(qq + pp) + a(2pq + qq)) 
;q' = 2pq + qq
;p' = qq + pp

(define (even n)
 (= (remainder n 2) 0))

(define (fib n)
 (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
 (cond ((= count 0) b)
       ((even count)
        (fib-iter a
                  b
                  (+ (* p p) (* q q))
                  (+ (* 2 p q) (* q q))
                  (/ count 2)))
       (else (fib-iter (+ (* b q) (* a q) (* a p))
                       (+ (* b p) (* a q))
                       p
                       q
                       (- count 1)))))

