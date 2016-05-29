; Тест Ферма

(define (expmod base n m)
	(cond ((= n 0) 1)
	      ((even? n) (rem (square (expmod base (/ n 2) m))
	                      m))
	      (else (rem (* base (expmod base (- n 1) m))
	                 m))))

(define (even? n)
	(= (rem n 2) 0))

(define (rem a b)
  (if (< a b)
      a
	    (rem (- a b) b)))

(define (square x)
	(* x x))
