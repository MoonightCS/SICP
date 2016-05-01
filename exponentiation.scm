; Первая реализация возведения в степень через рекурсию

(define (expt b n)
	(if (= n 0)
	    1
	    (* b (expt b (- n 1)))))

; Вторая реализация - линейная итерация

(define (expt b n)
	(expt-iter b n 1))
(define (expt-iter b counter product)
	(if (= counter 0)
	    product
	    (expt-iter b
	               (- counter 1)
	               (* b product))))

; Еще одна реализация через меньшее количество шагов


(define (fast-expt b n)
	(cond ((= n 0) 1)
	      ((even? n) (square (fast-expt b (/ n 2))))
	      (else (* b (fast-expt b (- n 1))))))

(define (even? n)
	(= (remainder n 2) 0))

	    
