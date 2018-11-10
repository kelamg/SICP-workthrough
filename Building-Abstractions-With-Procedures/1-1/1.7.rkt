
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter-alt 1.0 x))

; The tolerance value of 0.001 is quite large when computing the value of
; small numbers like 0.000025. Upon running (sqrt 0.000025) on my machine,
; the program halted with a result of 0.031515954454847304, a result with
; a percent error of over 500 (expected a result of 0.005).
;
; For very large values, the tolerance value is too small to be represented
; on my machine and such, the algorithm runs indefinitely due to the best guess
; not falling within the tolerance value and sqrt consequently recursing on
; the same guess. Testing with (sqrt 1000000000000), the program halts
; instantaneously with the expected result, but enters an infinite loop when
; run with an extra zero (13 zeros).

; The exercise states that "in computers, arithmetic operations are almost
; always performed with limited precision". This must mean that a point is
; reached where the improved guess is the same as the current guess.

(define (really-good-enough? guess x)
  (= (improve guess x) guess))

(define (sqrt-iter-alt guess x)
  (if (really-good-enough? guess x)
      guess
      (sqrt-iter-alt (improve guess x) x)))

