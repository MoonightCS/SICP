(define (sqrt x)
	(sqrt-iter 1.00 x))

(define (sqrt-iter guess x)
	( if (good-enough? guess x)
	  	 guess
	  	 (sqrt-iter (improve guess x) x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (square x)
	(* x x))

(define (abs x)
	(cond ((> x 0) x)
	      ((= x 0) 0)
	      ((< x 0) (- x))))
