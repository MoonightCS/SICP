; Проверка числа на чистоту с порядком роста O(sqrt(n));

(define (prime? n)
	(= n (smallest-divisor n)))

(define (smallest-divisor n)
	(find-divisor n 2))

(define (find-divisor n test-divisor)
	(cond ((> (square test-divisor) n) n)
	      ((divides? test-divisor n) test-divisor)
	      (else (find-divisor n (+ test-divisor 1)))))

(define (divides? b a)
	(= (rem a b) 0))

(define (rem a b)
  (if (< a b)
      a
	    (rem (- a b) b)))

(define (square x)
	(* x x))	 
