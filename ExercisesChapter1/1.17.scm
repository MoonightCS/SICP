(define (multiplication a b)
  (cond ((= b 0) 0)
        ((even? b) (multiplication (double a) (halve b)))
        (else (+ a (multiplication a (- b 1))))))

 (define (double x)
    (+ x x))

  (define (halve x)
    (/ x 2))
