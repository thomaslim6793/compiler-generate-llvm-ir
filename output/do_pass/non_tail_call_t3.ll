; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_43

create_lambda_closure_43:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_43 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_43, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_43, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_43, i32 0, i32 2
  store i64 (i64, i64)* @lambda_43_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_43 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_43 to i64
  %closure_tagged_tuple_addr_word_43 = add i64 %closure_addr_43, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_43
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_43, i64* %print_4, align 4
  br label %create_lambda_closure_40

create_lambda_closure_40:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_40 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_40, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_40, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_40, i32 0, i32 2
  store i64 (i64)* @lambda_40_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_40 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_40 to i64
  %closure_tagged_tuple_addr_word_40 = add i64 %closure_addr_40, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_40
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_40, i64* %input_11, align 4
  br label %create_lambda_closure_35

create_lambda_closure_35:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_35 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_35, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_35, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_35, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_35_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_35 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_35 to i64
  %closure_tagged_tuple_addr_word_35 = add i64 %closure_addr_35, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_35
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_35, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %fib_26 = alloca i64, align 8
  br label %create_lambda_closure_8

create_lambda_closure_8:                          ; preds = %let_rec_4
  %fib_263 = load i64, i64* %fib_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_8 = bitcast i8* %malloccall4 to { i64 (i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_8, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_8, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_8, i32 0, i32 2
  store i64 (i64, i64)* @lambda_8_, i64 (i64, i64)** %9, align 8
  store i64 2, i64* %10, align 4
  store i64 %fib_263, i64* %11, align 4
  %closure_addr_8 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_8 to i64
  %closure_tagged_tuple_addr_word_8 = add i64 %closure_addr_8, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_8
  store i64 %closure_tagged_tuple_addr_word_8, i64* %fib_26, align 4
  %fib_265 = load i64, i64* %fib_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_8, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %fib_265, i64* %12, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_4
  %fib_266 = load i64, i64* %fib_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %fib_266, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_5, label %call_error_func

is_closure_5:                                     ; preds = %function_call
  %untagged_closure_addr7 = sub i64 %fib_266, 5
  %closure_ptr8 = inttoptr i64 %untagged_closure_addr7 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr8, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr8, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 2
  br i1 %13, label %is_correct_arity_5, label %call_error_func9

call_error_func:                                  ; preds = %function_call
  store i64 %fib_266, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_5:                               ; preds = %is_closure_5
  %lambda_tail_call_result = tail call i64 %function(i64 %fib_266, i64 14)
  br label %result

call_error_func9:                                 ; preds = %is_closure_5
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val10 = call i64 @error_func(i64 17)
  unreachable

result:                                           ; preds = %is_correct_arity_5
  ret i64 %lambda_tail_call_result
}

declare i64 @input()

declare i64 @equal(i64, i64)

declare i64 @print(i64)

declare void @error(i64, i64)

define i64 @error_func(i64 %0) {
entry:
  %current_answer = load i64, i64* @current_answer_ptr, align 4
  call void @error(i64 %0, i64 %current_answer)
  ret i64 0
}

define i64 @lambda_43_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'print'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %function_call

return:                                           ; preds = %function_call
  ret i64 %print_tail_call_result_44

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_44 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_40_(i64 %0) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'input'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %function_call

return:                                           ; preds = %function_call
  ret i64 %input_tail_call_result_41

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_41 = tail call i64 @input()
  br label %return
}

define i64 @lambda_35_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'equal'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %function_call

return:                                           ; preds = %function_call
  ret i64 %equal_tail_call_result_36

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_36 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_8_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'fib_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %less_32

return:                                           ; preds = %merge_then_else_10
  ret i64 %"if/else_snake_result_10"

less_32:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_32, label %call_error_func

arg1_type_check_passed_32:                        ; preds = %less_32
  br i1 true, label %arg2_type_check_passed_32, label %call_error_func1

call_error_func:                                  ; preds = %less_32
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_32:                        ; preds = %arg1_type_check_passed_32
  %less_llvm_result_32 = icmp slt i64 %1, 4
  br i1 %less_llvm_result_32, label %comp_is_true_32, label %comp_is_false_32

call_error_func1:                                 ; preds = %arg1_type_check_passed_32
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_32:                                  ; preds = %arg2_type_check_passed_32
  br label %merge_32

comp_is_false_32:                                 ; preds = %arg2_type_check_passed_32
  br label %merge_32

merge_32:                                         ; preds = %comp_is_false_32, %comp_is_true_32
  %less_snake_result_32 = phi i64 [ -1, %comp_is_true_32 ], [ 9223372036854775807, %comp_is_false_32 ]
  br label %let_9

let_9:                                            ; preds = %merge_32
  %binop_29 = alloca i64, align 8
  store i64 %less_snake_result_32, i64* %binop_29, align 4
  br label %if_else_10

if_else_10:                                       ; preds = %let_9
  %binop_293 = load i64, i64* %binop_29, align 4
  %tag_bits_of_cond_val = and i64 %binop_293, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_10, label %call_error_func4

continue_if_else_10:                              ; preds = %if_else_10
  %is_cond_true = icmp eq i64 %binop_293, -1
  br i1 %is_cond_true, label %then_10, label %else_10

call_error_func4:                                 ; preds = %if_else_10
  store i64 %binop_293, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_10:                                          ; preds = %continue_if_else_10
  br label %merge_then_else_10

else_10:                                          ; preds = %continue_if_else_10
  br label %minus_27

merge_then_else_10:                               ; preds = %continue_no_overflow_15, %then_10
  %"if/else_snake_result_10" = phi i64 [ %1, %then_10 ], [ %plus_snake_result_1566, %continue_no_overflow_15 ]
  br label %return

minus_27:                                         ; preds = %else_10
  %tag_bits_of_arg16 = and i64 %1, 1
  %is_arg1_int7 = icmp eq i64 %tag_bits_of_arg16, 0
  br i1 %is_arg1_int7, label %arg1_type_check_passed_27, label %call_error_func8

arg1_type_check_passed_27:                        ; preds = %minus_27
  br i1 true, label %arg2_type_check_passed_27, label %call_error_func10

call_error_func8:                                 ; preds = %minus_27
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_27:                        ; preds = %arg1_type_check_passed_27
  %minus_snake_result_27 = sub i64 %1, 2
  %x_sign = ashr i64 %1, 63
  %res_sign = ashr i64 %minus_snake_result_27, 63
  %x_sign_neq_y_sign = icmp ne i64 %x_sign, 0
  %res_sign_neq_x_sign = icmp ne i64 %res_sign, %x_sign
  %overflow = and i1 %x_sign_neq_y_sign, %res_sign_neq_x_sign
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_27, label %call_error_func12

call_error_func10:                                ; preds = %arg1_type_check_passed_27
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_27:                          ; preds = %arg2_type_check_passed_27
  %minus_snake_result_2714 = phi i64 [ %minus_snake_result_27, %arg2_type_check_passed_27 ]
  br label %let_11

call_error_func12:                                ; preds = %arg2_type_check_passed_27
  store i64 %minus_snake_result_27, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 5)
  unreachable

let_11:                                           ; preds = %continue_no_overflow_27
  %binop_35 = alloca i64, align 8
  store i64 %minus_snake_result_2714, i64* %binop_35, align 4
  br label %function_call

function_call:                                    ; preds = %let_11
  %fib_26 = load i64, i64* %"free_var_'fib_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %fib_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_24, label %call_error_func15

is_closure_24:                                    ; preds = %function_call
  %untagged_closure_addr17 = sub i64 %fib_26, 5
  %closure_ptr18 = inttoptr i64 %untagged_closure_addr17 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr18, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr18, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %2 = icmp eq i64 %arity, 2
  br i1 %2, label %is_correct_arity_24, label %call_error_func19

call_error_func15:                                ; preds = %function_call
  store i64 %fib_26, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_24:                              ; preds = %is_closure_24
  %binop_3521 = load i64, i64* %binop_35, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %fib_26, i64 %binop_3521)
  br label %let_12

call_error_func19:                                ; preds = %is_closure_24
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 17)
  unreachable

let_12:                                           ; preds = %is_correct_arity_24
  %app_34 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_34, align 4
  br label %minus_21

minus_21:                                         ; preds = %let_12
  %tag_bits_of_arg122 = and i64 %1, 1
  %is_arg1_int23 = icmp eq i64 %tag_bits_of_arg122, 0
  br i1 %is_arg1_int23, label %arg1_type_check_passed_21, label %call_error_func24

arg1_type_check_passed_21:                        ; preds = %minus_21
  br i1 true, label %arg2_type_check_passed_21, label %call_error_func26

call_error_func24:                                ; preds = %minus_21
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val25 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_21:                        ; preds = %arg1_type_check_passed_21
  %minus_snake_result_21 = sub i64 %1, 4
  %x_sign28 = ashr i64 %1, 63
  %res_sign29 = ashr i64 %minus_snake_result_21, 63
  %x_sign_neq_y_sign30 = icmp ne i64 %x_sign28, 0
  %res_sign_neq_x_sign31 = icmp ne i64 %res_sign29, %x_sign28
  %overflow32 = and i1 %x_sign_neq_y_sign30, %res_sign_neq_x_sign31
  %is_not_overflow33 = xor i1 %overflow32, true
  br i1 %is_not_overflow33, label %continue_no_overflow_21, label %call_error_func34

call_error_func26:                                ; preds = %arg1_type_check_passed_21
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val27 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_21:                          ; preds = %arg2_type_check_passed_21
  %minus_snake_result_2136 = phi i64 [ %minus_snake_result_21, %arg2_type_check_passed_21 ]
  br label %let_13

call_error_func34:                                ; preds = %arg2_type_check_passed_21
  store i64 %minus_snake_result_21, i64* @current_answer_ptr, align 4
  %error_call_return_val35 = call i64 @error_func(i64 5)
  unreachable

let_13:                                           ; preds = %continue_no_overflow_21
  %binop_40 = alloca i64, align 8
  store i64 %minus_snake_result_2136, i64* %binop_40, align 4
  br label %function_call37

function_call37:                                  ; preds = %let_13
  %fib_2638 = load i64, i64* %"free_var_'fib_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call39 = and i64 %fib_2638, 7
  %is_closure_of_func_to_call_closure40 = icmp eq i64 %tag_bits_of_closure_of_func_to_call39, 5
  br i1 %is_closure_of_func_to_call_closure40, label %is_closure_18, label %call_error_func41

is_closure_18:                                    ; preds = %function_call37
  %untagged_closure_addr43 = sub i64 %fib_2638, 5
  %closure_ptr44 = inttoptr i64 %untagged_closure_addr43 to i64*
  %function_code_ptr_as_i6445 = load i64, i64* %closure_ptr44, align 4
  %function46 = inttoptr i64 %function_code_ptr_as_i6445 to i64 (i64, i64)*
  %arity_ptr47 = getelementptr i64, i64* %closure_ptr44, i64 1
  %arity48 = load i64, i64* %arity_ptr47, align 4
  %3 = icmp eq i64 %arity48, 2
  br i1 %3, label %is_correct_arity_18, label %call_error_func49

call_error_func41:                                ; preds = %function_call37
  store i64 %fib_2638, i64* @current_answer_ptr, align 4
  %error_call_return_val42 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_18:                              ; preds = %is_closure_18
  %binop_4051 = load i64, i64* %binop_40, align 4
  %lambda_non_tail_call_result52 = call i64 %function46(i64 %fib_2638, i64 %binop_4051)
  br label %let_14

call_error_func49:                                ; preds = %is_closure_18
  store i64 %arity48, i64* @current_answer_ptr, align 4
  %error_call_return_val50 = call i64 @error_func(i64 17)
  unreachable

let_14:                                           ; preds = %is_correct_arity_18
  %app_39 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result52, i64* %app_39, align 4
  br label %plus_15

plus_15:                                          ; preds = %let_14
  %app_3453 = load i64, i64* %app_34, align 4
  %app_3954 = load i64, i64* %app_39, align 4
  %tag_bits_of_arg155 = and i64 %app_3453, 1
  %is_arg1_int56 = icmp eq i64 %tag_bits_of_arg155, 0
  br i1 %is_arg1_int56, label %arg1_type_check_passed_15, label %call_error_func57

arg1_type_check_passed_15:                        ; preds = %plus_15
  %tag_bits_of_arg2 = and i64 %app_3954, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_15, label %call_error_func59

call_error_func57:                                ; preds = %plus_15
  store i64 %app_3453, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_15:                        ; preds = %arg1_type_check_passed_15
  %plus_snake_result_15 = add i64 %app_3453, %app_3954
  %r_ge_0 = icmp sge i64 %app_3954, 0
  %l_ge_0 = icmp sge i64 %app_3453, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_15, %app_3453
  %sum_lt_r = icmp slt i64 %plus_snake_result_15, %app_3954
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %app_3954, 0
  %l_lt_061 = icmp slt i64 %app_3453, 0
  %negative_overflow = and i1 %l_lt_061, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_15, %app_3453
  %sum_gt_r = icmp sgt i64 %plus_snake_result_15, %app_3954
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow62 = or i1 %positive_check, %negative_check
  %is_not_overflow63 = xor i1 %overflow62, true
  br i1 %is_not_overflow63, label %continue_no_overflow_15, label %call_error_func64

call_error_func59:                                ; preds = %arg1_type_check_passed_15
  store i64 %app_3954, i64* @current_answer_ptr, align 4
  %error_call_return_val60 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_15:                          ; preds = %arg2_type_check_passed_15
  %plus_snake_result_1566 = phi i64 [ %plus_snake_result_15, %arg2_type_check_passed_15 ]
  br label %merge_then_else_10

call_error_func64:                                ; preds = %arg2_type_check_passed_15
  store i64 %plus_snake_result_15, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 5)
  unreachable
}
