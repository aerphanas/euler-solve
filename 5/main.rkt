#lang racket

(define (find to)
  (for ([x (range 1 to)])
    (if (equal? (make-list 20 0)
                (map (λ (z) (modulo x z)) (range 1 21)))
        (println x)
        (void))))

