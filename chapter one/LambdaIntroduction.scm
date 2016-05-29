; различные примеры использования lambda

((lambda (x y z) (+ x y (square z)), 1 2 3))

(define (sum x y)
	(+ y ((lambda (x) (+ x 4)) x)))

(define (sum x y)
	(+ y (adv x)))

(define (adv x)
	(+ x 4))

(define (AdvSum x y)
	(+ y (plus4 x)))

(define plus4
	(lambda (x) (+ x 4)))
