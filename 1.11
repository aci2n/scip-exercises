(define (f n)
 (if (< n 3)
  n
  (+ (f (- n 1))
     (* 2 (f (- n 2)))
     (* 3 (f (- n 3))))))

(define (g n)
 (define (g-iter a b c step)
  (if (< step 3) a 
   (g-iter (+ a (* 2 b) (* 3 c)) a b (- step 1))))  
 (if (< n 3) n (g-iter 2 1 0 n)))
