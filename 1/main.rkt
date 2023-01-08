#lang racket

(define (predicate x)
  (or (= (modulo x 3) 0)
      (= (modulo x 5) 0)))

(define ans
  (apply +
         (filter predicate
                 (range 1000))))

(print ans)
