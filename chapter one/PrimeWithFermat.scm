
; Проверка числа на простоту с помощью малой теоремы Ферма. Так как не знаю реализацию рандома, прикуритил его дешевую подделку.

(define (fast-prime? n times)
	(cond ((= times 0) #t)
	      ((fermat-test n) (fast-prime? n (- times 1)))
	      (else #f)))

(define (fermat-test n)
	(try-it (+ 1 (random(- n 1))) n))

(define (try-it a n)
	(= (expmod a n n) a))

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

(define (random n)
	(cond ( (> (- n 5) 0) (- n 3))
	(else (- n 1))))
