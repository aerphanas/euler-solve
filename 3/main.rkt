#lang racket

(apply *
       (filter (lambda (x) (= (modulo 600851475143 x) 0))
               (range 1 30000)))

(last
 (filter (lambda (x) (= (modulo 600851475143 x) 0))
         (range 1 30000)))
