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
  br label %create_lambda_closure_24

create_lambda_closure_24:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_24 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_24, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_24, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_24_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  %closure_addr_24 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_24 to i64
  %closure_tagged_tuple_addr_word_24 = add i64 %closure_addr_24, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_24
  store i64 %closure_tagged_tuple_addr_word_24, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_35 = alloca i64, align 8
  br label %create_lambda_closure_20

create_lambda_closure_20:                         ; preds = %let_rec_5
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_20 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_20, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_20, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_20_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  %closure_addr_20 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_20 to i64
  %closure_tagged_tuple_addr_word_20 = add i64 %closure_addr_20, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_20
  store i64 %closure_tagged_tuple_addr_word_20, i64* %f2_35, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f2_355 = load i64, i64* %f2_35, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f2_355, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_16, label %call_error_func

is_closure_16:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %f2_355, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 4
  br i1 %13, label %is_correct_arity_16, label %call_error_func6

call_error_func:                                  ; preds = %function_call
  store i64 %f2_355, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_16:                              ; preds = %is_closure_16
  %lambda_non_tail_call_result = call i64 %function(i64 %f2_355, i64 10, i64 8)
  br label %let_6

call_error_func6:                                 ; preds = %is_closure_16
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 17)
  unreachable

let_6:                                            ; preds = %is_correct_arity_16
  %app_43 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_43, align 4
  br label %if_else_7

if_else_7:                                        ; preds = %let_6
  %app_438 = load i64, i64* %app_43, align 4
  %tag_bits_of_cond_val = and i64 %app_438, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_7, label %call_error_func9

continue_if_else_7:                               ; preds = %if_else_7
  %is_cond_true = icmp eq i64 %app_438, -1
  br i1 %is_cond_true, label %then_7, label %else_7

call_error_func9:                                 ; preds = %if_else_7
  store i64 %app_438, i64* @current_answer_ptr, align 4
  %error_call_return_val10 = call i64 @error_func(i64 4)
  unreachable

then_7:                                           ; preds = %continue_if_else_7
  br label %function_call11

else_7:                                           ; preds = %continue_if_else_7
  br label %function_call25

merge_then_else_7:                                ; preds = %is_correct_arity_8, %is_correct_arity_11
  %"if/else_snake_result_7" = phi i64 [ %lambda_tail_call_result, %is_correct_arity_11 ], [ %lambda_tail_call_result39, %is_correct_arity_8 ]
  br label %result

function_call11:                                  ; preds = %then_7
  %f1_2612 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call13 = and i64 %f1_2612, 7
  %is_closure_of_func_to_call_closure14 = icmp eq i64 %tag_bits_of_closure_of_func_to_call13, 5
  br i1 %is_closure_of_func_to_call_closure14, label %is_closure_11, label %call_error_func15

is_closure_11:                                    ; preds = %function_call11
  %untagged_closure_addr17 = sub i64 %f1_2612, 5
  %closure_ptr18 = inttoptr i64 %untagged_closure_addr17 to i64*
  %function_code_ptr_as_i6419 = load i64, i64* %closure_ptr18, align 4
  %function20 = inttoptr i64 %function_code_ptr_as_i6419 to i64 (i64, i64, i64)*
  %arity_ptr21 = getelementptr i64, i64* %closure_ptr18, i64 1
  %arity22 = load i64, i64* %arity_ptr21, align 4
  %14 = icmp eq i64 %arity22, 4
  br i1 %14, label %is_correct_arity_11, label %call_error_func23

call_error_func15:                                ; preds = %function_call11
  store i64 %f1_2612, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_11:                              ; preds = %is_closure_11
  %lambda_tail_call_result = tail call i64 %function20(i64 %f1_2612, i64 2, i64 6)
  br label %merge_then_else_7

call_error_func23:                                ; preds = %is_closure_11
  store i64 %arity22, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 17)
  unreachable

function_call25:                                  ; preds = %else_7
  %print_426 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call27 = and i64 %print_426, 7
  %is_closure_of_func_to_call_closure28 = icmp eq i64 %tag_bits_of_closure_of_func_to_call27, 5
  br i1 %is_closure_of_func_to_call_closure28, label %is_closure_8, label %call_error_func29

is_closure_8:                                     ; preds = %function_call25
  %untagged_closure_addr31 = sub i64 %print_426, 5
  %closure_ptr32 = inttoptr i64 %untagged_closure_addr31 to i64*
  %function_code_ptr_as_i6433 = load i64, i64* %closure_ptr32, align 4
  %function34 = inttoptr i64 %function_code_ptr_as_i6433 to i64 (i64, i64)*
  %arity_ptr35 = getelementptr i64, i64* %closure_ptr32, i64 1
  %arity36 = load i64, i64* %arity_ptr35, align 4
  %15 = icmp eq i64 %arity36, 2
  br i1 %15, label %is_correct_arity_8, label %call_error_func37

call_error_func29:                                ; preds = %function_call25
  store i64 %print_426, i64* @current_answer_ptr, align 4
  %error_call_return_val30 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_8:                               ; preds = %is_closure_8
  %lambda_tail_call_result39 = tail call i64 %function34(i64 %print_426, i64 9223372036854775807)
  br label %merge_then_else_7

call_error_func37:                                ; preds = %is_closure_8
  store i64 %arity36, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 17)
  unreachable

result:                                           ; preds = %merge_then_else_7
  ret i64 %"if/else_snake_result_7"
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

define i64 @lambda_24_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %plus_25

return:                                           ; preds = %continue_no_overflow_25
  ret i64 %plus_snake_result_256

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
  br label %return

call_error_func4:                                 ; preds = %arg2_type_check_passed_25
  store i64 %plus_snake_result_25, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_20_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %greater_21

return:                                           ; preds = %merge_21
  ret i64 %greater_snake_result_21

greater_21:                                       ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_21, label %call_error_func

arg1_type_check_passed_21:                        ; preds = %greater_21
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_21, label %call_error_func1

call_error_func:                                  ; preds = %greater_21
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_21:                        ; preds = %arg1_type_check_passed_21
  %greater_llvm_result_21 = icmp sgt i64 %1, %2
  br i1 %greater_llvm_result_21, label %comp_is_true_21, label %comp_is_false_21

call_error_func1:                                 ; preds = %arg1_type_check_passed_21
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_21:                                  ; preds = %arg2_type_check_passed_21
  br label %merge_21

comp_is_false_21:                                 ; preds = %arg2_type_check_passed_21
  br label %merge_21

merge_21:                                         ; preds = %comp_is_false_21, %comp_is_true_21
  %greater_snake_result_21 = phi i64 [ -1, %comp_is_true_21 ], [ 9223372036854775807, %comp_is_false_21 ]
  br label %return
}
