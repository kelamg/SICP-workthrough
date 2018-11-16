
; recursive
(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (* 2 (f-rec (- n 2)))
                 (* 3 (f-rec (- n 3)))))))

; iterative
(define (f n)
  (define (f-iter k a b c)
    (if (= k (+ n 1))
        a
        (f-iter (+ k 1) (+ (* 1 a) (* 2 b) (* c 3)) a b)))
  (if (< n 3) n (f-iter 3 2 1 0)))