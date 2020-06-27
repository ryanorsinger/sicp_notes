; 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
    (* 3 (- 6 2) (- 2 7)))

; 1.3
(define (sum-squares-of-two-largest a b c)
    (cond
        ((< a b c) (+ (* b b) (* c c)))
        ((< a c b) (+ (* b b) (* c c)))
        ((< c b a) (+ (* b b) (* a a)))
        ((< c a b) (+ (* a a) (* b b)))
        ((< b a c) (+ (* a a) (* c c)))
        ((< b c a) (+ (* a a) (* c c)))))

; 1.3 solves another way
(define (two-largest a b c)
    (cond
        ((or (< a b c) (< a b c)) (list b c))
        ((or (< b a c) (< b c a)) (list a c))
        ((or (< c a b) (< c b a)) (list a b))))

;1.4
(define (a-plus-abs-b a b)
    ; ((if (predicate) expression_if_true expression_if_false) operand1 operand2)
    ((if (> b 0) + -) a b))

; Another example of 1.4's evaluation model
(define (add x) (+ x x))
(define (square x) (* x x))

(define (add-positive-square-negative a)
    ((if (> a 0) add square) a))

; Same evaluation w/ a different conditional form
(define (add-positive-square-negative a)
    (cond 
        ((> a 0) (add a))
        (else (square a))))

; Alyssa P. Hacker wants to build an "if" that's not a special form.
; Why can't I just define "if" as an ordinary procedure in terms of "cond"?
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

; The following implementation using new-if is problematic, maximum recursion depth exceeded
; ;Aborting!: maximum recursion depth exceeded
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x )
        guess
        (sqrt-iter (improve guess x)
        x)))
