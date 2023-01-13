#lang racket

(apply *
       (filter (λ (x) (= (modulo 600851475143 x) 0))
               (range 1 30000)))

(last
 (filter (λ (x) (= (modulo 600851475143 x) 0))
         (range 1 30000)))
