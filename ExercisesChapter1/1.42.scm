; Имплементация композиции двух функций с одним аргументом. На примере
; инкрементации и возведения в квадрат.

(define (compose f g)
  (lambda (x) (f (g x))))

(define square
  (lambda (x) (* x x)))

(define inc
  (lambda (x) (+ x 1)))
