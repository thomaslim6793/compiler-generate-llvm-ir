; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_66

create_lambda_closure_66:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_66 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_66, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_66, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_66, i32 0, i32 2
  store i64 (i64, i64)* @lambda_66_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_66 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_66 to i64
  %closure_tagged_tuple_addr_word_66 = add i64 %closure_addr_66, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_66
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_66, i64* %print_4, align 4
  br label %create_lambda_closure_63

create_lambda_closure_63:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_63 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_63, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_63, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_63, i32 0, i32 2
  store i64 (i64)* @lambda_63_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_63 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_63 to i64
  %closure_tagged_tuple_addr_word_63 = add i64 %closure_addr_63, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_63
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_63, i64* %input_11, align 4
  br label %create_lambda_closure_58

create_lambda_closure_58:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_58 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_58, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_58, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_58, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_58_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_58 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_58 to i64
  %closure_tagged_tuple_addr_word_58 = add i64 %closure_addr_58, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_58
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_58, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_50

create_lambda_closure_50:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_50 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_50, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_50, i32 0, i32 1
  store i64 (i64, i64, i64, i64)* @lambda_50_, i64 (i64, i64, i64, i64)** %9, align 8
  store i64 6, i64* %10, align 4
  %closure_addr_50 = ptrtoint { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_50 to i64
  %closure_tagged_tuple_addr_word_50 = add i64 %closure_addr_50, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_50
  store i64 %closure_tagged_tuple_addr_word_50, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_38 = alloca i64, align 8
  br label %create_lambda_closure_10

create_lambda_closure_10:                         ; preds = %let_rec_5
  %f1_264 = load i64, i64* %f1_26, align 4
  %f2_385 = load i64, i64* %f2_38, align 4
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_10 = bitcast i8* %malloccall6 to { i64 (i64, i64, i64)*, i64, i64, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_10, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_10, i32 0, i32 1
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_10, i32 0, i32 2
  %14 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_10, i32 0, i32 3
  store i64 (i64, i64, i64)* @lambda_10_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  store i64 %f1_264, i64* %13, align 4
  store i64 %f2_385, i64* %14, align 4
  %closure_addr_10 = ptrtoint { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_10 to i64
  %closure_tagged_tuple_addr_word_10 = add i64 %closure_addr_10, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_10
  store i64 %closure_tagged_tuple_addr_word_10, i64* %f2_38, align 4
  %f1_267 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_10, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %15 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_267, i64* %15, align 4
  %f2_388 = load i64, i64* %f2_38, align 4
  %untagged_closure_addr9 = sub i64 %closure_tagged_tuple_addr_word_10, 5
  %closure_ptr10 = inttoptr i64 %untagged_closure_addr9 to i64*
  %16 = getelementptr i64, i64* %closure_ptr10, i64 3
  store i64 %f2_388, i64* %16, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f2_3811 = load i64, i64* %f2_38, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f2_3811, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_6, label %call_error_func

is_closure_6:                                     ; preds = %function_call
  %untagged_closure_addr12 = sub i64 %f2_3811, 5
  %closure_ptr13 = inttoptr i64 %untagged_closure_addr12 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr13, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr13, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 4
  br i1 %17, label %is_correct_arity_6, label %call_error_func14

call_error_func:                                  ; preds = %function_call
  store i64 %f2_3811, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_6:                               ; preds = %is_closure_6
  %lambda_tail_call_result = tail call i64 %function(i64 %f2_3811, i64 20, i64 20)
  br label %result

call_error_func14:                                ; preds = %is_closure_6
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 17)
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

define i64 @lambda_66_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_67

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_67 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_63_(i64 %0) {
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
  ret i64 %input_tail_call_result_64

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_64 = tail call i64 @input()
  br label %return
}

define i64 @lambda_58_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_59

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_59 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_50_(i64 %0, i64 %1, i64 %2, i64 %3) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %plus_55

return:                                           ; preds = %continue_no_overflow_52
  ret i64 %plus_snake_result_5234

plus_55:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_55, label %call_error_func

arg1_type_check_passed_55:                        ; preds = %plus_55
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_55, label %call_error_func1

call_error_func:                                  ; preds = %plus_55
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_55:                        ; preds = %arg1_type_check_passed_55
  %plus_snake_result_55 = add i64 %1, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_55, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_55, %2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %l_lt_03 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_03, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_55, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_55, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_55, label %call_error_func4

call_error_func1:                                 ; preds = %arg1_type_check_passed_55
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_55:                          ; preds = %arg2_type_check_passed_55
  %plus_snake_result_556 = phi i64 [ %plus_snake_result_55, %arg2_type_check_passed_55 ]
  br label %let_51

call_error_func4:                                 ; preds = %arg2_type_check_passed_55
  store i64 %plus_snake_result_55, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 5)
  unreachable

let_51:                                           ; preds = %continue_no_overflow_55
  %binop_29 = alloca i64, align 8
  store i64 %plus_snake_result_556, i64* %binop_29, align 4
  br label %plus_52

plus_52:                                          ; preds = %let_51
  %binop_297 = load i64, i64* %binop_29, align 4
  %tag_bits_of_arg18 = and i64 %binop_297, 1
  %is_arg1_int9 = icmp eq i64 %tag_bits_of_arg18, 0
  br i1 %is_arg1_int9, label %arg1_type_check_passed_52, label %call_error_func10

arg1_type_check_passed_52:                        ; preds = %plus_52
  %tag_bits_of_arg212 = and i64 %3, 1
  %is_arg2_int13 = icmp eq i64 %tag_bits_of_arg212, 0
  br i1 %is_arg2_int13, label %arg2_type_check_passed_52, label %call_error_func14

call_error_func10:                                ; preds = %plus_52
  store i64 %binop_297, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_52:                        ; preds = %arg1_type_check_passed_52
  %plus_snake_result_52 = add i64 %binop_297, %3
  %r_ge_016 = icmp sge i64 %3, 0
  %l_ge_017 = icmp sge i64 %binop_297, 0
  %positive_overflow18 = and i1 %l_ge_017, %r_ge_016
  %sum_lt_l19 = icmp slt i64 %plus_snake_result_52, %binop_297
  %sum_lt_r20 = icmp slt i64 %plus_snake_result_52, %3
  %overflow_on_positive21 = or i1 %sum_lt_l19, %sum_lt_r20
  %l_lt_022 = icmp slt i64 %3, 0
  %l_lt_023 = icmp slt i64 %binop_297, 0
  %negative_overflow24 = and i1 %l_lt_023, %l_lt_022
  %sum_gt_l25 = icmp sgt i64 %plus_snake_result_52, %binop_297
  %sum_gt_r26 = icmp sgt i64 %plus_snake_result_52, %3
  %overflow_on_negative27 = or i1 %sum_gt_l25, %sum_gt_r26
  %negative_check28 = and i1 %negative_overflow24, %overflow_on_negative27
  %positive_check29 = and i1 %positive_overflow18, %overflow_on_positive21
  %overflow30 = or i1 %positive_check29, %negative_check28
  %is_not_overflow31 = xor i1 %overflow30, true
  br i1 %is_not_overflow31, label %continue_no_overflow_52, label %call_error_func32

call_error_func14:                                ; preds = %arg1_type_check_passed_52
  store i64 %3, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_52:                          ; preds = %arg2_type_check_passed_52
  %plus_snake_result_5234 = phi i64 [ %plus_snake_result_52, %arg2_type_check_passed_52 ]
  br label %return

call_error_func32:                                ; preds = %arg2_type_check_passed_52
  store i64 %plus_snake_result_52, i64* @current_answer_ptr, align 4
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
  %"free_var_'f2_38'_ptr" = getelementptr i64, i64* %closure_ptr, i64 3
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %plus_47

return:                                           ; preds = %merge_then_else_15
  ret i64 %"if/else_snake_result_15"

plus_47:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %2, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_47, label %call_error_func

arg1_type_check_passed_47:                        ; preds = %plus_47
  br i1 true, label %arg2_type_check_passed_47, label %call_error_func1

call_error_func:                                  ; preds = %plus_47
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_47:                        ; preds = %arg1_type_check_passed_47
  %plus_snake_result_47 = add i64 %2, 2
  %l_ge_0 = icmp sge i64 %2, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_47, %2
  %sum_lt_r = icmp slt i64 %plus_snake_result_47, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_47, %2
  %sum_gt_r = icmp sgt i64 %plus_snake_result_47, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_47, label %call_error_func3

call_error_func1:                                 ; preds = %arg1_type_check_passed_47
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_47:                          ; preds = %arg2_type_check_passed_47
  %plus_snake_result_475 = phi i64 [ %plus_snake_result_47, %arg2_type_check_passed_47 ]
  br label %let_11

call_error_func3:                                 ; preds = %arg2_type_check_passed_47
  store i64 %plus_snake_result_47, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 5)
  unreachable

let_11:                                           ; preds = %continue_no_overflow_47
  %z_42 = alloca i64, align 8
  store i64 %plus_snake_result_475, i64* %z_42, align 4
  br label %plus_44

plus_44:                                          ; preds = %let_11
  %tag_bits_of_arg16 = and i64 %2, 1
  %is_arg1_int7 = icmp eq i64 %tag_bits_of_arg16, 0
  br i1 %is_arg1_int7, label %arg1_type_check_passed_44, label %call_error_func8

arg1_type_check_passed_44:                        ; preds = %plus_44
  br i1 true, label %arg2_type_check_passed_44, label %call_error_func10

call_error_func8:                                 ; preds = %plus_44
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_44:                        ; preds = %arg1_type_check_passed_44
  %plus_snake_result_44 = add i64 %2, 2
  %l_ge_012 = icmp sge i64 %2, 0
  %positive_overflow13 = and i1 %l_ge_012, true
  %sum_lt_l14 = icmp slt i64 %plus_snake_result_44, %2
  %sum_lt_r15 = icmp slt i64 %plus_snake_result_44, 2
  %overflow_on_positive16 = or i1 %sum_lt_l14, %sum_lt_r15
  %l_lt_017 = icmp slt i64 %2, 0
  %negative_overflow18 = and i1 %l_lt_017, false
  %sum_gt_l19 = icmp sgt i64 %plus_snake_result_44, %2
  %sum_gt_r20 = icmp sgt i64 %plus_snake_result_44, 2
  %overflow_on_negative21 = or i1 %sum_gt_l19, %sum_gt_r20
  %negative_check22 = and i1 %negative_overflow18, %overflow_on_negative21
  %positive_check23 = and i1 %positive_overflow13, %overflow_on_positive16
  %overflow24 = or i1 %positive_check23, %negative_check22
  %is_not_overflow25 = xor i1 %overflow24, true
  br i1 %is_not_overflow25, label %continue_no_overflow_44, label %call_error_func26

call_error_func10:                                ; preds = %arg1_type_check_passed_44
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_44:                          ; preds = %arg2_type_check_passed_44
  %plus_snake_result_4428 = phi i64 [ %plus_snake_result_44, %arg2_type_check_passed_44 ]
  br label %let_12

call_error_func26:                                ; preds = %arg2_type_check_passed_44
  store i64 %plus_snake_result_44, i64* @current_answer_ptr, align 4
  %error_call_return_val27 = call i64 @error_func(i64 5)
  unreachable

let_12:                                           ; preds = %continue_no_overflow_44
  %binop_51 = alloca i64, align 8
  store i64 %plus_snake_result_4428, i64* %binop_51, align 4
  br label %function_call

function_call:                                    ; preds = %let_12
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_39, label %call_error_func29

is_closure_39:                                    ; preds = %function_call
  %untagged_closure_addr31 = sub i64 %f1_26, 5
  %closure_ptr32 = inttoptr i64 %untagged_closure_addr31 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr32, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr32, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 6
  br i1 %3, label %is_correct_arity_39, label %call_error_func33

call_error_func29:                                ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val30 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_39:                              ; preds = %is_closure_39
  %binop_5135 = load i64, i64* %binop_51, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_26, i64 %1, i64 %2, i64 %binop_5135)
  br label %let_13

call_error_func33:                                ; preds = %is_closure_39
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val34 = call i64 @error_func(i64 17)
  unreachable

let_13:                                           ; preds = %is_correct_arity_39
  %app_48 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_48, align 4
  br label %less_36

less_36:                                          ; preds = %let_13
  %app_4836 = load i64, i64* %app_48, align 4
  %tag_bits_of_arg137 = and i64 %app_4836, 1
  %is_arg1_int38 = icmp eq i64 %tag_bits_of_arg137, 0
  br i1 %is_arg1_int38, label %arg1_type_check_passed_36, label %call_error_func39

arg1_type_check_passed_36:                        ; preds = %less_36
  br i1 true, label %arg2_type_check_passed_36, label %call_error_func41

call_error_func39:                                ; preds = %less_36
  store i64 %app_4836, i64* @current_answer_ptr, align 4
  %error_call_return_val40 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_36:                        ; preds = %arg1_type_check_passed_36
  %less_llvm_result_36 = icmp slt i64 %app_4836, 2
  br i1 %less_llvm_result_36, label %comp_is_true_36, label %comp_is_false_36

call_error_func41:                                ; preds = %arg1_type_check_passed_36
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val42 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_36:                                  ; preds = %arg2_type_check_passed_36
  br label %merge_36

comp_is_false_36:                                 ; preds = %arg2_type_check_passed_36
  br label %merge_36

merge_36:                                         ; preds = %comp_is_false_36, %comp_is_true_36
  %less_snake_result_36 = phi i64 [ -1, %comp_is_true_36 ], [ 9223372036854775807, %comp_is_false_36 ]
  br label %let_14

let_14:                                           ; preds = %merge_36
  %binop_47 = alloca i64, align 8
  store i64 %less_snake_result_36, i64* %binop_47, align 4
  br label %if_else_15

if_else_15:                                       ; preds = %let_14
  %binop_4743 = load i64, i64* %binop_47, align 4
  %tag_bits_of_cond_val = and i64 %binop_4743, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_15, label %call_error_func44

continue_if_else_15:                              ; preds = %if_else_15
  %is_cond_true = icmp eq i64 %binop_4743, -1
  br i1 %is_cond_true, label %then_15, label %else_15

call_error_func44:                                ; preds = %if_else_15
  store i64 %binop_4743, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 4)
  unreachable

then_15:                                          ; preds = %continue_if_else_15
  br label %plus_32

else_15:                                          ; preds = %continue_if_else_15
  br label %minus_25

merge_then_else_15:                               ; preds = %is_correct_arity_18, %continue_no_overflow_29
  %"if/else_snake_result_15" = phi i64 [ %plus_snake_result_2998, %continue_no_overflow_29 ], [ %lambda_tail_call_result, %is_correct_arity_18 ]
  br label %return

plus_32:                                          ; preds = %then_15
  %tag_bits_of_arg146 = and i64 %1, 1
  %is_arg1_int47 = icmp eq i64 %tag_bits_of_arg146, 0
  br i1 %is_arg1_int47, label %arg1_type_check_passed_32, label %call_error_func48

arg1_type_check_passed_32:                        ; preds = %plus_32
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_32, label %call_error_func50

call_error_func48:                                ; preds = %plus_32
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val49 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_32:                        ; preds = %arg1_type_check_passed_32
  %plus_snake_result_32 = add i64 %1, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %l_ge_052 = icmp sge i64 %1, 0
  %positive_overflow53 = and i1 %l_ge_052, %r_ge_0
  %sum_lt_l54 = icmp slt i64 %plus_snake_result_32, %1
  %sum_lt_r55 = icmp slt i64 %plus_snake_result_32, %2
  %overflow_on_positive56 = or i1 %sum_lt_l54, %sum_lt_r55
  %l_lt_057 = icmp slt i64 %2, 0
  %l_lt_058 = icmp slt i64 %1, 0
  %negative_overflow59 = and i1 %l_lt_058, %l_lt_057
  %sum_gt_l60 = icmp sgt i64 %plus_snake_result_32, %1
  %sum_gt_r61 = icmp sgt i64 %plus_snake_result_32, %2
  %overflow_on_negative62 = or i1 %sum_gt_l60, %sum_gt_r61
  %negative_check63 = and i1 %negative_overflow59, %overflow_on_negative62
  %positive_check64 = and i1 %positive_overflow53, %overflow_on_positive56
  %overflow65 = or i1 %positive_check64, %negative_check63
  %is_not_overflow66 = xor i1 %overflow65, true
  br i1 %is_not_overflow66, label %continue_no_overflow_32, label %call_error_func67

call_error_func50:                                ; preds = %arg1_type_check_passed_32
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val51 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_32:                          ; preds = %arg2_type_check_passed_32
  %plus_snake_result_3269 = phi i64 [ %plus_snake_result_32, %arg2_type_check_passed_32 ]
  br label %let_28

call_error_func67:                                ; preds = %arg2_type_check_passed_32
  store i64 %plus_snake_result_32, i64* @current_answer_ptr, align 4
  %error_call_return_val68 = call i64 @error_func(i64 5)
  unreachable

let_28:                                           ; preds = %continue_no_overflow_32
  %binop_57 = alloca i64, align 8
  store i64 %plus_snake_result_3269, i64* %binop_57, align 4
  br label %plus_29

plus_29:                                          ; preds = %let_28
  %binop_5770 = load i64, i64* %binop_57, align 4
  %z_4271 = load i64, i64* %z_42, align 4
  %tag_bits_of_arg172 = and i64 %binop_5770, 1
  %is_arg1_int73 = icmp eq i64 %tag_bits_of_arg172, 0
  br i1 %is_arg1_int73, label %arg1_type_check_passed_29, label %call_error_func74

arg1_type_check_passed_29:                        ; preds = %plus_29
  %tag_bits_of_arg276 = and i64 %z_4271, 1
  %is_arg2_int77 = icmp eq i64 %tag_bits_of_arg276, 0
  br i1 %is_arg2_int77, label %arg2_type_check_passed_29, label %call_error_func78

call_error_func74:                                ; preds = %plus_29
  store i64 %binop_5770, i64* @current_answer_ptr, align 4
  %error_call_return_val75 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_29:                        ; preds = %arg1_type_check_passed_29
  %plus_snake_result_29 = add i64 %binop_5770, %z_4271
  %r_ge_080 = icmp sge i64 %z_4271, 0
  %l_ge_081 = icmp sge i64 %binop_5770, 0
  %positive_overflow82 = and i1 %l_ge_081, %r_ge_080
  %sum_lt_l83 = icmp slt i64 %plus_snake_result_29, %binop_5770
  %sum_lt_r84 = icmp slt i64 %plus_snake_result_29, %z_4271
  %overflow_on_positive85 = or i1 %sum_lt_l83, %sum_lt_r84
  %l_lt_086 = icmp slt i64 %z_4271, 0
  %l_lt_087 = icmp slt i64 %binop_5770, 0
  %negative_overflow88 = and i1 %l_lt_087, %l_lt_086
  %sum_gt_l89 = icmp sgt i64 %plus_snake_result_29, %binop_5770
  %sum_gt_r90 = icmp sgt i64 %plus_snake_result_29, %z_4271
  %overflow_on_negative91 = or i1 %sum_gt_l89, %sum_gt_r90
  %negative_check92 = and i1 %negative_overflow88, %overflow_on_negative91
  %positive_check93 = and i1 %positive_overflow82, %overflow_on_positive85
  %overflow94 = or i1 %positive_check93, %negative_check92
  %is_not_overflow95 = xor i1 %overflow94, true
  br i1 %is_not_overflow95, label %continue_no_overflow_29, label %call_error_func96

call_error_func78:                                ; preds = %arg1_type_check_passed_29
  store i64 %z_4271, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_29:                          ; preds = %arg2_type_check_passed_29
  %plus_snake_result_2998 = phi i64 [ %plus_snake_result_29, %arg2_type_check_passed_29 ]
  br label %merge_then_else_15

call_error_func96:                                ; preds = %arg2_type_check_passed_29
  store i64 %plus_snake_result_29, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 5)
  unreachable

minus_25:                                         ; preds = %else_15
  %tag_bits_of_arg199 = and i64 %1, 1
  %is_arg1_int100 = icmp eq i64 %tag_bits_of_arg199, 0
  br i1 %is_arg1_int100, label %arg1_type_check_passed_25, label %call_error_func101

arg1_type_check_passed_25:                        ; preds = %minus_25
  br i1 true, label %arg2_type_check_passed_25, label %call_error_func103

call_error_func101:                               ; preds = %minus_25
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val102 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_25:                        ; preds = %arg1_type_check_passed_25
  %minus_snake_result_25 = sub i64 %1, 2
  %x_sign = ashr i64 %1, 63
  %res_sign = ashr i64 %minus_snake_result_25, 63
  %x_sign_neq_y_sign = icmp ne i64 %x_sign, 0
  %res_sign_neq_x_sign = icmp ne i64 %res_sign, %x_sign
  %overflow105 = and i1 %x_sign_neq_y_sign, %res_sign_neq_x_sign
  %is_not_overflow106 = xor i1 %overflow105, true
  br i1 %is_not_overflow106, label %continue_no_overflow_25, label %call_error_func107

call_error_func103:                               ; preds = %arg1_type_check_passed_25
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val104 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_25:                          ; preds = %arg2_type_check_passed_25
  %minus_snake_result_25109 = phi i64 [ %minus_snake_result_25, %arg2_type_check_passed_25 ]
  br label %let_16

call_error_func107:                               ; preds = %arg2_type_check_passed_25
  store i64 %minus_snake_result_25, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 5)
  unreachable

let_16:                                           ; preds = %continue_no_overflow_25
  %binop_62 = alloca i64, align 8
  store i64 %minus_snake_result_25109, i64* %binop_62, align 4
  br label %minus_22

minus_22:                                         ; preds = %let_16
  %tag_bits_of_arg1110 = and i64 %2, 1
  %is_arg1_int111 = icmp eq i64 %tag_bits_of_arg1110, 0
  br i1 %is_arg1_int111, label %arg1_type_check_passed_22, label %call_error_func112

arg1_type_check_passed_22:                        ; preds = %minus_22
  br i1 true, label %arg2_type_check_passed_22, label %call_error_func114

call_error_func112:                               ; preds = %minus_22
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_22:                        ; preds = %arg1_type_check_passed_22
  %minus_snake_result_22 = sub i64 %2, 2
  %x_sign116 = ashr i64 %2, 63
  %res_sign117 = ashr i64 %minus_snake_result_22, 63
  %x_sign_neq_y_sign118 = icmp ne i64 %x_sign116, 0
  %res_sign_neq_x_sign119 = icmp ne i64 %res_sign117, %x_sign116
  %overflow120 = and i1 %x_sign_neq_y_sign118, %res_sign_neq_x_sign119
  %is_not_overflow121 = xor i1 %overflow120, true
  br i1 %is_not_overflow121, label %continue_no_overflow_22, label %call_error_func122

call_error_func114:                               ; preds = %arg1_type_check_passed_22
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_22:                          ; preds = %arg2_type_check_passed_22
  %minus_snake_result_22124 = phi i64 [ %minus_snake_result_22, %arg2_type_check_passed_22 ]
  br label %let_17

call_error_func122:                               ; preds = %arg2_type_check_passed_22
  store i64 %minus_snake_result_22, i64* @current_answer_ptr, align 4
  %error_call_return_val123 = call i64 @error_func(i64 5)
  unreachable

let_17:                                           ; preds = %continue_no_overflow_22
  %binop_65 = alloca i64, align 8
  store i64 %minus_snake_result_22124, i64* %binop_65, align 4
  br label %function_call125

function_call125:                                 ; preds = %let_17
  %f2_38 = load i64, i64* %"free_var_'f2_38'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call126 = and i64 %f2_38, 7
  %is_closure_of_func_to_call_closure127 = icmp eq i64 %tag_bits_of_closure_of_func_to_call126, 5
  br i1 %is_closure_of_func_to_call_closure127, label %is_closure_18, label %call_error_func128

is_closure_18:                                    ; preds = %function_call125
  %untagged_closure_addr130 = sub i64 %f2_38, 5
  %closure_ptr131 = inttoptr i64 %untagged_closure_addr130 to i64*
  %function_code_ptr_as_i64132 = load i64, i64* %closure_ptr131, align 4
  %function133 = inttoptr i64 %function_code_ptr_as_i64132 to i64 (i64, i64, i64)*
  %arity_ptr134 = getelementptr i64, i64* %closure_ptr131, i64 1
  %arity135 = load i64, i64* %arity_ptr134, align 4
  %4 = icmp eq i64 %arity135, 4
  br i1 %4, label %is_correct_arity_18, label %call_error_func136

call_error_func128:                               ; preds = %function_call125
  store i64 %f2_38, i64* @current_answer_ptr, align 4
  %error_call_return_val129 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_18:                              ; preds = %is_closure_18
  %binop_62138 = load i64, i64* %binop_62, align 4
  %binop_65139 = load i64, i64* %binop_65, align 4
  %lambda_tail_call_result = tail call i64 %function133(i64 %f2_38, i64 %binop_62138, i64 %binop_65139)
  br label %merge_then_else_15

call_error_func136:                               ; preds = %is_closure_18
  store i64 %arity135, i64* @current_answer_ptr, align 4
  %error_call_return_val137 = call i64 @error_func(i64 17)
  unreachable
}
