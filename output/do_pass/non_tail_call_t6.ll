; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_36

create_lambda_closure_36:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_36 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_36, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_36, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_36, i32 0, i32 2
  store i64 (i64, i64)* @lambda_36_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_36 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_36 to i64
  %closure_tagged_tuple_addr_word_36 = add i64 %closure_addr_36, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_36
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_36, i64* %print_4, align 4
  br label %create_lambda_closure_33

create_lambda_closure_33:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_33 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_33, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_33, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_33, i32 0, i32 2
  store i64 (i64)* @lambda_33_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_33 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_33 to i64
  %closure_tagged_tuple_addr_word_33 = add i64 %closure_addr_33, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_33
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_33, i64* %input_11, align 4
  br label %create_lambda_closure_28

create_lambda_closure_28:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_28 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_28_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_28 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_28 to i64
  %closure_tagged_tuple_addr_word_28 = add i64 %closure_addr_28, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_28
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_28, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_20

create_lambda_closure_20:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_20 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_20, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_20, i32 0, i32 1
  store i64 (i64, i64, i64, i64)* @lambda_20_, i64 (i64, i64, i64, i64)** %9, align 8
  store i64 6, i64* %10, align 4
  %closure_addr_20 = ptrtoint { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_20 to i64
  %closure_tagged_tuple_addr_word_20 = add i64 %closure_addr_20, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_20
  store i64 %closure_tagged_tuple_addr_word_20, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_38 = alloca i64, align 8
  br label %create_lambda_closure_10

create_lambda_closure_10:                         ; preds = %let_rec_5
  %f1_264 = load i64, i64* %f1_26, align 4
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_10 = bitcast i8* %malloccall5 to { i64 (i64, i64, i64)*, i64, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_10, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_10, i32 0, i32 1
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_10, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_10_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  store i64 %f1_264, i64* %13, align 4
  %closure_addr_10 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_10 to i64
  %closure_tagged_tuple_addr_word_10 = add i64 %closure_addr_10, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_10
  store i64 %closure_tagged_tuple_addr_word_10, i64* %f2_38, align 4
  %f1_266 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_10, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %14 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_266, i64* %14, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f2_387 = load i64, i64* %f2_38, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f2_387, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_6, label %call_error_func

is_closure_6:                                     ; preds = %function_call
  %untagged_closure_addr8 = sub i64 %f2_387, 5
  %closure_ptr9 = inttoptr i64 %untagged_closure_addr8 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr9, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr9, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %15 = icmp eq i64 %arity, 4
  br i1 %15, label %is_correct_arity_6, label %call_error_func10

call_error_func:                                  ; preds = %function_call
  store i64 %f2_387, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_6:                               ; preds = %is_closure_6
  %lambda_tail_call_result = tail call i64 %function(i64 %f2_387, i64 2, i64 4)
  br label %result

call_error_func10:                                ; preds = %is_closure_6
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 17)
  unreachable

result:                                           ; preds = %is_correct_arity_6
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

define i64 @lambda_36_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_37

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_37 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_33_(i64 %0) {
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
  ret i64 %input_tail_call_result_34

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_34 = tail call i64 @input()
  br label %return
}

define i64 @lambda_28_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_29

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_29 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_20_(i64 %0, i64 %1, i64 %2, i64 %3) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %plus_25

return:                                           ; preds = %continue_no_overflow_22
  ret i64 %plus_snake_result_2234

plus_25:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_25, label %call_error_func

arg1_type_check_passed_25:                        ; preds = %plus_25
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_25, label %call_error_func1

call_error_func:                                  ; preds = %plus_25
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_25:                        ; preds = %arg1_type_check_passed_25
  %plus_snake_result_25 = add i64 %1, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_25, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_25, %2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %l_lt_03 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_03, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_25, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_25, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_25, label %call_error_func4

call_error_func1:                                 ; preds = %arg1_type_check_passed_25
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_25:                          ; preds = %arg2_type_check_passed_25
  %plus_snake_result_256 = phi i64 [ %plus_snake_result_25, %arg2_type_check_passed_25 ]
  br label %let_21

call_error_func4:                                 ; preds = %arg2_type_check_passed_25
  store i64 %plus_snake_result_25, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 5)
  unreachable

let_21:                                           ; preds = %continue_no_overflow_25
  %binop_29 = alloca i64, align 8
  store i64 %plus_snake_result_256, i64* %binop_29, align 4
  br label %plus_22

plus_22:                                          ; preds = %let_21
  %binop_297 = load i64, i64* %binop_29, align 4
  %tag_bits_of_arg18 = and i64 %binop_297, 1
  %is_arg1_int9 = icmp eq i64 %tag_bits_of_arg18, 0
  br i1 %is_arg1_int9, label %arg1_type_check_passed_22, label %call_error_func10

arg1_type_check_passed_22:                        ; preds = %plus_22
  %tag_bits_of_arg212 = and i64 %3, 1
  %is_arg2_int13 = icmp eq i64 %tag_bits_of_arg212, 0
  br i1 %is_arg2_int13, label %arg2_type_check_passed_22, label %call_error_func14

call_error_func10:                                ; preds = %plus_22
  store i64 %binop_297, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_22:                        ; preds = %arg1_type_check_passed_22
  %plus_snake_result_22 = add i64 %binop_297, %3
  %r_ge_016 = icmp sge i64 %3, 0
  %l_ge_017 = icmp sge i64 %binop_297, 0
  %positive_overflow18 = and i1 %l_ge_017, %r_ge_016
  %sum_lt_l19 = icmp slt i64 %plus_snake_result_22, %binop_297
  %sum_lt_r20 = icmp slt i64 %plus_snake_result_22, %3
  %overflow_on_positive21 = or i1 %sum_lt_l19, %sum_lt_r20
  %l_lt_022 = icmp slt i64 %3, 0
  %l_lt_023 = icmp slt i64 %binop_297, 0
  %negative_overflow24 = and i1 %l_lt_023, %l_lt_022
  %sum_gt_l25 = icmp sgt i64 %plus_snake_result_22, %binop_297
  %sum_gt_r26 = icmp sgt i64 %plus_snake_result_22, %3
  %overflow_on_negative27 = or i1 %sum_gt_l25, %sum_gt_r26
  %negative_check28 = and i1 %negative_overflow24, %overflow_on_negative27
  %positive_check29 = and i1 %positive_overflow18, %overflow_on_positive21
  %overflow30 = or i1 %positive_check29, %negative_check28
  %is_not_overflow31 = xor i1 %overflow30, true
  br i1 %is_not_overflow31, label %continue_no_overflow_22, label %call_error_func32

call_error_func14:                                ; preds = %arg1_type_check_passed_22
  store i64 %3, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_22:                          ; preds = %arg2_type_check_passed_22
  %plus_snake_result_2234 = phi i64 [ %plus_snake_result_22, %arg2_type_check_passed_22 ]
  br label %return

call_error_func32:                                ; preds = %arg2_type_check_passed_22
  store i64 %plus_snake_result_22, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_10_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %function_call

return:                                           ; preds = %continue_no_overflow_12
  ret i64 %plus_snake_result_1212

function_call:                                    ; preds = %lambda_body
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_15, label %call_error_func

is_closure_15:                                    ; preds = %function_call
  %untagged_closure_addr1 = sub i64 %f1_26, 5
  %closure_ptr2 = inttoptr i64 %untagged_closure_addr1 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr2, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr2, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 6
  br i1 %3, label %is_correct_arity_15, label %call_error_func3

call_error_func:                                  ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_15:                              ; preds = %is_closure_15
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_26, i64 %1, i64 %1, i64 %2)
  br label %let_11

call_error_func3:                                 ; preds = %is_closure_15
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 17)
  unreachable

let_11:                                           ; preds = %is_correct_arity_15
  %app_41 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_41, align 4
  br label %plus_12

plus_12:                                          ; preds = %let_11
  %app_415 = load i64, i64* %app_41, align 4
  %tag_bits_of_arg1 = and i64 %app_415, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_12, label %call_error_func6

arg1_type_check_passed_12:                        ; preds = %plus_12
  br i1 true, label %arg2_type_check_passed_12, label %call_error_func8

call_error_func6:                                 ; preds = %plus_12
  store i64 %app_415, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_12:                        ; preds = %arg1_type_check_passed_12
  %plus_snake_result_12 = add i64 %app_415, 2
  %l_ge_0 = icmp sge i64 %app_415, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_12, %app_415
  %sum_lt_r = icmp slt i64 %plus_snake_result_12, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %app_415, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_12, %app_415
  %sum_gt_r = icmp sgt i64 %plus_snake_result_12, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_12, label %call_error_func10

call_error_func8:                                 ; preds = %arg1_type_check_passed_12
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_12:                          ; preds = %arg2_type_check_passed_12
  %plus_snake_result_1212 = phi i64 [ %plus_snake_result_12, %arg2_type_check_passed_12 ]
  br label %return

call_error_func10:                                ; preds = %arg2_type_check_passed_12
  store i64 %plus_snake_result_12, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 5)
  unreachable
}
