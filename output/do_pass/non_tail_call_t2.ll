; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_41

create_lambda_closure_41:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_41 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_41, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_41, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_41, i32 0, i32 2
  store i64 (i64, i64)* @lambda_41_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_41 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_41 to i64
  %closure_tagged_tuple_addr_word_41 = add i64 %closure_addr_41, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_41
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_41, i64* %print_4, align 4
  br label %create_lambda_closure_38

create_lambda_closure_38:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_38 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_38, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_38, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_38, i32 0, i32 2
  store i64 (i64)* @lambda_38_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_38 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_38 to i64
  %closure_tagged_tuple_addr_word_38 = add i64 %closure_addr_38, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_38
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_38, i64* %input_11, align 4
  br label %create_lambda_closure_33

create_lambda_closure_33:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_33 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_33, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_33, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_33, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_33_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_33 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_33 to i64
  %closure_tagged_tuple_addr_word_33 = add i64 %closure_addr_33, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_33
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_33, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %fact_26 = alloca i64, align 8
  br label %create_lambda_closure_9

create_lambda_closure_9:                          ; preds = %let_rec_4
  %fact_263 = load i64, i64* %fact_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_9 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_9, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_9, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_9, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_9_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %fact_263, i64* %11, align 4
  %closure_addr_9 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_9 to i64
  %closure_tagged_tuple_addr_word_9 = add i64 %closure_addr_9, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_9
  store i64 %closure_tagged_tuple_addr_word_9, i64* %fact_26, align 4
  %fact_265 = load i64, i64* %fact_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_9, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %fact_265, i64* %12, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_4
  %fact_266 = load i64, i64* %fact_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %fact_266, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_5, label %call_error_func

is_closure_5:                                     ; preds = %function_call
  %untagged_closure_addr7 = sub i64 %fact_266, 5
  %closure_ptr8 = inttoptr i64 %untagged_closure_addr7 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr8, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr8, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 4
  br i1 %13, label %is_correct_arity_5, label %call_error_func9

call_error_func:                                  ; preds = %function_call
  store i64 %fact_266, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_5:                               ; preds = %is_closure_5
  %lambda_tail_call_result = tail call i64 %function(i64 %fact_266, i64 2, i64 6)
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

define i64 @lambda_41_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_42

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_42 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_38_(i64 %0) {
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
  ret i64 %input_tail_call_result_39

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_39 = tail call i64 @input()
  br label %return
}

define i64 @lambda_33_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_34

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_34 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_9_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'fact_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %less_30

return:                                           ; preds = %merge_then_else_11
  ret i64 %"if/else_snake_result_11"

less_30:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %2, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_30, label %call_error_func

arg1_type_check_passed_30:                        ; preds = %less_30
  br i1 true, label %arg2_type_check_passed_30, label %call_error_func1

call_error_func:                                  ; preds = %less_30
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_30:                        ; preds = %arg1_type_check_passed_30
  %less_llvm_result_30 = icmp slt i64 %2, 2
  br i1 %less_llvm_result_30, label %comp_is_true_30, label %comp_is_false_30

call_error_func1:                                 ; preds = %arg1_type_check_passed_30
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_30:                                  ; preds = %arg2_type_check_passed_30
  br label %merge_30

comp_is_false_30:                                 ; preds = %arg2_type_check_passed_30
  br label %merge_30

merge_30:                                         ; preds = %comp_is_false_30, %comp_is_true_30
  %less_snake_result_30 = phi i64 [ -1, %comp_is_true_30 ], [ 9223372036854775807, %comp_is_false_30 ]
  br label %let_10

let_10:                                           ; preds = %merge_30
  %binop_29 = alloca i64, align 8
  store i64 %less_snake_result_30, i64* %binop_29, align 4
  br label %if_else_11

if_else_11:                                       ; preds = %let_10
  %binop_293 = load i64, i64* %binop_29, align 4
  %tag_bits_of_cond_val = and i64 %binop_293, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_11, label %call_error_func4

continue_if_else_11:                              ; preds = %if_else_11
  %is_cond_true = icmp eq i64 %binop_293, -1
  br i1 %is_cond_true, label %then_11, label %else_11

call_error_func4:                                 ; preds = %if_else_11
  store i64 %binop_293, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_11:                                          ; preds = %continue_if_else_11
  br label %merge_then_else_11

else_11:                                          ; preds = %continue_if_else_11
  br label %times_25

merge_then_else_11:                               ; preds = %continue_no_overflow_15, %then_11
  %"if/else_snake_result_11" = phi i64 [ %1, %then_11 ], [ %plus_snake_result_1544, %continue_no_overflow_15 ]
  br label %return

times_25:                                         ; preds = %else_11
  %tag_bits_of_arg16 = and i64 %1, 1
  %is_arg1_int7 = icmp eq i64 %tag_bits_of_arg16, 0
  br i1 %is_arg1_int7, label %arg1_type_check_passed_25, label %call_error_func8

arg1_type_check_passed_25:                        ; preds = %times_25
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_25, label %call_error_func10

call_error_func8:                                 ; preds = %times_25
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_25:                        ; preds = %arg1_type_check_passed_25
  %logical_shift_right = lshr i64 %1, 1
  %times_snake_result_25 = mul i64 %logical_shift_right, %2
  %div_res = sdiv i64 %times_snake_result_25, %1
  %shl_adjusted = shl i64 %div_res, 1
  %is_overflow = icmp ne i64 %shl_adjusted, %2
  %is_not_overflow = xor i1 %is_overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_25, label %call_error_func12

call_error_func10:                                ; preds = %arg1_type_check_passed_25
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_25:                          ; preds = %arg2_type_check_passed_25
  %times_snake_result_2514 = phi i64 [ %times_snake_result_25, %arg2_type_check_passed_25 ]
  br label %let_12

call_error_func12:                                ; preds = %arg2_type_check_passed_25
  store i64 %times_snake_result_25, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 5)
  unreachable

let_12:                                           ; preds = %continue_no_overflow_25
  %binop_35 = alloca i64, align 8
  store i64 %times_snake_result_2514, i64* %binop_35, align 4
  br label %minus_22

minus_22:                                         ; preds = %let_12
  %tag_bits_of_arg115 = and i64 %2, 1
  %is_arg1_int16 = icmp eq i64 %tag_bits_of_arg115, 0
  br i1 %is_arg1_int16, label %arg1_type_check_passed_22, label %call_error_func17

arg1_type_check_passed_22:                        ; preds = %minus_22
  br i1 true, label %arg2_type_check_passed_22, label %call_error_func19

call_error_func17:                                ; preds = %minus_22
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val18 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_22:                        ; preds = %arg1_type_check_passed_22
  %minus_snake_result_22 = sub i64 %2, 2
  %x_sign = ashr i64 %2, 63
  %res_sign = ashr i64 %minus_snake_result_22, 63
  %x_sign_neq_y_sign = icmp ne i64 %x_sign, 0
  %res_sign_neq_x_sign = icmp ne i64 %res_sign, %x_sign
  %overflow = and i1 %x_sign_neq_y_sign, %res_sign_neq_x_sign
  %is_not_overflow21 = xor i1 %overflow, true
  br i1 %is_not_overflow21, label %continue_no_overflow_22, label %call_error_func22

call_error_func19:                                ; preds = %arg1_type_check_passed_22
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_22:                          ; preds = %arg2_type_check_passed_22
  %minus_snake_result_2224 = phi i64 [ %minus_snake_result_22, %arg2_type_check_passed_22 ]
  br label %let_13

call_error_func22:                                ; preds = %arg2_type_check_passed_22
  store i64 %minus_snake_result_22, i64* @current_answer_ptr, align 4
  %error_call_return_val23 = call i64 @error_func(i64 5)
  unreachable

let_13:                                           ; preds = %continue_no_overflow_22
  %binop_38 = alloca i64, align 8
  store i64 %minus_snake_result_2224, i64* %binop_38, align 4
  br label %function_call

function_call:                                    ; preds = %let_13
  %fact_26 = load i64, i64* %"free_var_'fact_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %fact_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_18, label %call_error_func25

is_closure_18:                                    ; preds = %function_call
  %untagged_closure_addr27 = sub i64 %fact_26, 5
  %closure_ptr28 = inttoptr i64 %untagged_closure_addr27 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr28, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr28, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 4
  br i1 %3, label %is_correct_arity_18, label %call_error_func29

call_error_func25:                                ; preds = %function_call
  store i64 %fact_26, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_18:                              ; preds = %is_closure_18
  %binop_3531 = load i64, i64* %binop_35, align 4
  %binop_3832 = load i64, i64* %binop_38, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %fact_26, i64 %binop_3531, i64 %binop_3832)
  br label %let_14

call_error_func29:                                ; preds = %is_closure_18
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val30 = call i64 @error_func(i64 17)
  unreachable

let_14:                                           ; preds = %is_correct_arity_18
  %app_34 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_34, align 4
  br label %plus_15

plus_15:                                          ; preds = %let_14
  %app_3433 = load i64, i64* %app_34, align 4
  %tag_bits_of_arg134 = and i64 %app_3433, 1
  %is_arg1_int35 = icmp eq i64 %tag_bits_of_arg134, 0
  br i1 %is_arg1_int35, label %arg1_type_check_passed_15, label %call_error_func36

arg1_type_check_passed_15:                        ; preds = %plus_15
  br i1 true, label %arg2_type_check_passed_15, label %call_error_func38

call_error_func36:                                ; preds = %plus_15
  store i64 %app_3433, i64* @current_answer_ptr, align 4
  %error_call_return_val37 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_15:                        ; preds = %arg1_type_check_passed_15
  %plus_snake_result_15 = add i64 %app_3433, 0
  %l_ge_0 = icmp sge i64 %app_3433, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_15, %app_3433
  %sum_lt_r = icmp slt i64 %plus_snake_result_15, 0
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %app_3433, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_15, %app_3433
  %sum_gt_r = icmp sgt i64 %plus_snake_result_15, 0
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow40 = or i1 %positive_check, %negative_check
  %is_not_overflow41 = xor i1 %overflow40, true
  br i1 %is_not_overflow41, label %continue_no_overflow_15, label %call_error_func42

call_error_func38:                                ; preds = %arg1_type_check_passed_15
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val39 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_15:                          ; preds = %arg2_type_check_passed_15
  %plus_snake_result_1544 = phi i64 [ %plus_snake_result_15, %arg2_type_check_passed_15 ]
  br label %merge_then_else_11

call_error_func42:                                ; preds = %arg2_type_check_passed_15
  store i64 %plus_snake_result_15, i64* @current_answer_ptr, align 4
  %error_call_return_val43 = call i64 @error_func(i64 5)
  unreachable
}
