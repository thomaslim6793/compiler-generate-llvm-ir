; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_49

create_lambda_closure_49:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_49 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_49, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_49, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_49, i32 0, i32 2
  store i64 (i64, i64)* @lambda_49_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_49 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_49 to i64
  %closure_tagged_tuple_addr_word_49 = add i64 %closure_addr_49, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_49
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_49, i64* %print_4, align 4
  br label %create_lambda_closure_46

create_lambda_closure_46:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_46 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_46, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_46, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_46, i32 0, i32 2
  store i64 (i64)* @lambda_46_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_46 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_46 to i64
  %closure_tagged_tuple_addr_word_46 = add i64 %closure_addr_46, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_46
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_46, i64* %input_11, align 4
  br label %create_lambda_closure_41

create_lambda_closure_41:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_41 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_41, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_41, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_41, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_41_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_41 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_41 to i64
  %closure_tagged_tuple_addr_word_41 = add i64 %closure_addr_41, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_41
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_41, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_37

create_lambda_closure_37:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_37 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_37, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_37, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_37_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  %closure_addr_37 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_37 to i64
  %closure_tagged_tuple_addr_word_37 = add i64 %closure_addr_37, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_37
  store i64 %closure_tagged_tuple_addr_word_37, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_35 = alloca i64, align 8
  br label %create_lambda_closure_21

create_lambda_closure_21:                         ; preds = %let_rec_5
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_21 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_21, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_21, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_21_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  %closure_addr_21 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_21 to i64
  %closure_tagged_tuple_addr_word_21 = add i64 %closure_addr_21, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_21
  store i64 %closure_tagged_tuple_addr_word_21, i64* %f2_35, align 4
  br label %let_6

let_6:                                            ; preds = %patch_let_rec_closures_5
  %x_57 = alloca i64, align 8
  store i64 2, i64* %x_57, align 4
  br label %plus_17

plus_17:                                          ; preds = %let_6
  %x_575 = load i64, i64* %x_57, align 4
  %tag_bits_of_arg1 = and i64 %x_575, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_17, label %call_error_func

arg1_type_check_passed_17:                        ; preds = %plus_17
  br i1 true, label %arg2_type_check_passed_17, label %call_error_func6

call_error_func:                                  ; preds = %plus_17
  store i64 %x_575, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_17:                        ; preds = %arg1_type_check_passed_17
  %plus_snake_result_17 = add i64 %x_575, 2
  %l_ge_0 = icmp sge i64 %x_575, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_17, %x_575
  %sum_lt_r = icmp slt i64 %plus_snake_result_17, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x_575, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_17, %x_575
  %sum_gt_r = icmp sgt i64 %plus_snake_result_17, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_17, label %call_error_func8

call_error_func6:                                 ; preds = %arg1_type_check_passed_17
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_17:                          ; preds = %arg2_type_check_passed_17
  %plus_snake_result_1710 = phi i64 [ %plus_snake_result_17, %arg2_type_check_passed_17 ]
  br label %let_7

call_error_func8:                                 ; preds = %arg2_type_check_passed_17
  store i64 %plus_snake_result_17, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 5)
  unreachable

let_7:                                            ; preds = %continue_no_overflow_17
  %binop_59 = alloca i64, align 8
  store i64 %plus_snake_result_1710, i64* %binop_59, align 4
  br label %function_call

function_call:                                    ; preds = %let_7
  %f2_3511 = load i64, i64* %f2_35, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f2_3511, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_13, label %call_error_func12

is_closure_13:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %f2_3511, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 4
  br i1 %13, label %is_correct_arity_13, label %call_error_func14

call_error_func12:                                ; preds = %function_call
  store i64 %f2_3511, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_13:                              ; preds = %is_closure_13
  %lambda_non_tail_call_result = call i64 %function(i64 %f2_3511, i64 6, i64 8)
  br label %let_8

call_error_func14:                                ; preds = %is_closure_13
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 17)
  unreachable

let_8:                                            ; preds = %is_correct_arity_13
  %app_62 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_62, align 4
  br label %function_call16

function_call16:                                  ; preds = %let_8
  %f1_2617 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call18 = and i64 %f1_2617, 7
  %is_closure_of_func_to_call_closure19 = icmp eq i64 %tag_bits_of_closure_of_func_to_call18, 5
  br i1 %is_closure_of_func_to_call_closure19, label %is_closure_9, label %call_error_func20

is_closure_9:                                     ; preds = %function_call16
  %untagged_closure_addr22 = sub i64 %f1_2617, 5
  %closure_ptr23 = inttoptr i64 %untagged_closure_addr22 to i64*
  %function_code_ptr_as_i6424 = load i64, i64* %closure_ptr23, align 4
  %function25 = inttoptr i64 %function_code_ptr_as_i6424 to i64 (i64, i64, i64)*
  %arity_ptr26 = getelementptr i64, i64* %closure_ptr23, i64 1
  %arity27 = load i64, i64* %arity_ptr26, align 4
  %14 = icmp eq i64 %arity27, 4
  br i1 %14, label %is_correct_arity_9, label %call_error_func28

call_error_func20:                                ; preds = %function_call16
  store i64 %f1_2617, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_9:                               ; preds = %is_closure_9
  %binop_5930 = load i64, i64* %binop_59, align 4
  %app_6231 = load i64, i64* %app_62, align 4
  %lambda_tail_call_result = tail call i64 %function25(i64 %f1_2617, i64 %binop_5930, i64 %app_6231)
  br label %result

call_error_func28:                                ; preds = %is_closure_9
  store i64 %arity27, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 17)
  unreachable

result:                                           ; preds = %is_correct_arity_9
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

define i64 @lambda_49_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_50

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_50 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_46_(i64 %0) {
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
  ret i64 %input_tail_call_result_47

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_47 = tail call i64 @input()
  br label %return
}

define i64 @lambda_41_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_42

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_42 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_37_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %plus_38

return:                                           ; preds = %continue_no_overflow_38
  ret i64 %plus_snake_result_386

plus_38:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_38, label %call_error_func

arg1_type_check_passed_38:                        ; preds = %plus_38
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_38, label %call_error_func1

call_error_func:                                  ; preds = %plus_38
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_38:                        ; preds = %arg1_type_check_passed_38
  %plus_snake_result_38 = add i64 %1, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_38, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_38, %2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %l_lt_03 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_03, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_38, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_38, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_38, label %call_error_func4

call_error_func1:                                 ; preds = %arg1_type_check_passed_38
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_38:                          ; preds = %arg2_type_check_passed_38
  %plus_snake_result_386 = phi i64 [ %plus_snake_result_38, %arg2_type_check_passed_38 ]
  br label %return

call_error_func4:                                 ; preds = %arg2_type_check_passed_38
  store i64 %plus_snake_result_38, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_21_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %let_22

return:                                           ; preds = %continue_no_overflow_26
  ret i64 %plus_snake_result_2650

let_22:                                           ; preds = %lambda_body
  %x2_40 = alloca i64, align 8
  store i64 2, i64* %x2_40, align 4
  br label %plus_33

plus_33:                                          ; preds = %let_22
  %x2_401 = load i64, i64* %x2_40, align 4
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_33, label %call_error_func

arg1_type_check_passed_33:                        ; preds = %plus_33
  %tag_bits_of_arg2 = and i64 %x2_401, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_33, label %call_error_func2

call_error_func:                                  ; preds = %plus_33
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_33:                        ; preds = %arg1_type_check_passed_33
  %plus_snake_result_33 = add i64 %1, %x2_401
  %r_ge_0 = icmp sge i64 %x2_401, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_33, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_33, %x2_401
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x2_401, 0
  %l_lt_04 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_04, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_33, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_33, %x2_401
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_33, label %call_error_func5

call_error_func2:                                 ; preds = %arg1_type_check_passed_33
  store i64 %x2_401, i64* @current_answer_ptr, align 4
  %error_call_return_val3 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_33:                          ; preds = %arg2_type_check_passed_33
  %plus_snake_result_337 = phi i64 [ %plus_snake_result_33, %arg2_type_check_passed_33 ]
  br label %let_23

call_error_func5:                                 ; preds = %arg2_type_check_passed_33
  store i64 %plus_snake_result_33, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 5)
  unreachable

let_23:                                           ; preds = %continue_no_overflow_33
  %binop_42 = alloca i64, align 8
  store i64 %plus_snake_result_337, i64* %binop_42, align 4
  br label %let_24

let_24:                                           ; preds = %let_23
  %y2_47 = alloca i64, align 8
  store i64 4, i64* %y2_47, align 4
  br label %minus_29

minus_29:                                         ; preds = %let_24
  %y2_478 = load i64, i64* %y2_47, align 4
  %tag_bits_of_arg19 = and i64 %2, 1
  %is_arg1_int10 = icmp eq i64 %tag_bits_of_arg19, 0
  br i1 %is_arg1_int10, label %arg1_type_check_passed_29, label %call_error_func11

arg1_type_check_passed_29:                        ; preds = %minus_29
  %tag_bits_of_arg213 = and i64 %y2_478, 1
  %is_arg2_int14 = icmp eq i64 %tag_bits_of_arg213, 0
  br i1 %is_arg2_int14, label %arg2_type_check_passed_29, label %call_error_func15

call_error_func11:                                ; preds = %minus_29
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val12 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_29:                        ; preds = %arg1_type_check_passed_29
  %minus_snake_result_29 = sub i64 %2, %y2_478
  %x_sign = ashr i64 %2, 63
  %y_sign = ashr i64 %y2_478, 63
  %res_sign = ashr i64 %minus_snake_result_29, 63
  %x_sign_neq_y_sign = icmp ne i64 %x_sign, %y_sign
  %res_sign_neq_x_sign = icmp ne i64 %res_sign, %x_sign
  %overflow17 = and i1 %x_sign_neq_y_sign, %res_sign_neq_x_sign
  %is_not_overflow18 = xor i1 %overflow17, true
  br i1 %is_not_overflow18, label %continue_no_overflow_29, label %call_error_func19

call_error_func15:                                ; preds = %arg1_type_check_passed_29
  store i64 %y2_478, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_29:                          ; preds = %arg2_type_check_passed_29
  %minus_snake_result_2921 = phi i64 [ %minus_snake_result_29, %arg2_type_check_passed_29 ]
  br label %let_25

call_error_func19:                                ; preds = %arg2_type_check_passed_29
  store i64 %minus_snake_result_29, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 5)
  unreachable

let_25:                                           ; preds = %continue_no_overflow_29
  %binop_49 = alloca i64, align 8
  store i64 %minus_snake_result_2921, i64* %binop_49, align 4
  br label %plus_26

plus_26:                                          ; preds = %let_25
  %binop_4222 = load i64, i64* %binop_42, align 4
  %binop_4923 = load i64, i64* %binop_49, align 4
  %tag_bits_of_arg124 = and i64 %binop_4222, 1
  %is_arg1_int25 = icmp eq i64 %tag_bits_of_arg124, 0
  br i1 %is_arg1_int25, label %arg1_type_check_passed_26, label %call_error_func26

arg1_type_check_passed_26:                        ; preds = %plus_26
  %tag_bits_of_arg228 = and i64 %binop_4923, 1
  %is_arg2_int29 = icmp eq i64 %tag_bits_of_arg228, 0
  br i1 %is_arg2_int29, label %arg2_type_check_passed_26, label %call_error_func30

call_error_func26:                                ; preds = %plus_26
  store i64 %binop_4222, i64* @current_answer_ptr, align 4
  %error_call_return_val27 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_26:                        ; preds = %arg1_type_check_passed_26
  %plus_snake_result_26 = add i64 %binop_4222, %binop_4923
  %r_ge_032 = icmp sge i64 %binop_4923, 0
  %l_ge_033 = icmp sge i64 %binop_4222, 0
  %positive_overflow34 = and i1 %l_ge_033, %r_ge_032
  %sum_lt_l35 = icmp slt i64 %plus_snake_result_26, %binop_4222
  %sum_lt_r36 = icmp slt i64 %plus_snake_result_26, %binop_4923
  %overflow_on_positive37 = or i1 %sum_lt_l35, %sum_lt_r36
  %l_lt_038 = icmp slt i64 %binop_4923, 0
  %l_lt_039 = icmp slt i64 %binop_4222, 0
  %negative_overflow40 = and i1 %l_lt_039, %l_lt_038
  %sum_gt_l41 = icmp sgt i64 %plus_snake_result_26, %binop_4222
  %sum_gt_r42 = icmp sgt i64 %plus_snake_result_26, %binop_4923
  %overflow_on_negative43 = or i1 %sum_gt_l41, %sum_gt_r42
  %negative_check44 = and i1 %negative_overflow40, %overflow_on_negative43
  %positive_check45 = and i1 %positive_overflow34, %overflow_on_positive37
  %overflow46 = or i1 %positive_check45, %negative_check44
  %is_not_overflow47 = xor i1 %overflow46, true
  br i1 %is_not_overflow47, label %continue_no_overflow_26, label %call_error_func48

call_error_func30:                                ; preds = %arg1_type_check_passed_26
  store i64 %binop_4923, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_26:                          ; preds = %arg2_type_check_passed_26
  %plus_snake_result_2650 = phi i64 [ %plus_snake_result_26, %arg2_type_check_passed_26 ]
  br label %return

call_error_func48:                                ; preds = %arg2_type_check_passed_26
  store i64 %plus_snake_result_26, i64* @current_answer_ptr, align 4
  %error_call_return_val49 = call i64 @error_func(i64 5)
  unreachable
}
