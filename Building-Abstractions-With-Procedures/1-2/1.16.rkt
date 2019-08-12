#lang sicp

;; helpers
(define (square n) (* n n))

(define (even? n)
  (= (remainder n 2) 0))


(define (fast-expt b n)
  (define (fast-iter a b n)
    (cond [(= n 0) a]
          [(even? n) (fast-iter a (square b) (/ n 2))]
          [else (fast-iter (* a b) b (- n 1))]))
  (fast-iter 1 b n))


