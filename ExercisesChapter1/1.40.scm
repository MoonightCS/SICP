; Приближенное вычисление нулей кубических уравнений типа x^3 + ax^2 + bx + c


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

(define (cubic a b c)
  (lambda (x) (+ (* x x x) (* a x x) (* b x) c)))

(define (square x)
	(* x x))
