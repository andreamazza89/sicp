(define (recursive-f n)
  (cond
    [(< n 3) n]
    [else (+
            (recursive-f (- n 1))
            (* 2 (recursive-f (- n 2)))
            (* 3 (recursive-f (- n 3))))]))

(define (iterative-f n)
  (do-iterative-f n 3 2 1 0))

(define (do-iterative-f n counter f-min-one f-min-two f-min-three)
  (cond
    [(< n 3) n]
    [(= n counter) (+ f-min-one (* 2 f-min-two) (* 3 f-min-three))]
    [else (do-iterative-f n (+ counter 1) (+ f-min-one (* 2 f-min-two) (* 3 f-min-three)) f-min-one f-min-two)]))

(recursive-f 2)
(iterative-f 2)
(recursive-f 3)
(iterative-f 3)
(recursive-f 4)
(iterative-f 4)
(recursive-f 14)
(iterative-f 14)
(recursive-f 15)
(iterative-f 15)

; (recursive-f 4)

; (+
;   (recursive-f 3)
;   (* 2 (recursive-f 2))
;   (* 3 (recursive-f 1)))

; (+
;   (+ (recursive-f 2) (* 2 (recursive-f 1)) (* 3 (recursive-f 0)))
;   (* 2 2)
;   (* 3 1))

; (+
;   (4)
;   (4)
;   (3))

; 11



; (iterative-f 4)

; (do-iterative-f 4 3 2 1 0)

; (do-iterative-f 4 4 (+ 2 (* 2 1) (* 3 0)) 2 1)

; (do-iterative-f 4 4 4 2 1)

; (+ 4 (* 2 2) (* 3 1))

; 11
