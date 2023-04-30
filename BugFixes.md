Bug Fix 1: 
    Refactored code so LLVM constructs are locally defined within compile_prog instead of being globally defined.

    When running the compiler executable with a 1-to-1 relation between the execution of the compiler executable and the execution of the compile_prog function, having globally defined LLVM constructs is not an issue. Each run of the compiler executable is an isolated process, and the global LLVM constructs are bound to that particular run.

    However, when there is a 1-to-many relation between the execution of the compiler executable and the execution of the compile_prog function, having globally defined LLVM constructs can cause problems. In this scenario, multiple executions of the compile_prog function within the same instance of the compiler executable will share and mutate the same set of global LLVM constructs, leading to issues such as aggregation or unwanted state persistence across different runs of the compile_prog function.

    To avoid such problems, you can refactor the code to instantiate LLVM constructs within the compile_prog function. This way, each execution of the compile_prog function will use separate instances of the LLVM constructs, preventing state persistence and ensuring the correct behavior of the compiler.

    Everytime I run: >> ./main <filename>.snake
    I am running a new instance of the compiler executable, so it is not a problem to have LLVM constructs be globally defined.
    I.e. compiler executable is ran once and it calls compiler_prog once.  

    But when I run: >> ./test
    I am running a single instance of the compiler executable, where compile_prog is called multiple times for each test that I am generating a 
    <test#>.run file for. So the globally defined LLVM constructs would be mutated everytime compile_prog is run, i.e. everytime a new
    <test#>.run file is generated.  
    I.e. compiler executable is ran once and it calls compiler_prog multiple times, and so if LLVM constructs are globally defined, they
    are mutated everytime compiler_prog is called for generating a *.ll file. 

Bug Fix 2: 
    Fix the problem where the phi node value of the merge block is associated with then_bb and else_bb, but these two blocks are not branched
    to merge block directly. In my implementation, the then_bb reaches merge block indirectly, i.e. then_bb -> next block -> ... -> final next block -> merge bb. In such a case, merge bb needs to associate then_val with final_next_block. To fix this, whenever I use phi node, after compiling an argument, get the final block of the set of IR instructions for that compiled argument, and associate the value of that compiled argument with the final block of that compiled argument, using the function call 'Llvm.insertion_block ctx.builder' to retrieve the current block that the builder is writing at. 

    I.e)    ...
            Llvm.position_at_end then_bb ctx.builder;
            let thn_val = compile_aexpr thn env ctx in (* Place the compilation of thn argument in the then_bb *)
            let cur_descendent_of_then_bb = Llvm.insertion_block ctx.builder in (* Get the current descendent of the then_bb*)
            let _ = Llvm.build_br merge_bb ctx.builder in (* the current descendent of the then_bb then directly branches to merge_bb 
            ...

    I.e. whenever an expression is compiled within block X, it causes a chain of branches from X to the final block Y of that compiled expression.
    Then if the final block Y of this chain of branching, starting from block X, branches into a merge block Z, then the phi node of the merge block 
    Z must have the value of the compiled expression to be linked with the final block Y, and not the starting block X.  