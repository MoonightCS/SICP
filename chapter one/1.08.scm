(define (cubeRoot x)
	(cubeRoot-iter 1.00 x))

(define (cubeRoot-iter guess x)
	( if (good-enough? guess x)
	  	 guess
	  	 (cubeRoot-iter (improve guess x) x)))

(define (improve y x)
	(/ (+ (/ x (square y)) (* 2 y)) 3))

(define (good-enough? guess x)
	(< (abs (- x (cube guess)))  0.001))

(define (square x)
	(* x x))

(define (cube x)
	(* x x x))

(define (abs x)
	(cond ((> x 0) x)
	      ((= x 0) 0)
	      ((< x 0) (- x))))
