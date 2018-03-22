(define (timed-prime-test n)
 (newline)
 (display n)
 (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
 (if (prime? n)
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

;did it with 1000000 (1 million), 1000000000 (1 thousand millions), 1000000000000 (1 billion)
;1 million: 0s taken
;1 thousand millions: .04s taken
;1 billion: 1.3s taken
;since the order of growth is O(sqrt(n)), and we're increasing by an order of 1000 in each case, tie taken should increase by about sqrt(1000) ~= 31.62 each time
;.04 * 31.62 = 1.26 ~= 1.3
;time does seem to be proportional to the number of steps required for computation
