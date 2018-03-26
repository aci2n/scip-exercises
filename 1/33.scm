(load "32.scm")

(define (filtered-accumulate combinator null-value filter term a next b)
 (define (iter a result)
  (if (> a b)
      result
      (iter (next a)
            (if (filter a)
                (combinator (term a) result)
                result))))
 (iter a null-value))

(define (sum-prime-squares a b)
 (filtered-accumulate + 0 prime? square a inc b))

(define (sum-relative-primes n)
 (define (relative-prime? a)
  (= 1 (gcd n a))) 
 (filtered-accumulate * 1 relative-prime? identity 2 inc (- n 1)))
