open Printf


(* *************************************** SET UP OF LLVM-OCAML CONSTRUCTS STARTS HERE ************************** *)

(* A struct containing context, module, the ocsh function and its builder, external functions. *)
type compile_context = {
      context: Llvm.llcontext;
      the_module: Llvm.llmodule;
      ocsh_func: Llvm.llvalue;
      ocsh_builder: Llvm.llbuilder;
      glob_vars: global_vars;
      ext_funcs: external_functions;
      entry_block: Llvm.llbasicblock;
}
and error_bbs = {
  error_arith_not_num : Llvm.llbasicblock;
  error_logic_not_bool : Llvm.llbasicblock;
  error_if_not_bool : Llvm.llbasicblock;
  error_comp_not_num : Llvm.llbasicblock;
  error_overflow : Llvm.llbasicblock;
}
and external_functions = {
  error_func: Llvm.llvalue;
  print_func : Llvm.llvalue;
  equal_func : Llvm.llvalue;
  input_func : Llvm.llvalue;
}
and global_vars = {
  current_answer : Llvm.llvalue;
}

let rec create_compile_context () =
  let context = Llvm.global_context () in
  let the_module = Llvm.create_module context "my_module" in
  let ocsh_func = Llvm.define_function "our_code_starts_here" (Llvm.function_type (Llvm.i64_type context) [||]) the_module in
  let ocsh_builder = Llvm.builder_at_end context (Llvm.entry_block ocsh_func) in
  let glob_vars = get_glob_vars context the_module in
  let ext_funcs = get_external_functions context the_module in
  let entry_block = Llvm.entry_block ocsh_func in
  {
    context;
    the_module;
    ocsh_func;
    ocsh_builder;
    glob_vars;
    ext_funcs;
    entry_block;
  }    
and get_glob_vars context the_module = {
  current_answer = Llvm.define_global "current_answer_ptr" (Llvm.const_of_int64 (Llvm.i64_type context) 0L false) the_module;
}
and get_external_functions context the_module = {
  error_func = Llvm.declare_function "error" (Llvm.function_type (Llvm.void_type context) [|Llvm.integer_type context 64; Llvm.i64_type context|]) the_module;
  print_func = Llvm.declare_function "print" (Llvm.function_type (Llvm.i64_type context) [|Llvm.i64_type context|]) the_module;
  equal_func = Llvm.declare_function "equal" (Llvm.function_type (Llvm.i64_type context) [|Llvm.i64_type context; Llvm.i64_type context|]) the_module;
  input_func = Llvm.declare_function "input" (Llvm.function_type (Llvm.i64_type context) [||]) the_module;
}

(* *************************** SET UP OF OCAML-LLVM CONSTRUCTS ENDS HERE *********************************************** *)

(* *********************************** COMPILE HELPERS STARTS HERE******************************************** *)
let snake_val_as_llvalue value ctx =
  Llvm.const_of_int64 (Llvm.i64_type ctx.context) value false

let loaded_current_answer ctx llbuilder = Llvm.build_load ctx.glob_vars.current_answer "current_answer" llbuilder 
