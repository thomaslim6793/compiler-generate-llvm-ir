; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_54

create_lambda_closure_54:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_54 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_54, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_54, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_54, i32 0, i32 2
  store i64 (i64, i64)* @lambda_54_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_54 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_54 to i64
  %closure_tagged_tuple_addr_word_54 = add i64 %closure_addr_54, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_54
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_54, i64* %print_4, align 4
  br label %create_lambda_closure_51

create_lambda_closure_51:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_51 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_51, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_51, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_51, i32 0, i32 2
  store i64 (i64)* @lambda_51_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_51 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_51 to i64
  %closure_tagged_tuple_addr_word_51 = add i64 %closure_addr_51, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_51
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_51, i64* %input_11, align 4
  br label %create_lambda_closure_46

create_lambda_closure_46:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_46 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_46, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_46, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_46, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_46_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_46 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_46 to i64
  %closure_tagged_tuple_addr_word_46 = add i64 %closure_addr_46, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_46
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_46, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_40

create_lambda_closure_40:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_40 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_40, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_40, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_40_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  %closure_addr_40 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_40 to i64
  %closure_tagged_tuple_addr_word_40 = add i64 %closure_addr_40, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_40
  store i64 %closure_tagged_tuple_addr_word_40, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_39 = alloca i64, align 8
  br label %create_lambda_closure_24

create_lambda_closure_24:                         ; preds = %let_rec_5
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_24 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_24, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_24, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_24_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  %closure_addr_24 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_24 to i64
  %closure_tagged_tuple_addr_word_24 = add i64 %closure_addr_24, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_24
  store i64 %closure_tagged_tuple_addr_word_24, i64* %f2_39, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f1_265 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_265, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_20, label %call_error_func

is_closure_20:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %f1_265, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 4
  br i1 %13, label %is_correct_arity_20, label %call_error_func6

call_error_func:                                  ; preds = %function_call
  store i64 %f1_265, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_20:                              ; preds = %is_closure_20
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_265, i64 8, i64 10)
  br label %let_6

call_error_func6:                                 ; preds = %is_closure_20
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 17)
  unreachable

let_6:                                            ; preds = %is_correct_arity_20
  %app_53 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_53, align 4
  br label %function_call8

function_call8:                                   ; preds = %let_6
  %f2_399 = load i64, i64* %f2_39, align 4
  %tag_bits_of_closure_of_func_to_call10 = and i64 %f2_399, 7
  %is_closure_of_func_to_call_closure11 = icmp eq i64 %tag_bits_of_closure_of_func_to_call10, 5
  br i1 %is_closure_of_func_to_call_closure11, label %is_closure_16, label %call_error_func12

is_closure_16:                                    ; preds = %function_call8
  %untagged_closure_addr14 = sub i64 %f2_399, 5
  %closure_ptr15 = inttoptr i64 %untagged_closure_addr14 to i64*
  %function_code_ptr_as_i6416 = load i64, i64* %closure_ptr15, align 4
  %function17 = inttoptr i64 %function_code_ptr_as_i6416 to i64 (i64, i64, i64)*
  %arity_ptr18 = getelementptr i64, i64* %closure_ptr15, i64 1
  %arity19 = load i64, i64* %arity_ptr18, align 4
  %14 = icmp eq i64 %arity19, 4
  br i1 %14, label %is_correct_arity_16, label %call_error_func20

call_error_func12:                                ; preds = %function_call8
  store i64 %f2_399, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_16:                              ; preds = %is_closure_16
  %lambda_non_tail_call_result22 = call i64 %function17(i64 %f2_399, i64 9223372036854775807, i64 -1)
  br label %let_7

call_error_func20:                                ; preds = %is_closure_16
  store i64 %arity19, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 17)
  unreachable

let_7:                                            ; preds = %is_correct_arity_16
  %app_58 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result22, i64* %app_58, align 4
  br label %if_else_12

if_else_12:                                       ; preds = %let_7
  %app_5823 = load i64, i64* %app_58, align 4
  %tag_bits_of_cond_val = and i64 %app_5823, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_12, label %call_error_func24

continue_if_else_12:                              ; preds = %if_else_12
  %is_cond_true = icmp eq i64 %app_5823, -1
  br i1 %is_cond_true, label %then_12, label %else_12

call_error_func24:                                ; preds = %if_else_12
  store i64 %app_5823, i64* @current_answer_ptr, align 4
  %error_call_return_val25 = call i64 @error_func(i64 4)
  unreachable

then_12:                                          ; preds = %continue_if_else_12
  br label %merge_then_else_12

else_12:                                          ; preds = %continue_if_else_12
  br label %merge_then_else_12

merge_then_else_12:                               ; preds = %else_12, %then_12
  %"if/else_snake_result_12" = phi i64 [ 6, %then_12 ], [ 14, %else_12 ]
  br label %let_8

let_8:                                            ; preds = %merge_then_else_12
  %if_57 = alloca i64, align 8
  store i64 %"if/else_snake_result_12", i64* %if_57, align 4
  br label %plus_9

plus_9:                                           ; preds = %let_8
  %app_5326 = load i64, i64* %app_53, align 4
  %if_5727 = load i64, i64* %if_57, align 4
  %tag_bits_of_arg1 = and i64 %app_5326, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_9, label %call_error_func28

arg1_type_check_passed_9:                         ; preds = %plus_9
  %tag_bits_of_arg2 = and i64 %if_5727, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_9, label %call_error_func30

call_error_func28:                                ; preds = %plus_9
  store i64 %app_5326, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_9:                         ; preds = %arg1_type_check_passed_9
  %plus_snake_result_9 = add i64 %app_5326, %if_5727
  %r_ge_0 = icmp sge i64 %if_5727, 0
  %l_ge_0 = icmp sge i64 %app_5326, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_9, %app_5326
  %sum_lt_r = icmp slt i64 %plus_snake_result_9, %if_5727
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %if_5727, 0
  %l_lt_032 = icmp slt i64 %app_5326, 0
  %negative_overflow = and i1 %l_lt_032, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_9, %app_5326
  %sum_gt_r = icmp sgt i64 %plus_snake_result_9, %if_5727
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_9, label %call_error_func33

call_error_func30:                                ; preds = %arg1_type_check_passed_9
  store i64 %if_5727, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_9:                           ; preds = %arg2_type_check_passed_9
  %plus_snake_result_935 = phi i64 [ %plus_snake_result_9, %arg2_type_check_passed_9 ]
  br label %result

call_error_func33:                                ; preds = %arg2_type_check_passed_9
  store i64 %plus_snake_result_9, i64* @current_answer_ptr, align 4
  %error_call_return_val34 = call i64 @error_func(i64 5)
  unreachable

result:                                           ; preds = %continue_no_overflow_9
  ret i64 %plus_snake_result_935
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

define i64 @lambda_54_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_55

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_55 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_51_(i64 %0) {
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
  ret i64 %input_tail_call_result_52

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_52 = tail call i64 @input()
  br label %return
}

define i64 @lambda_46_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_47

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_47 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_40_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %let_41

return:                                           ; preds = %continue_no_overflow_42
  ret i64 %plus_snake_result_427

let_41:                                           ; preds = %lambda_body
  %x_30 = alloca i64, align 8
  store i64 %1, i64* %x_30, align 4
  br label %plus_42

plus_42:                                          ; preds = %let_41
  %x_301 = load i64, i64* %x_30, align 4
  %tag_bits_of_arg1 = and i64 %x_301, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_42, label %call_error_func

arg1_type_check_passed_42:                        ; preds = %plus_42
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_42, label %call_error_func2

call_error_func:                                  ; preds = %plus_42
  store i64 %x_301, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_42:                        ; preds = %arg1_type_check_passed_42
  %plus_snake_result_42 = add i64 %x_301, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %l_ge_0 = icmp sge i64 %x_301, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_42, %x_301
  %sum_lt_r = icmp slt i64 %plus_snake_result_42, %2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %l_lt_04 = icmp slt i64 %x_301, 0
  %negative_overflow = and i1 %l_lt_04, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_42, %x_301
  %sum_gt_r = icmp sgt i64 %plus_snake_result_42, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_42, label %call_error_func5

call_error_func2:                                 ; preds = %arg1_type_check_passed_42
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val3 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_42:                          ; preds = %arg2_type_check_passed_42
  %plus_snake_result_427 = phi i64 [ %plus_snake_result_42, %arg2_type_check_passed_42 ]
  br label %return

call_error_func5:                                 ; preds = %arg2_type_check_passed_42
  store i64 %plus_snake_result_42, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_24_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %logical_not_38

return:                                           ; preds = %merge_then_else_26
  ret i64 %"if/else_snake_result_26"

logical_not_38:                                   ; preds = %lambda_body
  %tag_bits_of_arg = and i64 %1, 7
  %is_arg_bool = icmp eq i64 %tag_bits_of_arg, 7
  br i1 %is_arg_bool, label %continue_logical_not_38, label %call_error_func

continue_logical_not_38:                          ; preds = %logical_not_38
  %logical_not_snake_result_38 = xor i64 %1, -9223372036854775808
  br label %let_25

call_error_func:                                  ; preds = %logical_not_38
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 3)
  unreachable

let_25:                                           ; preds = %continue_logical_not_38
  %unary_42 = alloca i64, align 8
  store i64 %logical_not_snake_result_38, i64* %unary_42, align 4
  br label %if_else_26

if_else_26:                                       ; preds = %let_25
  %unary_421 = load i64, i64* %unary_42, align 4
  %tag_bits_of_cond_val = and i64 %unary_421, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_26, label %call_error_func2

continue_if_else_26:                              ; preds = %if_else_26
  %is_cond_true = icmp eq i64 %unary_421, -1
  br i1 %is_cond_true, label %then_26, label %else_26

call_error_func2:                                 ; preds = %if_else_26
  store i64 %unary_421, i64* @current_answer_ptr, align 4
  %error_call_return_val3 = call i64 @error_func(i64 4)
  unreachable

then_26:                                          ; preds = %continue_if_else_26
  br label %merge_then_else_26

else_26:                                          ; preds = %continue_if_else_26
  br label %plus_33

merge_then_else_26:                               ; preds = %continue_logical_not_29, %then_26
  %"if/else_snake_result_26" = phi i64 [ 9223372036854775807, %then_26 ], [ %logical_not_snake_result_29, %continue_logical_not_29 ]
  br label %return

plus_33:                                          ; preds = %else_26
  br i1 true, label %arg1_type_check_passed_33, label %call_error_func4

arg1_type_check_passed_33:                        ; preds = %plus_33
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_33, label %call_error_func6

call_error_func4:                                 ; preds = %plus_33
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_33:                        ; preds = %arg1_type_check_passed_33
  %plus_snake_result_33 = add i64 2, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %positive_overflow = and i1 true, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_33, 2
  %sum_lt_r = icmp slt i64 %plus_snake_result_33, %2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %negative_overflow = and i1 false, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_33, 2
  %sum_gt_r = icmp sgt i64 %plus_snake_result_33, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_33, label %call_error_func8

call_error_func6:                                 ; preds = %arg1_type_check_passed_33
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_33:                          ; preds = %arg2_type_check_passed_33
  %plus_snake_result_3310 = phi i64 [ %plus_snake_result_33, %arg2_type_check_passed_33 ]
  br label %let_27

call_error_func8:                                 ; preds = %arg2_type_check_passed_33
  store i64 %plus_snake_result_33, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 5)
  unreachable

let_27:                                           ; preds = %continue_no_overflow_33
  %binop_47 = alloca i64, align 8
  store i64 %plus_snake_result_3310, i64* %binop_47, align 4
  br label %logical_not_31

logical_not_31:                                   ; preds = %let_27
  %binop_4711 = load i64, i64* %binop_47, align 4
  %tag_bits_of_arg12 = and i64 %binop_4711, 7
  %is_arg_bool13 = icmp eq i64 %tag_bits_of_arg12, 7
  br i1 %is_arg_bool13, label %continue_logical_not_31, label %call_error_func14

continue_logical_not_31:                          ; preds = %logical_not_31
  %logical_not_snake_result_31 = xor i64 %binop_4711, -9223372036854775808
  br label %let_28

call_error_func14:                                ; preds = %logical_not_31
  store i64 %binop_4711, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 3)
  unreachable

let_28:                                           ; preds = %continue_logical_not_31
  %unary_46 = alloca i64, align 8
  store i64 %logical_not_snake_result_31, i64* %unary_46, align 4
  br label %logical_not_29

logical_not_29:                                   ; preds = %let_28
  %unary_4616 = load i64, i64* %unary_46, align 4
  %tag_bits_of_arg17 = and i64 %unary_4616, 7
  %is_arg_bool18 = icmp eq i64 %tag_bits_of_arg17, 7
  br i1 %is_arg_bool18, label %continue_logical_not_29, label %call_error_func19

continue_logical_not_29:                          ; preds = %logical_not_29
  %logical_not_snake_result_29 = xor i64 %unary_4616, -9223372036854775808
  br label %merge_then_else_26

call_error_func19:                                ; preds = %logical_not_29
  store i64 %unary_4616, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 3)
  unreachable
}
