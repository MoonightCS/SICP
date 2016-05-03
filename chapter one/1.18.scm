(define (fmultiplication a b)
  (mult-iter a b 0))

 (define (mult-iter a counter sum)
    (cond ((= counter 0) sum)
          ((even? counter) (mult-iter (double a) (halve counter) sum))
          (else (mult-iter a (- counter 1) (+ sum a)))))

 (define (even? n)
	(= (rem n 2) 0))

(define (double x)
    (+ x x))

 (define (halve x)
    (/ x 2))

(define (rem a b)
  (if (< a b)
      a
	    (rem (- a b) b)))
