#lang racket

; Code chunk 1
(define c1 (lambda ()
             (displayln (list 1 2 3))
             ))

; Code chunk 2
(define c2 (lambda ()
             (define chunk2list (list 10 20 30))
             (displayln chunk2list)
             ))

; Code chunk 3
(define c3 (lambda ()
             (displayln (list 100 200 300))
             (displayln (list 400 500 600))
             ))

(for ((x (in-list (list c1 c2 c3))))
  (thread x))