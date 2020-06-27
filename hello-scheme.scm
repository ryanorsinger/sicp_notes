; 
5

(define x 5)
(+ x x x x x)

; define procedures
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

; Conditional Expressions and Predicates
(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))

; We can also use the "else" special symbol
(define (abs x)
    (cond ((< x 0) (- x)) 
        (else x)))

; Another definition of abs
(define (abs x)
    (if (< x 0)
    (- x)
    x))

(define (between-five-and-ten x) 
        (and (> x 5) (< x 10)))


; newton's method
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

(define (sqrt x)
    (sqrt-iter 1.0 x))


