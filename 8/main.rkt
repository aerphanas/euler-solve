#lang racket

(define (string->list-parser str)
  (map (λ (x) (- x 48))
       (map char->integer
            (string->list str))))
