# compiler-generate-llvm-ir
A compiler for standard programming language concrete syntax. This compiler targets LLVM IR.

## Acknowledgements

This project was developed as part of CS6410 - Compilers at Northeastern University under the guidance of Professor Ben Lerner. 

# 1. Source language - ferdelance

- The source language is called 'ferdelance' ('ferdelance' is a snake species found in Europe. 
So this language is a shoutout to Python which is the most popular language with snake name). 
- The type extension of a 'ferdelance' file is .fdl.

This language supports: 
(1) Types: integers, booleans, tuples. 
(2) Expressions: 'if/else' expression. 'let', 'let rec' expressions for bindings. Sequence expression allowing side-effects. 
(2) Operations: Standard arithmetic and comparison operations on numbers, logical operations. 
(3) Functions: Recursive functions, closures (and consequently lambda expressions)
(4) Runtime error checks: Type check, integer overflow/underflow. 

Example 1) File name: sample.fdl
~~~
def f(x):
    (let z = x + 1 in 
        (if z < 1 : z 
              else: x + f2(x - 1)))

f(4)
~~~
Outputs in terminal:
~~~
10
~~~
Example 2) File name factorial.fdl
~~~
let rec fact = (lambda(n): if n < 2: 1 else: n * fact(n - 1)) 
in fact(3)
~~~
Outputs in terminal:
~~~
6
~~~
# 2. Summary of this project
1. Define AST of language supporting the followiing data types: integer, boolean, tuples
			Following expressions: if… else, let var = expr, mutation, getters.
			Functions: recursive functions, closures, lambdas. 
2. Preprocess expression with lexer and parser to generate abstract syntax tree. 
3. Process AST with following phases: desugaring, A-normalized form, well-formedness check (i.e. compile time error check)
4. Transform refined AST into LLVM IR (analogous to assembly code but LLVM IR is a architecture independent language)
    1. Use LLVM binding for OCaml to construct high-level data structures for storing LLVM IR instructions. 
    2. Define data types as 64-bit unsigned integers and use tagged bits to distinguish them during runtime.   
    3. Define a tree-fold function that maps each AST variant into corresponding LLVM IR instruction and then concatenate the result into string of LLVM IR.
    4. Define this LLVM IR with the function name our_code_starts_here
5. Write a C file (main file) that:
    1. defines a print function (and helpers) for printing output value of LLVM IR based on the tagged bits of the resulting unsigned 64-bit integer.
    2. defines a main function that simply calls the LLVM IR (i.e. calls the function our_code_starts_here) and prints the result. 
6. Create a Makefiel for making the build of this compiler
    1. Compiling the target file containing expression to with our compiler file to generate LLVM IR.
    2. Script for link LLVM IR with C file using Clang
    3. Scripts for running unit tests. 


# 3. How to actually use this compiler!
1) Create a source file like the examples I gave above:
~~~
>> touch sample.fdl
~~~
2) Run the following command to compile sample.fdl into sample.run executable: 
~~~ 
>> make sample.run
~~~
3) Execute: 
~~~
>> ./sample.run
~~~
