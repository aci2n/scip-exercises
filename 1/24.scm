(define (timed-prime-test n)
 (newline)
 (display n)
 (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
 (if (fast-prime? n 100)
     (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
 (display " *** ")
 (display elapsed-time))

(define (search-for-primes start tries)
 (define (test-and-iter n step)
  (timed-prime-test n)
  (search-for-primes-iter (+ n 2) (if (prime? n) (- step 1) step)))
 (define (search-for-primes-iter n step)
  (if (> step 0)
      (test-and-iter n step)))
 (search-for-primes-iter (if (even? start) (+ start 1) start) tries))

;times (100 iterations)
;~1billion 0.01s
;~1million billion 0.02s

;increasing n by 1million only doubles the time so growth is obviously better than linear, which kind of points towards it being logarithmic
