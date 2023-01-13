#lang racket

(define (ans num)
  (define (ten-ex)
    (apply + (map (λ (x)
                    (expt x 2))
                  (range 1 (add1 num)))))
  (define (seq-ex)
    (expt (apply + (range 1 (add1 num))) 2))
  (- (seq-ex) (ten-ex)))                  
