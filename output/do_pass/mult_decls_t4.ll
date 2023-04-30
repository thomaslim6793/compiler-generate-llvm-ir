; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_38

create_lambda_closure_38:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_38 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_38, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_38, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_38, i32 0, i32 2
  store i64 (i64, i64)* @lambda_38_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_38 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_38 to i64
  %closure_tagged_tuple_addr_word_38 = add i64 %closure_addr_38, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_38
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_38, i64* %print_4, align 4
  br label %create_lambda_closure_35

create_lambda_closure_35:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_35 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_35, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_35, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_35, i32 0, i32 2
  store i64 (i64)* @lambda_35_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_35 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_35 to i64
  %closure_tagged_tuple_addr_word_35 = add i64 %closure_addr_35, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_35
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_35, i64* %input_11, align 4
  br label %create_lambda_closure_30

create_lambda_closure_30:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_30 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_30, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_30, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_30, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_30_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_30 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_30 to i64
  %closure_tagged_tuple_addr_word_30 = add i64 %closure_addr_30, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_30
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_30, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_26

create_lambda_closure_26:                         ; preds = %let_rec_4
  %print_43 = load i64, i64* %print_4, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_26 = bitcast i8* %malloccall4 to { i64 (i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_26, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_26, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_26, i32 0, i32 2
  store i64 (i64, i64)* @lambda_26_, i64 (i64, i64)** %9, align 8
  store i64 2, i64* %10, align 4
  store i64 %print_43, i64* %11, align 4
  %closure_addr_26 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_26 to i64
  %closure_tagged_tuple_addr_word_26 = add i64 %closure_addr_26, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_26
  store i64 %closure_tagged_tuple_addr_word_26, i64* %f1_26, align 4
  %print_45 = load i64, i64* %print_4, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_26, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %print_45, i64* %12, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_34 = alloca i64, align 8
  br label %create_lambda_closure_18

create_lambda_closure_18:                         ; preds = %let_rec_5
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_18 = bitcast i8* %malloccall6 to { i64 (i64, i64, i64)*, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_18, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_18, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_18_, i64 (i64, i64, i64)** %13, align 8
  store i64 4, i64* %14, align 4
  %closure_addr_18 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_18 to i64
  %closure_tagged_tuple_addr_word_18 = add i64 %closure_addr_18, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_18
  store i64 %closure_tagged_tuple_addr_word_18, i64* %f2_34, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f1_267 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_267, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_15, label %call_error_func

is_closure_15:                                    ; preds = %function_call
  %untagged_closure_addr8 = sub i64 %f1_267, 5
  %closure_ptr9 = inttoptr i64 %untagged_closure_addr8 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr9, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr9, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %15 = icmp eq i64 %arity, 2
  br i1 %15, label %is_correct_arity_15, label %call_error_func10

call_error_func:                                  ; preds = %function_call
  store i64 %f1_267, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_15:                              ; preds = %is_closure_15
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_267, i64 10)
  br label %let_6

call_error_func10:                                ; preds = %is_closure_15
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 17)
  unreachable

let_6:                                            ; preds = %is_correct_arity_15
  %app_49 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_49, align 4
  br label %function_call12

function_call12:                                  ; preds = %let_6
  %f2_3413 = load i64, i64* %f2_34, align 4
  %tag_bits_of_closure_of_func_to_call14 = and i64 %f2_3413, 7
  %is_closure_of_func_to_call_closure15 = icmp eq i64 %tag_bits_of_closure_of_func_to_call14, 5
  br i1 %is_closure_of_func_to_call_closure15, label %is_closure_11, label %call_error_func16

is_closure_11:                                    ; preds = %function_call12
  %untagged_closure_addr18 = sub i64 %f2_3413, 5
  %closure_ptr19 = inttoptr i64 %untagged_closure_addr18 to i64*
  %function_code_ptr_as_i6420 = load i64, i64* %closure_ptr19, align 4
  %function21 = inttoptr i64 %function_code_ptr_as_i6420 to i64 (i64, i64, i64)*
  %arity_ptr22 = getelementptr i64, i64* %closure_ptr19, i64 1
  %arity23 = load i64, i64* %arity_ptr22, align 4
  %16 = icmp eq i64 %arity23, 4
  br i1 %16, label %is_correct_arity_11, label %call_error_func24

call_error_func16:                                ; preds = %function_call12
  store i64 %f2_3413, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_11:                              ; preds = %is_closure_11
  %lambda_non_tail_call_result26 = call i64 %function21(i64 %f2_3413, i64 8, i64 12)
  br label %let_7

call_error_func24:                                ; preds = %is_closure_11
  store i64 %arity23, i64* @current_answer_ptr, align 4
  %error_call_return_val25 = call i64 @error_func(i64 17)
  unreachable

let_7:                                            ; preds = %is_correct_arity_11
  %app_52 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result26, i64* %app_52, align 4
  br label %plus_8

plus_8:                                           ; preds = %let_7
  %app_4927 = load i64, i64* %app_49, align 4
  %app_5228 = load i64, i64* %app_52, align 4
  %tag_bits_of_arg1 = and i64 %app_4927, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_8, label %call_error_func29

arg1_type_check_passed_8:                         ; preds = %plus_8
  %tag_bits_of_arg2 = and i64 %app_5228, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_8, label %call_error_func31

call_error_func29:                                ; preds = %plus_8
  store i64 %app_4927, i64* @current_answer_ptr, align 4
  %error_call_return_val30 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_8:                         ; preds = %arg1_type_check_passed_8
  %plus_snake_result_8 = add i64 %app_4927, %app_5228
  %r_ge_0 = icmp sge i64 %app_5228, 0
  %l_ge_0 = icmp sge i64 %app_4927, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_8, %app_4927
  %sum_lt_r = icmp slt i64 %plus_snake_result_8, %app_5228
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %app_5228, 0
  %l_lt_033 = icmp slt i64 %app_4927, 0
  %negative_overflow = and i1 %l_lt_033, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_8, %app_4927
  %sum_gt_r = icmp sgt i64 %plus_snake_result_8, %app_5228
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_8, label %call_error_func34

call_error_func31:                                ; preds = %arg1_type_check_passed_8
  store i64 %app_5228, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_8:                           ; preds = %arg2_type_check_passed_8
  %plus_snake_result_836 = phi i64 [ %plus_snake_result_8, %arg2_type_check_passed_8 ]
  br label %result

call_error_func34:                                ; preds = %arg2_type_check_passed_8
  store i64 %plus_snake_result_8, i64* @current_answer_ptr, align 4
  %error_call_return_val35 = call i64 @error_func(i64 5)
  unreachable

result:                                           ; preds = %continue_no_overflow_8
  ret i64 %plus_snake_result_836
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

define i64 @lambda_38_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_39

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_39 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_35_(i64 %0) {
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
  ret i64 %input_tail_call_result_36

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_36 = tail call i64 @input()
  br label %return
}

define i64 @lambda_30_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_31

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_31 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_26_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'print_4'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %function_call

return:                                           ; preds = %is_correct_arity_27
  ret i64 %lambda_tail_call_result

function_call:                                    ; preds = %lambda_body
  %print_4 = load i64, i64* %"free_var_'print_4'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %print_4, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_27, label %call_error_func

is_closure_27:                                    ; preds = %function_call
  %untagged_closure_addr1 = sub i64 %print_4, 5
  %closure_ptr2 = inttoptr i64 %untagged_closure_addr1 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr2, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr2, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %2 = icmp eq i64 %arity, 2
  br i1 %2, label %is_correct_arity_27, label %call_error_func3

call_error_func:                                  ; preds = %function_call
  store i64 %print_4, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_27:                              ; preds = %is_closure_27
  %lambda_tail_call_result = tail call i64 %function(i64 %print_4, i64 %1)
  br label %return

call_error_func3:                                 ; preds = %is_closure_27
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 17)
  unreachable
}

define i64 @lambda_18_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %let_19

return:                                           ; preds = %continue_no_overflow_21
  ret i64 %plus_snake_result_218

let_19:                                           ; preds = %lambda_body
  %x_38 = alloca i64, align 8
  store i64 2, i64* %x_38, align 4
  br label %let_20

let_20:                                           ; preds = %let_19
  %y_41 = alloca i64, align 8
  store i64 4, i64* %y_41, align 4
  br label %plus_21

plus_21:                                          ; preds = %let_20
  %x_381 = load i64, i64* %x_38, align 4
  %y_412 = load i64, i64* %y_41, align 4
  %tag_bits_of_arg1 = and i64 %x_381, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_21, label %call_error_func

arg1_type_check_passed_21:                        ; preds = %plus_21
  %tag_bits_of_arg2 = and i64 %y_412, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_21, label %call_error_func3

call_error_func:                                  ; preds = %plus_21
  store i64 %x_381, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_21:                        ; preds = %arg1_type_check_passed_21
  %plus_snake_result_21 = add i64 %x_381, %y_412
  %r_ge_0 = icmp sge i64 %y_412, 0
  %l_ge_0 = icmp sge i64 %x_381, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_21, %x_381
  %sum_lt_r = icmp slt i64 %plus_snake_result_21, %y_412
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %y_412, 0
  %l_lt_05 = icmp slt i64 %x_381, 0
  %negative_overflow = and i1 %l_lt_05, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_21, %x_381
  %sum_gt_r = icmp sgt i64 %plus_snake_result_21, %y_412
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_21, label %call_error_func6

call_error_func3:                                 ; preds = %arg1_type_check_passed_21
  store i64 %y_412, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_21:                          ; preds = %arg2_type_check_passed_21
  %plus_snake_result_218 = phi i64 [ %plus_snake_result_21, %arg2_type_check_passed_21 ]
  br label %return

call_error_func6:                                 ; preds = %arg2_type_check_passed_21
  store i64 %plus_snake_result_21, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 5)
  unreachable
}
