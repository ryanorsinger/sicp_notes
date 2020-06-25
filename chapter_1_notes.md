
## General form of a conditional expression
```
(cond (predicate1 expression1)
        (predicate2 expression2)
        ...
        (predicate_n expression n))

```
Each `(predicate expression)` combination is called a clause.

### Using "Else"
Else is a special symbol that can be used in place of the predicate in the final clause of a `cond`. This causes the `cond` to return as its value the value of the corresponding expression when all previous clauses have been bypassed.
```
; We can also use the "else" special symbol
(define (abs x)
    (cond ((< x 0) (- x)) 
        (else x)))
```

### Using "If"
THe general form of an `if` expression is `(if predicate consequent alternative)`

```
; Another definition of abs
(define (abs x)
    (if (< x 0)
    (- x)
    x))
```

## Other Logical Operators
- `(and expression1 expression2)`
- `(or expression1 expression2 expression_n)`
- `(not expression)`

