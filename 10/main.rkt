#lang racket

(require math)

(apply + (filter prime? (range 2000000)))
