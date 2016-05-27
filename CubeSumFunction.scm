; Простая версия вычисления суммы кубов в диапазоне a...b

(define (sum-cubes a b)
	(if (> a b)
	    0
	    (+ (cube a) (sum-cubes (+ a 1) b))))


; Advanced-версия вычисления суммы кубов в диапазоне a...b

(define (inc n)
	(+ n 1))

(define (sum-cubes-adv a b)
	(sum cube a inc b))

(define (sum term a next b)
	(if (> a b)
	    0
	    (+ (term a)
	       (sum term (next a) next b))))

(define (cube x)
	(* x x x))
