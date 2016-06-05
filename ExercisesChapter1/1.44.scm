(define dx 0.00001)

(define (smooth-n f n)
  (repeated smooth n) f)

(define (smooth f)
  (lambda (x) (average (f (- x dx))
                       (f x)
                       (f (+ x dx)))))

(define (average x y z) (/ (+ x y z) 3))

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
