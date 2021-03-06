(define (sin angle)
	(if (not (> (abs angle) 0.1))
	    angle
	    (p(sin (/ angle 3.0)))))

(define (cube x)
	(* x x x))

(define (p x)
	(- (* 3 x) (* 4 (cube x))))

(define (abs x)
	(if (> x 0)
	    x
	    (- x)))
