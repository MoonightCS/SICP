; Вычисление приближения к pi/8 без использования lambda.

(define (pi-sum a b)
	(define (pi-term x)
		(/ 1.0 (* x (+ x 2))))
	(define (pi-next x)
		(+ x 4))
	(sum pi-term a pi-next b))

(define (sum term a next b)
	(if (> a b)
	    0
	    (+ (term a)
	       (sum term (next a) next b))))


; Вычисление приближения к pi/8 с использованием lambda

(define (pi-sum-lambda a b)
	(sum (lambda (x) (/ 1.0 (* x (+ x 2))))
	     a
	     (lambda (x) (+ x 4))
	     b))
(define (sum term a next b)
	(if (> a b)
	    0
	    (+ (term a)
	       (sum term (next a) next b))))
