SNAKE_EXT= fdl
UNAME := $(shell uname)
ifeq ($(UNAME), Linux)
  NASM_FORMAT=elf64
  CLANG_FLAGS=-mstackrealign -m64 -g -fstack-protector-all -Wstack-protector -fno-omit-frame-pointer
else
ifeq ($(UNAME), Darwin)
  NASM_FORMAT=macho64
  CLANG_FLAGS=-mstackrealign -arch x86_64 -m64 -g -fstack-protector-all -Wstack-protector -fno-omit-frame-pointer
endif
endif

PKGS=oUnit,extlib,unix,str,llvm,llvm.target,llvm.all_backends,llvm.scalar_opts
BUILD=ocamlbuild -r -use-ocamlfind -cflag -annot 

# In the make main target, the build command is $(BUILD) -package $(PKGS) main.native, which compiles 
# the main.ml file and the related files (parser, lexer, and other dependencies) into an executable named main.native.
# The test.ml file is not included in this build process.

# Similarly, in the make test target, the build command is $(BUILD) -package $(PKGS) test.native, which compiles 
# the test.ml file and the related files (parser, lexer, and other dependencies) into an executable named test.native. 
# The main.ml file is not included in this build process.

# This way, you get two separate executables, each with their own purpose: one for the main compiler program (main.native) and 
# one for running tests (test.native).
main: *.ml parser.mly lexer.mll
	$(BUILD) -package $(PKGS) main.native
	mv main.native main

test: *.ml parser.mly lexer.mll main
	$(BUILD) -package $(PKGS) test.native
	mv test.native test

#test: main 
#	./main test.ml

# This command creates executable by providing .cobra file as input to a pipeline process
# Run 'make <filename>.run' in comand line. 
# the -fno-pie flag is crucial because this fixed alignment issues that I have been getting
# which failed linking. 
%.run: %.$(SNAKE_EXT) main.c | main
	./main $< > $*.ll
	clang -S -emit-llvm main.c -o main.ll  
	clang -c main.ll -o main.o 
	clang -c $*.ll -o $*.o 
	clang main.o $*.o -o $@

lsp-build: *.ml parser.mly lexer.mll main
	dune build

output/%.run: output/%.ll main.c
	clang $(CLANG_FLAGS) $^ -o $@ 

clean:
	rm -rf output/*.o output/*.ll output/*.s output/*.dSYM output/*.run *.log
	rm -rf output/*/*.o output/*/*.s output/*/*.dSYM output/*/*.run output/*/.ll
	rm -rf _build/
	rm -f main test
	rm *.ll *.o *.run

output/%.run: output/%.o main.c
	clang $(CLANG_FLAGS) -o $@ main.c $<


#output/%.run: output/%.ll main.c
#	nasm -f $(NASM_FORMAT) -o $@ $<

# .PRECIOUS: output/%.ll
# output/%.s: input/%.cobra main
# 	./main $< > $@

# output/do_pass/%.run: output/do_pass/%.o main.c
# 	clang $(CLANG_FLAGS) -o $@ main.c $<

# output/do_pass/%.o: output/do_pass/%.s
# 	nasm -f $(NASM_FORMAT) -o $@ $<

# .PRECIOUS: output/do_pass/%.s
# output/do_pass/%.s: input/do_pass/%.cobra main
# 	./main $< > $@


# output/dont_pass/%.run: output/dont_pass/%.o main.c
# 	clang $(CLANG_FLAGS) -o $@ main.c $<

# output/dont_pass/%.o: output/dont_pass/%.s
# 	nasm -f $(NASM_FORMAT) -o $@ $<

# .PRECIOUS: output/dont_pass/%.s
# output/dont_pass/%.s: input/dont_pass/%.cobra main
# 	./main $< > $@


# output/do_err/%.run: output/do_err/%.o main.c
# 	clang $(CLANG_FLAGS) -o $@ main.c $<

# output/do_err/%.o: output/do_err/%.s
# 	nasm -f $(NASM_FORMAT) -o $@ $<

# .PRECIOUS: output/do_err/%.s
# output/do_err/%.s: input/do_err/%.cobra main
# 	./main $< > $@


# output/dont_err/%.run: output/dont_err/%.o main.c
# 	clang -g $(CLANG_FLAGS) -o $@ main.c $<

# output/dont_err/%.o: output/dont_err/%.s
# 	nasm -f $(NASM_FORMAT) -o $@ $<

# .PRECIOUS: output/dont_err/%.s
# output/dont_err/%.s: input/dont_err/%.cobra main
# 	./main $< > $@