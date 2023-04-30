; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_53

create_lambda_closure_53:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_53 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_53, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_53, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_53, i32 0, i32 2
  store i64 (i64, i64)* @lambda_53_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_53 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_53 to i64
  %closure_tagged_tuple_addr_word_53 = add i64 %closure_addr_53, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_53
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_53, i64* %print_4, align 4
  br label %create_lambda_closure_50

create_lambda_closure_50:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_50 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_50, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_50, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_50, i32 0, i32 2
  store i64 (i64)* @lambda_50_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_50 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_50 to i64
  %closure_tagged_tuple_addr_word_50 = add i64 %closure_addr_50, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_50
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_50, i64* %input_11, align 4
  br label %create_lambda_closure_45

create_lambda_closure_45:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_45 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_45, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_45, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_45, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_45_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_45 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_45 to i64
  %closure_tagged_tuple_addr_word_45 = add i64 %closure_addr_45, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_45
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_45, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %sum_26 = alloca i64, align 8
  br label %create_lambda_closure_9

create_lambda_closure_9:                          ; preds = %let_rec_4
  %sum_263 = load i64, i64* %sum_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_9 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_9, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_9, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_9, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_9_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %sum_263, i64* %11, align 4
  %closure_addr_9 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_9 to i64
  %closure_tagged_tuple_addr_word_9 = add i64 %closure_addr_9, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_9
  store i64 %closure_tagged_tuple_addr_word_9, i64* %sum_26, align 4
  %sum_265 = load i64, i64* %sum_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_9, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %sum_265, i64* %12, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_4
  %sum_266 = load i64, i64* %sum_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %sum_266, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_5, label %call_error_func

is_closure_5:                                     ; preds = %function_call
  %untagged_closure_addr7 = sub i64 %sum_266, 5
  %closure_ptr8 = inttoptr i64 %untagged_closure_addr7 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr8, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr8, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 4
  br i1 %13, label %is_correct_arity_5, label %call_error_func9

call_error_func:                                  ; preds = %function_call
  store i64 %sum_266, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_5:                               ; preds = %is_closure_5
  %lambda_tail_call_result = tail call i64 %function(i64 %sum_266, i64 200000, i64 0)
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

define i64 @lambda_53_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_54

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_54 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_50_(i64 %0) {
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
  ret i64 %input_tail_call_result_51

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_51 = tail call i64 @input()
  br label %return
}

define i64 @lambda_45_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_46

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_46 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_9_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'sum_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %let_10

return:                                           ; preds = %merge_then_else_17
  ret i64 %"if/else_snake_result_17"

let_10:                                           ; preds = %lambda_body
  %a_30 = alloca i64, align 8
  store i64 2, i64* %a_30, align 4
  br label %let_11

let_11:                                           ; preds = %let_10
  %b_33 = alloca i64, align 8
  store i64 4, i64* %b_33, align 4
  br label %let_12

let_12:                                           ; preds = %let_11
  %c_36 = alloca i64, align 8
  store i64 6, i64* %c_36, align 4
  br label %let_13

let_13:                                           ; preds = %let_12
  %d_39 = alloca i64, align 8
  store i64 8, i64* %d_39, align 4
  br label %let_14

let_14:                                           ; preds = %let_13
  %e_42 = alloca i64, align 8
  store i64 10, i64* %e_42, align 4
  br label %let_15

let_15:                                           ; preds = %let_14
  %f_45 = alloca i64, align 8
  store i64 12, i64* %f_45, align 4
  br label %less_36

less_36:                                          ; preds = %let_15
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_36, label %call_error_func

arg1_type_check_passed_36:                        ; preds = %less_36
  br i1 true, label %arg2_type_check_passed_36, label %call_error_func1

call_error_func:                                  ; preds = %less_36
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_36:                        ; preds = %arg1_type_check_passed_36
  %less_llvm_result_36 = icmp slt i64 %1, 2
  br i1 %less_llvm_result_36, label %comp_is_true_36, label %comp_is_false_36

call_error_func1:                                 ; preds = %arg1_type_check_passed_36
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_36:                                  ; preds = %arg2_type_check_passed_36
  br label %merge_36

comp_is_false_36:                                 ; preds = %arg2_type_check_passed_36
  br label %merge_36

merge_36:                                         ; preds = %comp_is_false_36, %comp_is_true_36
  %less_snake_result_36 = phi i64 [ -1, %comp_is_true_36 ], [ 9223372036854775807, %comp_is_false_36 ]
  br label %let_16

let_16:                                           ; preds = %merge_36
  %binop_48 = alloca i64, align 8
  store i64 %less_snake_result_36, i64* %binop_48, align 4
  br label %if_else_17

if_else_17:                                       ; preds = %let_16
  %binop_483 = load i64, i64* %binop_48, align 4
  %tag_bits_of_cond_val = and i64 %binop_483, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_17, label %call_error_func4

continue_if_else_17:                              ; preds = %if_else_17
  %is_cond_true = icmp eq i64 %binop_483, -1
  br i1 %is_cond_true, label %then_17, label %else_17

call_error_func4:                                 ; preds = %if_else_17
  store i64 %binop_483, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_17:                                          ; preds = %continue_if_else_17
  br label %merge_then_else_17

else_17:                                          ; preds = %continue_if_else_17
  br label %minus_31

merge_then_else_17:                               ; preds = %continue_no_overflow_21, %then_17
  %"if/else_snake_result_17" = phi i64 [ %2, %then_17 ], [ %plus_snake_result_2158, %continue_no_overflow_21 ]
  br label %return

minus_31:                                         ; preds = %else_17
  %tag_bits_of_arg16 = and i64 %1, 1
  %is_arg1_int7 = icmp eq i64 %tag_bits_of_arg16, 0
  br i1 %is_arg1_int7, label %arg1_type_check_passed_31, label %call_error_func8

arg1_type_check_passed_31:                        ; preds = %minus_31
  br i1 true, label %arg2_type_check_passed_31, label %call_error_func10

call_error_func8:                                 ; preds = %minus_31
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_31:                        ; preds = %arg1_type_check_passed_31
  %minus_snake_result_31 = sub i64 %1, 2
  %x_sign = ashr i64 %1, 63
  %res_sign = ashr i64 %minus_snake_result_31, 63
  %x_sign_neq_y_sign = icmp ne i64 %x_sign, 0
  %res_sign_neq_x_sign = icmp ne i64 %res_sign, %x_sign
  %overflow = and i1 %x_sign_neq_y_sign, %res_sign_neq_x_sign
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_31, label %call_error_func12

call_error_func10:                                ; preds = %arg1_type_check_passed_31
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_31:                          ; preds = %arg2_type_check_passed_31
  %minus_snake_result_3114 = phi i64 [ %minus_snake_result_31, %arg2_type_check_passed_31 ]
  br label %let_18

call_error_func12:                                ; preds = %arg2_type_check_passed_31
  store i64 %minus_snake_result_31, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 5)
  unreachable

let_18:                                           ; preds = %continue_no_overflow_31
  %binop_54 = alloca i64, align 8
  store i64 %minus_snake_result_3114, i64* %binop_54, align 4
  br label %plus_28

plus_28:                                          ; preds = %let_18
  %tag_bits_of_arg115 = and i64 %2, 1
  %is_arg1_int16 = icmp eq i64 %tag_bits_of_arg115, 0
  br i1 %is_arg1_int16, label %arg1_type_check_passed_28, label %call_error_func17

arg1_type_check_passed_28:                        ; preds = %plus_28
  %tag_bits_of_arg2 = and i64 %1, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_28, label %call_error_func19

call_error_func17:                                ; preds = %plus_28
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val18 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_28:                        ; preds = %arg1_type_check_passed_28
  %plus_snake_result_28 = add i64 %2, %1
  %r_ge_0 = icmp sge i64 %1, 0
  %l_ge_0 = icmp sge i64 %2, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_28, %2
  %sum_lt_r = icmp slt i64 %plus_snake_result_28, %1
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %1, 0
  %l_lt_021 = icmp slt i64 %2, 0
  %negative_overflow = and i1 %l_lt_021, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_28, %2
  %sum_gt_r = icmp sgt i64 %plus_snake_result_28, %1
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow22 = or i1 %positive_check, %negative_check
  %is_not_overflow23 = xor i1 %overflow22, true
  br i1 %is_not_overflow23, label %continue_no_overflow_28, label %call_error_func24

call_error_func19:                                ; preds = %arg1_type_check_passed_28
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_28:                          ; preds = %arg2_type_check_passed_28
  %plus_snake_result_2826 = phi i64 [ %plus_snake_result_28, %arg2_type_check_passed_28 ]
  br label %let_19

call_error_func24:                                ; preds = %arg2_type_check_passed_28
  store i64 %plus_snake_result_28, i64* @current_answer_ptr, align 4
  %error_call_return_val25 = call i64 @error_func(i64 5)
  unreachable

let_19:                                           ; preds = %continue_no_overflow_28
  %binop_57 = alloca i64, align 8
  store i64 %plus_snake_result_2826, i64* %binop_57, align 4
  br label %function_call

function_call:                                    ; preds = %let_19
  %sum_26 = load i64, i64* %"free_var_'sum_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %sum_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_24, label %call_error_func27

is_closure_24:                                    ; preds = %function_call
  %untagged_closure_addr29 = sub i64 %sum_26, 5
  %closure_ptr30 = inttoptr i64 %untagged_closure_addr29 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr30, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr30, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 4
  br i1 %3, label %is_correct_arity_24, label %call_error_func31

call_error_func27:                                ; preds = %function_call
  store i64 %sum_26, i64* @current_answer_ptr, align 4
  %error_call_return_val28 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_24:                              ; preds = %is_closure_24
  %binop_5433 = load i64, i64* %binop_54, align 4
  %binop_5734 = load i64, i64* %binop_57, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %sum_26, i64 %binop_5433, i64 %binop_5734)
  br label %let_20

call_error_func31:                                ; preds = %is_closure_24
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 17)
  unreachable

let_20:                                           ; preds = %is_correct_arity_24
  %app_53 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_53, align 4
  br label %plus_21

plus_21:                                          ; preds = %let_20
  %app_5335 = load i64, i64* %app_53, align 4
  %tag_bits_of_arg136 = and i64 %app_5335, 1
  %is_arg1_int37 = icmp eq i64 %tag_bits_of_arg136, 0
  br i1 %is_arg1_int37, label %arg1_type_check_passed_21, label %call_error_func38

arg1_type_check_passed_21:                        ; preds = %plus_21
  br i1 true, label %arg2_type_check_passed_21, label %call_error_func40

call_error_func38:                                ; preds = %plus_21
  store i64 %app_5335, i64* @current_answer_ptr, align 4
  %error_call_return_val39 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_21:                        ; preds = %arg1_type_check_passed_21
  %plus_snake_result_21 = add i64 %app_5335, 0
  %l_ge_042 = icmp sge i64 %app_5335, 0
  %positive_overflow43 = and i1 %l_ge_042, true
  %sum_lt_l44 = icmp slt i64 %plus_snake_result_21, %app_5335
  %sum_lt_r45 = icmp slt i64 %plus_snake_result_21, 0
  %overflow_on_positive46 = or i1 %sum_lt_l44, %sum_lt_r45
  %l_lt_047 = icmp slt i64 %app_5335, 0
  %negative_overflow48 = and i1 %l_lt_047, false
  %sum_gt_l49 = icmp sgt i64 %plus_snake_result_21, %app_5335
  %sum_gt_r50 = icmp sgt i64 %plus_snake_result_21, 0
  %overflow_on_negative51 = or i1 %sum_gt_l49, %sum_gt_r50
  %negative_check52 = and i1 %negative_overflow48, %overflow_on_negative51
  %positive_check53 = and i1 %positive_overflow43, %overflow_on_positive46
  %overflow54 = or i1 %positive_check53, %negative_check52
  %is_not_overflow55 = xor i1 %overflow54, true
  br i1 %is_not_overflow55, label %continue_no_overflow_21, label %call_error_func56

call_error_func40:                                ; preds = %arg1_type_check_passed_21
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val41 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_21:                          ; preds = %arg2_type_check_passed_21
  %plus_snake_result_2158 = phi i64 [ %plus_snake_result_21, %arg2_type_check_passed_21 ]
  br label %merge_then_else_17

call_error_func56:                                ; preds = %arg2_type_check_passed_21
  store i64 %plus_snake_result_21, i64* @current_answer_ptr, align 4
  %error_call_return_val57 = call i64 @error_func(i64 5)
  unreachable
}
