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
  br label %create_lambda_closure_45

create_lambda_closure_45:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_45 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_45, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_45, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_45_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  %closure_addr_45 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_45 to i64
  %closure_tagged_tuple_addr_word_45 = add i64 %closure_addr_45, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_45
  store i64 %closure_tagged_tuple_addr_word_45, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_42 = alloca i64, align 8
  br label %create_lambda_closure_33

create_lambda_closure_33:                         ; preds = %let_rec_5
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_33 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_33, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_33, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_33_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  %closure_addr_33 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_33 to i64
  %closure_tagged_tuple_addr_word_33 = add i64 %closure_addr_33, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_33
  store i64 %closure_tagged_tuple_addr_word_33, i64* %f2_42, align 4
  br label %let_6

let_6:                                            ; preds = %patch_let_rec_closures_5
  %x_64 = alloca i64, align 8
  store i64 2, i64* %x_64, align 4
  br label %let_7

let_7:                                            ; preds = %let_6
  %y_67 = alloca i64, align 8
  store i64 4, i64* %y_67, align 4
  br label %let_8

let_8:                                            ; preds = %let_7
  %z_70 = alloca i64, align 8
  store i64 6, i64* %z_70, align 4
  br label %function_call

function_call:                                    ; preds = %let_8
  %f1_265 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_265, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_26, label %call_error_func

is_closure_26:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %f1_265, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 4
  br i1 %13, label %is_correct_arity_26, label %call_error_func6

call_error_func:                                  ; preds = %function_call
  store i64 %f1_265, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_26:                              ; preds = %is_closure_26
  %x_648 = load i64, i64* %x_64, align 4
  %z_709 = load i64, i64* %z_70, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_265, i64 %x_648, i64 %z_709)
  br label %let_9

call_error_func6:                                 ; preds = %is_closure_26
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 17)
  unreachable

let_9:                                            ; preds = %is_correct_arity_26
  %app_73 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_73, align 4
  br label %let_10

let_10:                                           ; preds = %let_9
  %x_79 = alloca i64, align 8
  store i64 8, i64* %x_79, align 4
  br label %let_11

let_11:                                           ; preds = %let_10
  %y_82 = alloca i64, align 8
  store i64 22, i64* %y_82, align 4
  br label %function_call10

function_call10:                                  ; preds = %let_11
  %f2_4211 = load i64, i64* %f2_42, align 4
  %tag_bits_of_closure_of_func_to_call12 = and i64 %f2_4211, 7
  %is_closure_of_func_to_call_closure13 = icmp eq i64 %tag_bits_of_closure_of_func_to_call12, 5
  br i1 %is_closure_of_func_to_call_closure13, label %is_closure_20, label %call_error_func14

is_closure_20:                                    ; preds = %function_call10
  %untagged_closure_addr16 = sub i64 %f2_4211, 5
  %closure_ptr17 = inttoptr i64 %untagged_closure_addr16 to i64*
  %function_code_ptr_as_i6418 = load i64, i64* %closure_ptr17, align 4
  %function19 = inttoptr i64 %function_code_ptr_as_i6418 to i64 (i64, i64, i64)*
  %arity_ptr20 = getelementptr i64, i64* %closure_ptr17, i64 1
  %arity21 = load i64, i64* %arity_ptr20, align 4
  %14 = icmp eq i64 %arity21, 4
  br i1 %14, label %is_correct_arity_20, label %call_error_func22

call_error_func14:                                ; preds = %function_call10
  store i64 %f2_4211, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_20:                              ; preds = %is_closure_20
  %x_7924 = load i64, i64* %x_79, align 4
  %y_8225 = load i64, i64* %y_82, align 4
  %lambda_non_tail_call_result26 = call i64 %function19(i64 %f2_4211, i64 %x_7924, i64 %y_8225)
  br label %let_12

call_error_func22:                                ; preds = %is_closure_20
  store i64 %arity21, i64* @current_answer_ptr, align 4
  %error_call_return_val23 = call i64 @error_func(i64 17)
  unreachable

let_12:                                           ; preds = %is_correct_arity_20
  %app_86 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result26, i64* %app_86, align 4
  br label %times_17

times_17:                                         ; preds = %let_12
  %z_7027 = load i64, i64* %z_70, align 4
  %app_8628 = load i64, i64* %app_86, align 4
  %tag_bits_of_arg1 = and i64 %z_7027, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_17, label %call_error_func29

arg1_type_check_passed_17:                        ; preds = %times_17
  %tag_bits_of_arg2 = and i64 %app_8628, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_17, label %call_error_func31

call_error_func29:                                ; preds = %times_17
  store i64 %z_7027, i64* @current_answer_ptr, align 4
  %error_call_return_val30 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_17:                        ; preds = %arg1_type_check_passed_17
  %logical_shift_right = lshr i64 %z_7027, 1
  %times_snake_result_17 = mul i64 %logical_shift_right, %app_8628
  %div_res = sdiv i64 %times_snake_result_17, %z_7027
  %shl_adjusted = shl i64 %div_res, 1
  %is_overflow = icmp ne i64 %shl_adjusted, %app_8628
  %is_not_overflow = xor i1 %is_overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_17, label %call_error_func33

call_error_func31:                                ; preds = %arg1_type_check_passed_17
  store i64 %app_8628, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_17:                          ; preds = %arg2_type_check_passed_17
  %times_snake_result_1735 = phi i64 [ %times_snake_result_17, %arg2_type_check_passed_17 ]
  br label %let_13

call_error_func33:                                ; preds = %arg2_type_check_passed_17
  store i64 %times_snake_result_17, i64* @current_answer_ptr, align 4
  %error_call_return_val34 = call i64 @error_func(i64 5)
  unreachable

let_13:                                           ; preds = %continue_no_overflow_17
  %binop_84 = alloca i64, align 8
  store i64 %times_snake_result_1735, i64* %binop_84, align 4
  br label %plus_14

plus_14:                                          ; preds = %let_13
  %app_7336 = load i64, i64* %app_73, align 4
  %binop_8437 = load i64, i64* %binop_84, align 4
  %tag_bits_of_arg138 = and i64 %app_7336, 1
  %is_arg1_int39 = icmp eq i64 %tag_bits_of_arg138, 0
  br i1 %is_arg1_int39, label %arg1_type_check_passed_14, label %call_error_func40

arg1_type_check_passed_14:                        ; preds = %plus_14
  %tag_bits_of_arg242 = and i64 %binop_8437, 1
  %is_arg2_int43 = icmp eq i64 %tag_bits_of_arg242, 0
  br i1 %is_arg2_int43, label %arg2_type_check_passed_14, label %call_error_func44

call_error_func40:                                ; preds = %plus_14
  store i64 %app_7336, i64* @current_answer_ptr, align 4
  %error_call_return_val41 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_14:                        ; preds = %arg1_type_check_passed_14
  %plus_snake_result_14 = add i64 %app_7336, %binop_8437
  %r_ge_0 = icmp sge i64 %binop_8437, 0
  %l_ge_0 = icmp sge i64 %app_7336, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_14, %app_7336
  %sum_lt_r = icmp slt i64 %plus_snake_result_14, %binop_8437
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %binop_8437, 0
  %l_lt_046 = icmp slt i64 %app_7336, 0
  %negative_overflow = and i1 %l_lt_046, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_14, %app_7336
  %sum_gt_r = icmp sgt i64 %plus_snake_result_14, %binop_8437
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow47 = xor i1 %overflow, true
  br i1 %is_not_overflow47, label %continue_no_overflow_14, label %call_error_func48

call_error_func44:                                ; preds = %arg1_type_check_passed_14
  store i64 %binop_8437, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_14:                          ; preds = %arg2_type_check_passed_14
  %plus_snake_result_1450 = phi i64 [ %plus_snake_result_14, %arg2_type_check_passed_14 ]
  br label %result

call_error_func48:                                ; preds = %arg2_type_check_passed_14
  store i64 %plus_snake_result_14, i64* @current_answer_ptr, align 4
  %error_call_return_val49 = call i64 @error_func(i64 5)
  unreachable

result:                                           ; preds = %continue_no_overflow_14
  ret i64 %plus_snake_result_1450
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

define i64 @lambda_45_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %greater_55

return:                                           ; preds = %merge_then_else_47
  ret i64 %"if/else_snake_result_47"

greater_55:                                       ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_55, label %call_error_func

arg1_type_check_passed_55:                        ; preds = %greater_55
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_55, label %call_error_func1

call_error_func:                                  ; preds = %greater_55
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_55:                        ; preds = %arg1_type_check_passed_55
  %greater_llvm_result_55 = icmp sgt i64 %1, %2
  br i1 %greater_llvm_result_55, label %comp_is_true_55, label %comp_is_false_55

call_error_func1:                                 ; preds = %arg1_type_check_passed_55
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_55:                                  ; preds = %arg2_type_check_passed_55
  br label %merge_55

comp_is_false_55:                                 ; preds = %arg2_type_check_passed_55
  br label %merge_55

merge_55:                                         ; preds = %comp_is_false_55, %comp_is_true_55
  %greater_snake_result_55 = phi i64 [ -1, %comp_is_true_55 ], [ 9223372036854775807, %comp_is_false_55 ]
  br label %let_46

let_46:                                           ; preds = %merge_55
  %binop_29 = alloca i64, align 8
  store i64 %greater_snake_result_55, i64* %binop_29, align 4
  br label %if_else_47

if_else_47:                                       ; preds = %let_46
  %binop_293 = load i64, i64* %binop_29, align 4
  %tag_bits_of_cond_val = and i64 %binop_293, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_47, label %call_error_func4

continue_if_else_47:                              ; preds = %if_else_47
  %is_cond_true = icmp eq i64 %binop_293, -1
  br i1 %is_cond_true, label %then_47, label %else_47

call_error_func4:                                 ; preds = %if_else_47
  store i64 %binop_293, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_47:                                          ; preds = %continue_if_else_47
  br label %plus_51

else_47:                                          ; preds = %continue_if_else_47
  br label %plus_48

merge_then_else_47:                               ; preds = %continue_no_overflow_48, %continue_no_overflow_51
  %"if/else_snake_result_47" = phi i64 [ %plus_snake_result_5114, %continue_no_overflow_51 ], [ %plus_snake_result_4837, %continue_no_overflow_48 ]
  br label %return

plus_51:                                          ; preds = %then_47
  %tag_bits_of_arg16 = and i64 %1, 1
  %is_arg1_int7 = icmp eq i64 %tag_bits_of_arg16, 0
  br i1 %is_arg1_int7, label %arg1_type_check_passed_51, label %call_error_func8

arg1_type_check_passed_51:                        ; preds = %plus_51
  br i1 true, label %arg2_type_check_passed_51, label %call_error_func10

call_error_func8:                                 ; preds = %plus_51
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_51:                        ; preds = %arg1_type_check_passed_51
  %plus_snake_result_51 = add i64 %1, 2
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_51, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_51, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_51, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_51, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_51, label %call_error_func12

call_error_func10:                                ; preds = %arg1_type_check_passed_51
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_51:                          ; preds = %arg2_type_check_passed_51
  %plus_snake_result_5114 = phi i64 [ %plus_snake_result_51, %arg2_type_check_passed_51 ]
  br label %merge_then_else_47

call_error_func12:                                ; preds = %arg2_type_check_passed_51
  store i64 %plus_snake_result_51, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 5)
  unreachable

plus_48:                                          ; preds = %else_47
  %tag_bits_of_arg115 = and i64 %2, 1
  %is_arg1_int16 = icmp eq i64 %tag_bits_of_arg115, 0
  br i1 %is_arg1_int16, label %arg1_type_check_passed_48, label %call_error_func17

arg1_type_check_passed_48:                        ; preds = %plus_48
  br i1 true, label %arg2_type_check_passed_48, label %call_error_func19

call_error_func17:                                ; preds = %plus_48
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val18 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_48:                        ; preds = %arg1_type_check_passed_48
  %plus_snake_result_48 = add i64 %2, 2
  %l_ge_021 = icmp sge i64 %2, 0
  %positive_overflow22 = and i1 %l_ge_021, true
  %sum_lt_l23 = icmp slt i64 %plus_snake_result_48, %2
  %sum_lt_r24 = icmp slt i64 %plus_snake_result_48, 2
  %overflow_on_positive25 = or i1 %sum_lt_l23, %sum_lt_r24
  %l_lt_026 = icmp slt i64 %2, 0
  %negative_overflow27 = and i1 %l_lt_026, false
  %sum_gt_l28 = icmp sgt i64 %plus_snake_result_48, %2
  %sum_gt_r29 = icmp sgt i64 %plus_snake_result_48, 2
  %overflow_on_negative30 = or i1 %sum_gt_l28, %sum_gt_r29
  %negative_check31 = and i1 %negative_overflow27, %overflow_on_negative30
  %positive_check32 = and i1 %positive_overflow22, %overflow_on_positive25
  %overflow33 = or i1 %positive_check32, %negative_check31
  %is_not_overflow34 = xor i1 %overflow33, true
  br i1 %is_not_overflow34, label %continue_no_overflow_48, label %call_error_func35

call_error_func19:                                ; preds = %arg1_type_check_passed_48
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_48:                          ; preds = %arg2_type_check_passed_48
  %plus_snake_result_4837 = phi i64 [ %plus_snake_result_48, %arg2_type_check_passed_48 ]
  br label %merge_then_else_47

call_error_func35:                                ; preds = %arg2_type_check_passed_48
  store i64 %plus_snake_result_48, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_33_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %let_34

return:                                           ; preds = %continue_no_overflow_37
  ret i64 %minus_snake_result_3717

let_34:                                           ; preds = %lambda_body
  %x2_46 = alloca i64, align 8
  store i64 10, i64* %x2_46, align 4
  br label %let_35

let_35:                                           ; preds = %let_34
  %x3_52 = alloca i64, align 8
  store i64 6, i64* %x3_52, align 4
  br label %plus_40

plus_40:                                          ; preds = %let_35
  %tag_bits_of_arg1 = and i64 %2, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_40, label %call_error_func

arg1_type_check_passed_40:                        ; preds = %plus_40
  br i1 true, label %arg2_type_check_passed_40, label %call_error_func1

call_error_func:                                  ; preds = %plus_40
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_40:                        ; preds = %arg1_type_check_passed_40
  %plus_snake_result_40 = add i64 %2, 6
  %l_ge_0 = icmp sge i64 %2, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_40, %2
  %sum_lt_r = icmp slt i64 %plus_snake_result_40, 6
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_40, %2
  %sum_gt_r = icmp sgt i64 %plus_snake_result_40, 6
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_40, label %call_error_func3

call_error_func1:                                 ; preds = %arg1_type_check_passed_40
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_40:                          ; preds = %arg2_type_check_passed_40
  %plus_snake_result_405 = phi i64 [ %plus_snake_result_40, %arg2_type_check_passed_40 ]
  br label %let_36

call_error_func3:                                 ; preds = %arg2_type_check_passed_40
  store i64 %plus_snake_result_40, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 5)
  unreachable

let_36:                                           ; preds = %continue_no_overflow_40
  %y2_49 = alloca i64, align 8
  store i64 %plus_snake_result_405, i64* %y2_49, align 4
  br label %minus_37

minus_37:                                         ; preds = %let_36
  %y2_496 = load i64, i64* %y2_49, align 4
  %tag_bits_of_arg17 = and i64 %2, 1
  %is_arg1_int8 = icmp eq i64 %tag_bits_of_arg17, 0
  br i1 %is_arg1_int8, label %arg1_type_check_passed_37, label %call_error_func9

arg1_type_check_passed_37:                        ; preds = %minus_37
  %tag_bits_of_arg2 = and i64 %y2_496, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_37, label %call_error_func11

call_error_func9:                                 ; preds = %minus_37
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val10 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_37:                        ; preds = %arg1_type_check_passed_37
  %minus_snake_result_37 = sub i64 %2, %y2_496
  %x_sign = ashr i64 %2, 63
  %y_sign = ashr i64 %y2_496, 63
  %res_sign = ashr i64 %minus_snake_result_37, 63
  %x_sign_neq_y_sign = icmp ne i64 %x_sign, %y_sign
  %res_sign_neq_x_sign = icmp ne i64 %res_sign, %x_sign
  %overflow13 = and i1 %x_sign_neq_y_sign, %res_sign_neq_x_sign
  %is_not_overflow14 = xor i1 %overflow13, true
  br i1 %is_not_overflow14, label %continue_no_overflow_37, label %call_error_func15

call_error_func11:                                ; preds = %arg1_type_check_passed_37
  store i64 %y2_496, i64* @current_answer_ptr, align 4
  %error_call_return_val12 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_37:                          ; preds = %arg2_type_check_passed_37
  %minus_snake_result_3717 = phi i64 [ %minus_snake_result_37, %arg2_type_check_passed_37 ]
  br label %return

call_error_func15:                                ; preds = %arg2_type_check_passed_37
  store i64 %minus_snake_result_37, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 5)
  unreachable
}
