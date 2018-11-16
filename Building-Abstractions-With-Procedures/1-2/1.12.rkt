
(define (pascal row column)
  (if (or (= row column) (= column 1))
      1
      (+ (pascal (- row 1) (- column 1))
         (pascal (- row 1) column))))
