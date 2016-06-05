; Решение упражнение + примеры использования данной процедуры

(define (double f)
  (lambda (x) (f (f x))))

(define square
  (lambda (x) (* x x)))

(define inc
	(lambda (x) (+ x 1)))


; (((double (double double)) inc) 5) => 21
