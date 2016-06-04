; Производная функции g(x), где Dg(x) = (g(x+dx) - g(x)) / (dx)

(define (derive g)
(lambda (x)
  (/ (- (g (+ x dx)) (g x))
      dx)))

(define dx 0.00001)
