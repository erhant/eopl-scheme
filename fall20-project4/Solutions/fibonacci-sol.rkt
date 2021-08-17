#lang racket

;;;;;;;;;; PROBLEM 2 ;;;;;;;;;;;;;
(define (fibo-c x cont)
  (cond
    ((zero? x) (cont 0))
    ((= x 1) (cont 1))
    (else 
      (fibo-c (- x 1)
              (lambda (a) (fibo-c (- x 2)
                                  (lambda (b) (cont (+ a b)))))))))


(define (fibonacci x) (fibo-c x (lambda (a) a)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
; i:    1  2  3  4  5  6  7  8  9  10 11 ...
; f(i): 1  1  2  3  5  8  13 21 34 55 ...

;; Tests
(display (fibonacci 4)) ; should output 3
(display  "\n")
(display (fibonacci 7)) ; should output 13
(display  "\n")
(display (fibonacci 8)) ; should output 21
(display  "\n")