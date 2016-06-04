; Реалиазация метода Ньютона. Плюс использование метода Ньютона на примере
; функции нахождения квадратного корня из x;

(define dx 0.00001)
(define tolerance 0.00001)

(define (newtons-method g guess)
  (fixed-point (newton-transfrom g) guess))

(define (newton-transfrom g)
(lambda (x)
  (- x (/ (g x) ((derive g) x)))))

(define (derive g)
(lambda (x)
  (/ (- (g (+ x dx)) (g x))
      dx)))

(define (fixed-point f first-guess)
	(try f first-guess))

(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))

(define (try f guess)
  (let ((next (f guess)))
  	 (if (close-enough? guess next)
   	  next
   	  (try f next))))

(define (sqrt x)
	(newtons-method (lambda (y) (- (square y) x)) 1.0))

(define (square x)
	(* x x))
