
; Number Number Number -> Number
; produces the sum of the squares of the two larger numbers
(define (sum-largers x y z)
  (if (= x (larger x y))
      (sum-of-squares x (larger y z))
      (sum-of-squares y (larger x z))))

(define (larger x y)
  (if (> x y) x y))

(define (sum-of-squares x y)
  (+ (* x x) (* y y)))
