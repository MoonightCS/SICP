
; Композиция функции самой себя (если так можно выразиться) n раз.
; т.е. f(f(...(fx)...)).

(define (repeated f n)
  (if (> n 1)
    (lambda (x) ((compose (repeated f (- n 1)) f) x))
    f))

(define (compose f g)
  (lambda (x) (f (g x))))

(define square
  (lambda (x) (* x x)))

(define inc
  (lambda (x) (+ x 1)))
