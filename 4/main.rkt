;./main | grep "its palidrome" | sort -n | tail -n 5
#lang racket

(define (number-palidrome? i)
  (define (string-palidrome? s)
    (if (string=?
         s
         (list->string (reverse (string->list s))))
        #t
        #f))
  (if (string-palidrome? (number->string i)) #t #f))

(define check
  (for ([x (range 100 1000)])
    (for ([y (range 100 1000)])
      (if (number-palidrome? (* x y))
          (printf "~a from ~a * ~a : its palidrome\n"(* x y) x y)
          (printf "~a from ~a * ~a : its not palidrome\n"(* x y) x y)))))
