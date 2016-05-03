(define (fast-expt2 b n)
  (fast-iter2 b n 1))

(define (fast-iter2 b counter product)
    (if (= counter 0)
        product
        (if (even? counter)
            (fast-iter2 (square b)
                        (/ counter 2)
                        product)

            (fast-iter2 b
                        (- counter 1)
                        (* product b)))))

(define (even? n)
	(= (remainder n 2) 0))

(define (remainder a b)
	(/ a b))
