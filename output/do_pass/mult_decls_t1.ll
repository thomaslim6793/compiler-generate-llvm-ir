; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_29

create_lambda_closure_29:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_29 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_29, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_29, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_29, i32 0, i32 2
  store i64 (i64, i64)* @lambda_29_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_29 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_29 to i64
  %closure_tagged_tuple_addr_word_29 = add i64 %closure_addr_29, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_29
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_29, i64* %print_4, align 4
  br label %create_lambda_closure_26

create_lambda_closure_26:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_26 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_26, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_26, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_26, i32 0, i32 2
  store i64 (i64)* @lambda_26_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_26 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_26 to i64
  %closure_tagged_tuple_addr_word_26 = add i64 %closure_addr_26, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_26
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_26, i64* %input_11, align 4
  br label %create_lambda_closure_21

create_lambda_closure_21:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_21 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_21, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_21, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_21, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_21_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_21 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_21 to i64
  %closure_tagged_tuple_addr_word_21 = add i64 %closure_addr_21, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_21
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_21, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %foo_26 = alloca i64, align 8
  br label %create_lambda_closure_19

create_lambda_closure_19:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_19 = bitcast i8* %malloccall3 to { i64 (i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_19, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_19, i32 0, i32 1
  store i64 (i64, i64)* @lambda_19_, i64 (i64, i64)** %9, align 8
  store i64 2, i64* %10, align 4
  %closure_addr_19 = ptrtoint { i64 (i64, i64)*, i64 }* %closure_ptr_19 to i64
  %closure_tagged_tuple_addr_word_19 = add i64 %closure_addr_19, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_19
  store i64 %closure_tagged_tuple_addr_word_19, i64* %foo_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %bar_32 = alloca i64, align 8
  br label %create_lambda_closure_17

create_lambda_closure_17:                         ; preds = %let_rec_5
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_17 = bitcast i8* %malloccall4 to { i64 (i64, i64)*, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_17, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_17, i32 0, i32 1
  store i64 (i64, i64)* @lambda_17_, i64 (i64, i64)** %11, align 8
  store i64 2, i64* %12, align 4
  %closure_addr_17 = ptrtoint { i64 (i64, i64)*, i64 }* %closure_ptr_17 to i64
  %closure_tagged_tuple_addr_word_17 = add i64 %closure_addr_17, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_17
  store i64 %closure_tagged_tuple_addr_word_17, i64* %bar_32, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %foo_265 = load i64, i64* %foo_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %foo_265, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_14, label %call_error_func

is_closure_14:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %foo_265, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 2
  br i1 %13, label %is_correct_arity_14, label %call_error_func6

call_error_func:                                  ; preds = %function_call
  store i64 %foo_265, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_14:                              ; preds = %is_closure_14
  %lambda_non_tail_call_result = call i64 %function(i64 %foo_265, i64 0)
  br label %let_6

call_error_func6:                                 ; preds = %is_closure_14
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 17)
  unreachable

let_6:                                            ; preds = %is_correct_arity_14
  %app_37 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_37, align 4
  br label %function_call8

function_call8:                                   ; preds = %let_6
  %bar_329 = load i64, i64* %bar_32, align 4
  %tag_bits_of_closure_of_func_to_call10 = and i64 %bar_329, 7
  %is_closure_of_func_to_call_closure11 = icmp eq i64 %tag_bits_of_closure_of_func_to_call10, 5
  br i1 %is_closure_of_func_to_call_closure11, label %is_closure_11, label %call_error_func12

is_closure_11:                                    ; preds = %function_call8
  %untagged_closure_addr14 = sub i64 %bar_329, 5
  %closure_ptr15 = inttoptr i64 %untagged_closure_addr14 to i64*
  %function_code_ptr_as_i6416 = load i64, i64* %closure_ptr15, align 4
  %function17 = inttoptr i64 %function_code_ptr_as_i6416 to i64 (i64, i64)*
  %arity_ptr18 = getelementptr i64, i64* %closure_ptr15, i64 1
  %arity19 = load i64, i64* %arity_ptr18, align 4
  %14 = icmp eq i64 %arity19, 2
  br i1 %14, label %is_correct_arity_11, label %call_error_func20

call_error_func12:                                ; preds = %function_call8
  store i64 %bar_329, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_11:                              ; preds = %is_closure_11
  %lambda_non_tail_call_result22 = call i64 %function17(i64 %bar_329, i64 0)
  br label %let_7

call_error_func20:                                ; preds = %is_closure_11
  store i64 %arity19, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 17)
  unreachable

let_7:                                            ; preds = %is_correct_arity_11
  %app_40 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result22, i64* %app_40, align 4
  br label %plus_8

plus_8:                                           ; preds = %let_7
  %app_3723 = load i64, i64* %app_37, align 4
  %app_4024 = load i64, i64* %app_40, align 4
  %tag_bits_of_arg1 = and i64 %app_3723, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_8, label %call_error_func25

arg1_type_check_passed_8:                         ; preds = %plus_8
  %tag_bits_of_arg2 = and i64 %app_4024, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_8, label %call_error_func27

call_error_func25:                                ; preds = %plus_8
  store i64 %app_3723, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_8:                         ; preds = %arg1_type_check_passed_8
  %plus_snake_result_8 = add i64 %app_3723, %app_4024
  %r_ge_0 = icmp sge i64 %app_4024, 0
  %l_ge_0 = icmp sge i64 %app_3723, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_8, %app_3723
  %sum_lt_r = icmp slt i64 %plus_snake_result_8, %app_4024
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %app_4024, 0
  %l_lt_029 = icmp slt i64 %app_3723, 0
  %negative_overflow = and i1 %l_lt_029, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_8, %app_3723
  %sum_gt_r = icmp sgt i64 %plus_snake_result_8, %app_4024
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_8, label %call_error_func30

call_error_func27:                                ; preds = %arg1_type_check_passed_8
  store i64 %app_4024, i64* @current_answer_ptr, align 4
  %error_call_return_val28 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_8:                           ; preds = %arg2_type_check_passed_8
  %plus_snake_result_832 = phi i64 [ %plus_snake_result_8, %arg2_type_check_passed_8 ]
  br label %result

call_error_func30:                                ; preds = %arg2_type_check_passed_8
  store i64 %plus_snake_result_8, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 5)
  unreachable

result:                                           ; preds = %continue_no_overflow_8
  ret i64 %plus_snake_result_832
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

define i64 @lambda_29_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_30

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_30 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_26_(i64 %0) {
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
  ret i64 %input_tail_call_result_27

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_27 = tail call i64 @input()
  br label %return
}

define i64 @lambda_21_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_22

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_22 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_19_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %return

return:                                           ; preds = %lambda_body
  ret i64 2
}

define i64 @lambda_17_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %return

return:                                           ; preds = %lambda_body
  ret i64 4
}
