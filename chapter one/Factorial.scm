; Первая реализация факториала

(define (factorialOne n)
(if (= n 1)
    1
    (* n (factorialOne (- n 1)))))


; Вторая реализация

(define (factorialTwo n)
	(fact-iter 1 1 n))

(define (fact-iter result counter max-count)
	(if (> counter max-count)
	    result
	    (fact-iter (* result counter)
	               (+ counter 1)
	               max-count)))
