# compiler-generate-llvm-ir
A compiler for standard programming language concrete syntax. This compiler targets LLVM IR.

Source language - ferdelance:

The source language is called 'ferdelance' (this is the name of a snake, its just a random name). 
The type extension of a 'ferdelance' file is .fdl.

This language supports: 
(1) Types: integers, booleans, tuples. 
(2) Expressions: 'if/else' expression. 'let', 'let rec' expressions for bindings. Sequence expression for allowing side-effects. 
(2) Operations: Standard arithmetic and comparison operations on numbers. Type check predicates.  
logical operations on booleans, and tuple construction, setter, and getter operations. 
(3) Functions: It allows function declarations, and the use of functions as first-class objects via lambdas.

Example 1) File name: sample1.fdl

def f1(x, y, z):
    x + y + z

def f2(x, y):
    (let z = y + 1 in 
    (if f1(x, y, y + 1) < 1 : x + y + z
    else: f2(x - 1, y - 1)))

f2(10, 10)

Example 2) File name factorial.fdl

let rec fact = (lambda(n): if n < 2: 1 else: n * fact(n - 1)) 
in fact(3)


How to run:
1) Create a source file like the examples I gave above, e.g. sample.fdl
2) Run the following command: >> make sample.run
3) Execute the program: ./sample.run


* This is a finals project for course Compilers (course code: CS6410) at Northeastern University, taught by professor Ben Lerner.
The starter codes of this project were provided by Ben Lerner. 
* Collaborators: Spencer Rhodes, Ryan Bride.
