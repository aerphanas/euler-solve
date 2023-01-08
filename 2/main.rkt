#lang racket

(define (fib max)
  (define (iter a b count)
    (if (> b max)
        count
        (iter b (+ a b) (if (even? b)
                            (+ b count)
                            count))))
  (iter 0 1 0))

(fib 4000000)
