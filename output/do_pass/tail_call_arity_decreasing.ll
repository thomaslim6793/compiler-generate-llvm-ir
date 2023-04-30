; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_28

create_lambda_closure_28:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_28 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 2
  store i64 (i64, i64)* @lambda_28_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_28 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_28 to i64
  %closure_tagged_tuple_addr_word_28 = add i64 %closure_addr_28, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_28
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_28, i64* %print_4, align 4
  br label %create_lambda_closure_25

create_lambda_closure_25:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_25 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_25, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_25, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_25, i32 0, i32 2
  store i64 (i64)* @lambda_25_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_25 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_25 to i64
  %closure_tagged_tuple_addr_word_25 = add i64 %closure_addr_25, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_25
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_25, i64* %input_11, align 4
  br label %create_lambda_closure_20

create_lambda_closure_20:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_20 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_20, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_20, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_20, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_20_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_20 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_20 to i64
  %closure_tagged_tuple_addr_word_20 = add i64 %closure_addr_20, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_20
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_20, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_18

create_lambda_closure_18:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_18 = bitcast i8* %malloccall3 to { i64 (i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_18, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_18, i32 0, i32 1
  store i64 (i64, i64)* @lambda_18_, i64 (i64, i64)** %9, align 8
  store i64 2, i64* %10, align 4
  %closure_addr_18 = ptrtoint { i64 (i64, i64)*, i64 }* %closure_ptr_18 to i64
  %closure_tagged_tuple_addr_word_18 = add i64 %closure_addr_18, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_18
  store i64 %closure_tagged_tuple_addr_word_18, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_32 = alloca i64, align 8
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
  store i64 %closure_tagged_tuple_addr_word_10, i64* %f2_32, align 4
  %f1_266 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_10, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %14 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_266, i64* %14, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f2_327 = load i64, i64* %f2_32, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f2_327, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_6, label %call_error_func

is_closure_6:                                     ; preds = %function_call
  %untagged_closure_addr8 = sub i64 %f2_327, 5
  %closure_ptr9 = inttoptr i64 %untagged_closure_addr8 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr9, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr9, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %15 = icmp eq i64 %arity, 4
  br i1 %15, label %is_correct_arity_6, label %call_error_func10

call_error_func:                                  ; preds = %function_call
  store i64 %f2_327, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_6:                               ; preds = %is_closure_6
  %lambda_tail_call_result = tail call i64 %function(i64 %f2_327, i64 2, i64 4)
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

define i64 @lambda_28_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_29

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_29 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_25_(i64 %0) {
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
  ret i64 %input_tail_call_result_26

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_26 = tail call i64 @input()
  br label %return
}

define i64 @lambda_20_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_21

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_21 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_18_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %return

return:                                           ; preds = %lambda_body
  ret i64 %1
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
  br label %plus_15

return:                                           ; preds = %is_correct_arity_12
  ret i64 %lambda_tail_call_result

plus_15:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_15, label %call_error_func

arg1_type_check_passed_15:                        ; preds = %plus_15
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_15, label %call_error_func1

call_error_func:                                  ; preds = %plus_15
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_15:                        ; preds = %arg1_type_check_passed_15
  %plus_snake_result_15 = add i64 %1, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_15, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_15, %2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %l_lt_03 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_03, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_15, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_15, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_15, label %call_error_func4

call_error_func1:                                 ; preds = %arg1_type_check_passed_15
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_15:                          ; preds = %arg2_type_check_passed_15
  %plus_snake_result_156 = phi i64 [ %plus_snake_result_15, %arg2_type_check_passed_15 ]
  br label %let_11

call_error_func4:                                 ; preds = %arg2_type_check_passed_15
  store i64 %plus_snake_result_15, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 5)
  unreachable

let_11:                                           ; preds = %continue_no_overflow_15
  %binop_35 = alloca i64, align 8
  store i64 %plus_snake_result_156, i64* %binop_35, align 4
  br label %function_call

function_call:                                    ; preds = %let_11
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_12, label %call_error_func7

is_closure_12:                                    ; preds = %function_call
  %untagged_closure_addr9 = sub i64 %f1_26, 5
  %closure_ptr10 = inttoptr i64 %untagged_closure_addr9 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr10, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr10, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 2
  br i1 %3, label %is_correct_arity_12, label %call_error_func11

call_error_func7:                                 ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_12:                              ; preds = %is_closure_12
  %binop_3513 = load i64, i64* %binop_35, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %binop_3513)
  br label %return

call_error_func11:                                ; preds = %is_closure_12
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val12 = call i64 @error_func(i64 17)
  unreachable
}
