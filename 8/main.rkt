#lang racket

(define (input)
  (define (string->list-integer str)
    (map (λ (x) (- x 48))
         (map char->integer
              (string->list str))))
  (string->list-integer (read-line
                         (open-input-file "data.txt"))))
git 
