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

(define 
    (between-five-and-ten x) 
        (and (> x 5) (< x 10)))
