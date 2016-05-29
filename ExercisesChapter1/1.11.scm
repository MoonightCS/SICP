; Рекурсивный

(define (function n)
	(cond ((< n 3) n)
	      (else (+ (function (- n 1))
	               (function(- n 2))
	               (function(- n 3))))))

; Итеративный

(define (f n)
	(f-iter 2 1 0 n))

(define (f-iter a b c counter)
	(if (= counter 0)
	    c
	    (f-iter(+ a b c) a b (- counter 1))))

 
