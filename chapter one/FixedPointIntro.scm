; Поиск неподвижной точки y = f(y)

(define tolerance 0.00001)

(define (fixed-point f first-guess)
	(try f first-guess))

(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))

(define (try f guess)
  (let ((next (f guess)))
  	 (if (close-enough? guess next)
   	  next
   	  (try f next))))

; fixed-point cos 1.0) => 0.7390822985224023

; fixed-point (lambda (y) (+ (sin y) (cos y))) 1.0) => 1.2587315962971173, т.е. здесь мы нашли корень уравнения y = sin(y) + cos(y)
