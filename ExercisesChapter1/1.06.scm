; Так как интерпретатор использует аппликативный порядок вычислений,
; то он вычислит сначала аргументы функции new-if, в том числе и процедуру
; sqrt-iter, что приведет к бесконечной рекурсии
