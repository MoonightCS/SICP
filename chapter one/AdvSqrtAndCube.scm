; Улучшенная имплементация sqrt, плюс бонус в виде процедуры cube-root
; Здесь я начал использовать процедуру как возвращаемое значение

(define tolerance 0.00001)

(define (sqrt x)
	(fixed-point (average-damp (lambda (y) (/ x y))) 1.0))

(define (average-damp f)
	(lambda (x) (average x (f x))))

(define (fixed-point f first-guess)
	(try f first-guess))

(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))

(define (try f guess)
  (let ((next (f guess)))
  	 (if (close-enough? guess next)
   	  next
   	  (try f next))))

(define (average a b)
	(/ (+ a b) 2))

(define (cube-root x)
	(fixed-point (average-damp (lambda (y) (/ x (square y))))
	             1.0))

(define (square a)
	(* a a))
