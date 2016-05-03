(define (fmultiplication a b)
  (mult-iter a b 0))

 (define (mult-iter a counter sum)
    (cond ((= counter 0) sum)
          ((even? counter) (mult-iter (double a) (halve counter) sum))
          (else (mult-iter a (- counter 1) (+ sum a)))))

 (define (even? n)
	(= (remainder n 2) 0))

(define (remainder a b)
	(/ a b))

(define (double x)
    (+ x x))

 (define (halve x)
    (/ x 2))
