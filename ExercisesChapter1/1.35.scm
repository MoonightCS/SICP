; Для того, чтобы доказать, что золотое сечение есть неподвижная точка трансформации x -> 1 + 1/x
; Необходимо умножить обе части на x (Получим x^2 = x + 1), затем перенсти всё в левую часть
; и затем найти корень квадратного уравнения, где и получим золотое сечение.

; Вычисление золотого сечения с помощью процедуры fixed-point;

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

(define (phi-function)
  (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1 ))
