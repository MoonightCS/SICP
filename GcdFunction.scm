(define (gcd a b)
	(if (= b 0)
	    a
	    (gcd b (rem a b))))

(define (rem a b)
  (if (< a b)
      a
	    (rem (- a b) b)))
