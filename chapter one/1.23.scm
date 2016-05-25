; Оптимизация поиска наименьшего делителя путем уменьшения количетсва перебираемых чисел

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (rem b a) 0))

(define (next n)
  (if (= n 2)
      3
      (+ n 2)))

(define (even? n)
	(= (rem n 2) 0))

(define (rem a b)
  (if (< a b)
      a
	    (rem (- a b) b)))

(define (square x)
	(* x x))
