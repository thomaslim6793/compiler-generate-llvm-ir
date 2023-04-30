; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_55

create_lambda_closure_55:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_55 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_55, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_55, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_55, i32 0, i32 2
  store i64 (i64, i64)* @lambda_55_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_55 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_55 to i64
  %closure_tagged_tuple_addr_word_55 = add i64 %closure_addr_55, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_55
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_55, i64* %print_4, align 4
  br label %create_lambda_closure_52

create_lambda_closure_52:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_52 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_52, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_52, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_52, i32 0, i32 2
  store i64 (i64)* @lambda_52_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_52 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_52 to i64
  %closure_tagged_tuple_addr_word_52 = add i64 %closure_addr_52, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_52
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_52, i64* %input_11, align 4
  br label %create_lambda_closure_47

create_lambda_closure_47:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_47 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_47, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_47, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_47, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_47_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_47 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_47 to i64
  %closure_tagged_tuple_addr_word_47 = add i64 %closure_addr_47, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_47
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_47, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_28

create_lambda_closure_28:                         ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_28 = bitcast i8* %malloccall4 to { i64 (i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 2
  store i64 (i64, i64)* @lambda_28_, i64 (i64, i64)** %9, align 8
  store i64 2, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_28 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_28 to i64
  %closure_tagged_tuple_addr_word_28 = add i64 %closure_addr_28, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_28
  store i64 %closure_tagged_tuple_addr_word_28, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_28, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_43 = alloca i64, align 8
  br label %create_lambda_closure_9

create_lambda_closure_9:                          ; preds = %let_rec_5
  %f1_266 = load i64, i64* %f1_26, align 4
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_9 = bitcast i8* %malloccall7 to { i64 (i64, i64)*, i64, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_9, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_9, i32 0, i32 1
  %15 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_9, i32 0, i32 2
  store i64 (i64, i64)* @lambda_9_, i64 (i64, i64)** %13, align 8
  store i64 2, i64* %14, align 4
  store i64 %f1_266, i64* %15, align 4
  %closure_addr_9 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_9 to i64
  %closure_tagged_tuple_addr_word_9 = add i64 %closure_addr_9, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_9
  store i64 %closure_tagged_tuple_addr_word_9, i64* %f2_43, align 4
  %f1_268 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr9 = sub i64 %closure_tagged_tuple_addr_word_9, 5
  %closure_ptr10 = inttoptr i64 %untagged_closure_addr9 to i64*
  %16 = getelementptr i64, i64* %closure_ptr10, i64 2
  store i64 %f1_268, i64* %16, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f1_2611 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_2611, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_6, label %call_error_func

is_closure_6:                                     ; preds = %function_call
  %untagged_closure_addr12 = sub i64 %f1_2611, 5
  %closure_ptr13 = inttoptr i64 %untagged_closure_addr12 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr13, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr13, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 2
  br i1 %17, label %is_correct_arity_6, label %call_error_func14

call_error_func:                                  ; preds = %function_call
  store i64 %f1_2611, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_6:                               ; preds = %is_closure_6
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_2611, i64 10)
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

define i64 @lambda_55_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_56

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_56 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_52_(i64 %0) {
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
  ret i64 %input_tail_call_result_53

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_53 = tail call i64 @input()
  br label %return
}

define i64 @lambda_47_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_48

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_48 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_28_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %less_44

return:                                           ; preds = %merge_then_else_30
  ret i64 %"if/else_snake_result_30"

less_44:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_44, label %call_error_func

arg1_type_check_passed_44:                        ; preds = %less_44
  br i1 true, label %arg2_type_check_passed_44, label %call_error_func1

call_error_func:                                  ; preds = %less_44
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_44:                        ; preds = %arg1_type_check_passed_44
  %less_llvm_result_44 = icmp slt i64 %1, 2
  br i1 %less_llvm_result_44, label %comp_is_true_44, label %comp_is_false_44

call_error_func1:                                 ; preds = %arg1_type_check_passed_44
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_44:                                  ; preds = %arg2_type_check_passed_44
  br label %merge_44

comp_is_false_44:                                 ; preds = %arg2_type_check_passed_44
  br label %merge_44

merge_44:                                         ; preds = %comp_is_false_44, %comp_is_true_44
  %less_snake_result_44 = phi i64 [ -1, %comp_is_true_44 ], [ 9223372036854775807, %comp_is_false_44 ]
  br label %let_29

let_29:                                           ; preds = %merge_44
  %binop_29 = alloca i64, align 8
  store i64 %less_snake_result_44, i64* %binop_29, align 4
  br label %if_else_30

if_else_30:                                       ; preds = %let_29
  %binop_293 = load i64, i64* %binop_29, align 4
  %tag_bits_of_cond_val = and i64 %binop_293, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_30, label %call_error_func4

continue_if_else_30:                              ; preds = %if_else_30
  %is_cond_true = icmp eq i64 %binop_293, -1
  br i1 %is_cond_true, label %then_30, label %else_30

call_error_func4:                                 ; preds = %if_else_30
  store i64 %binop_293, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_30:                                          ; preds = %continue_if_else_30
  br label %merge_then_else_30

else_30:                                          ; preds = %continue_if_else_30
  br label %minus_39

merge_then_else_30:                               ; preds = %continue_no_overflow_33, %then_30
  %"if/else_snake_result_30" = phi i64 [ 2, %then_30 ], [ %times_snake_result_3332, %continue_no_overflow_33 ]
  br label %return

minus_39:                                         ; preds = %else_30
  %tag_bits_of_arg16 = and i64 %1, 1
  %is_arg1_int7 = icmp eq i64 %tag_bits_of_arg16, 0
  br i1 %is_arg1_int7, label %arg1_type_check_passed_39, label %call_error_func8

arg1_type_check_passed_39:                        ; preds = %minus_39
  br i1 true, label %arg2_type_check_passed_39, label %call_error_func10

call_error_func8:                                 ; preds = %minus_39
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_39:                        ; preds = %arg1_type_check_passed_39
  %minus_snake_result_39 = sub i64 %1, 2
  %x_sign = ashr i64 %1, 63
  %res_sign = ashr i64 %minus_snake_result_39, 63
  %x_sign_neq_y_sign = icmp ne i64 %x_sign, 0
  %res_sign_neq_x_sign = icmp ne i64 %res_sign, %x_sign
  %overflow = and i1 %x_sign_neq_y_sign, %res_sign_neq_x_sign
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_39, label %call_error_func12

call_error_func10:                                ; preds = %arg1_type_check_passed_39
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_39:                          ; preds = %arg2_type_check_passed_39
  %minus_snake_result_3914 = phi i64 [ %minus_snake_result_39, %arg2_type_check_passed_39 ]
  br label %let_31

call_error_func12:                                ; preds = %arg2_type_check_passed_39
  store i64 %minus_snake_result_39, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 5)
  unreachable

let_31:                                           ; preds = %continue_no_overflow_39
  %binop_35 = alloca i64, align 8
  store i64 %minus_snake_result_3914, i64* %binop_35, align 4
  br label %function_call

function_call:                                    ; preds = %let_31
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_36, label %call_error_func15

is_closure_36:                                    ; preds = %function_call
  %untagged_closure_addr17 = sub i64 %f1_26, 5
  %closure_ptr18 = inttoptr i64 %untagged_closure_addr17 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr18, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr18, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %2 = icmp eq i64 %arity, 2
  br i1 %2, label %is_correct_arity_36, label %call_error_func19

call_error_func15:                                ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_36:                              ; preds = %is_closure_36
  %binop_3521 = load i64, i64* %binop_35, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_26, i64 %binop_3521)
  br label %let_32

call_error_func19:                                ; preds = %is_closure_36
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 17)
  unreachable

let_32:                                           ; preds = %is_correct_arity_36
  %app_34 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_34, align 4
  br label %times_33

times_33:                                         ; preds = %let_32
  %app_3422 = load i64, i64* %app_34, align 4
  %tag_bits_of_arg123 = and i64 %app_3422, 1
  %is_arg1_int24 = icmp eq i64 %tag_bits_of_arg123, 0
  br i1 %is_arg1_int24, label %arg1_type_check_passed_33, label %call_error_func25

arg1_type_check_passed_33:                        ; preds = %times_33
  br i1 true, label %arg2_type_check_passed_33, label %call_error_func27

call_error_func25:                                ; preds = %times_33
  store i64 %app_3422, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_33:                        ; preds = %arg1_type_check_passed_33
  %logical_shift_right = lshr i64 %app_3422, 1
  %times_snake_result_33 = mul i64 %logical_shift_right, 4
  %div_res = sdiv i64 %times_snake_result_33, %app_3422
  %shl_adjusted = shl i64 %div_res, 1
  %is_overflow = icmp ne i64 %shl_adjusted, 4
  %is_not_overflow29 = xor i1 %is_overflow, true
  br i1 %is_not_overflow29, label %continue_no_overflow_33, label %call_error_func30

call_error_func27:                                ; preds = %arg1_type_check_passed_33
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val28 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_33:                          ; preds = %arg2_type_check_passed_33
  %times_snake_result_3332 = phi i64 [ %times_snake_result_33, %arg2_type_check_passed_33 ]
  br label %merge_then_else_30

call_error_func30:                                ; preds = %arg2_type_check_passed_33
  store i64 %times_snake_result_33, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_9_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %less_25

return:                                           ; preds = %merge_then_else_11
  ret i64 %"if/else_snake_result_11"

less_25:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_25, label %call_error_func

arg1_type_check_passed_25:                        ; preds = %less_25
  br i1 true, label %arg2_type_check_passed_25, label %call_error_func1

call_error_func:                                  ; preds = %less_25
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_25:                        ; preds = %arg1_type_check_passed_25
  %less_llvm_result_25 = icmp slt i64 %1, 2
  br i1 %less_llvm_result_25, label %comp_is_true_25, label %comp_is_false_25

call_error_func1:                                 ; preds = %arg1_type_check_passed_25
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_25:                                  ; preds = %arg2_type_check_passed_25
  br label %merge_25

comp_is_false_25:                                 ; preds = %arg2_type_check_passed_25
  br label %merge_25

merge_25:                                         ; preds = %comp_is_false_25, %comp_is_true_25
  %less_snake_result_25 = phi i64 [ -1, %comp_is_true_25 ], [ 9223372036854775807, %comp_is_false_25 ]
  br label %let_10

let_10:                                           ; preds = %merge_25
  %binop_46 = alloca i64, align 8
  store i64 %less_snake_result_25, i64* %binop_46, align 4
  br label %if_else_11

if_else_11:                                       ; preds = %let_10
  %binop_463 = load i64, i64* %binop_46, align 4
  %tag_bits_of_cond_val = and i64 %binop_463, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_11, label %call_error_func4

continue_if_else_11:                              ; preds = %if_else_11
  %is_cond_true = icmp eq i64 %binop_463, -1
  br i1 %is_cond_true, label %then_11, label %else_11

call_error_func4:                                 ; preds = %if_else_11
  store i64 %binop_463, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_11:                                          ; preds = %continue_if_else_11
  br label %merge_then_else_11

else_11:                                          ; preds = %continue_if_else_11
  br label %minus_20

merge_then_else_11:                               ; preds = %continue_no_overflow_14, %then_11
  %"if/else_snake_result_11" = phi i64 [ 2, %then_11 ], [ %plus_snake_result_1433, %continue_no_overflow_14 ]
  br label %return

minus_20:                                         ; preds = %else_11
  %tag_bits_of_arg16 = and i64 %1, 1
  %is_arg1_int7 = icmp eq i64 %tag_bits_of_arg16, 0
  br i1 %is_arg1_int7, label %arg1_type_check_passed_20, label %call_error_func8

arg1_type_check_passed_20:                        ; preds = %minus_20
  br i1 true, label %arg2_type_check_passed_20, label %call_error_func10

call_error_func8:                                 ; preds = %minus_20
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_20:                        ; preds = %arg1_type_check_passed_20
  %minus_snake_result_20 = sub i64 %1, 2
  %x_sign = ashr i64 %1, 63
  %res_sign = ashr i64 %minus_snake_result_20, 63
  %x_sign_neq_y_sign = icmp ne i64 %x_sign, 0
  %res_sign_neq_x_sign = icmp ne i64 %res_sign, %x_sign
  %overflow = and i1 %x_sign_neq_y_sign, %res_sign_neq_x_sign
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_20, label %call_error_func12

call_error_func10:                                ; preds = %arg1_type_check_passed_20
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_20:                          ; preds = %arg2_type_check_passed_20
  %minus_snake_result_2014 = phi i64 [ %minus_snake_result_20, %arg2_type_check_passed_20 ]
  br label %let_12

call_error_func12:                                ; preds = %arg2_type_check_passed_20
  store i64 %minus_snake_result_20, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 5)
  unreachable

let_12:                                           ; preds = %continue_no_overflow_20
  %binop_52 = alloca i64, align 8
  store i64 %minus_snake_result_2014, i64* %binop_52, align 4
  br label %function_call

function_call:                                    ; preds = %let_12
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_17, label %call_error_func15

is_closure_17:                                    ; preds = %function_call
  %untagged_closure_addr17 = sub i64 %f1_26, 5
  %closure_ptr18 = inttoptr i64 %untagged_closure_addr17 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr18, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr18, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %2 = icmp eq i64 %arity, 2
  br i1 %2, label %is_correct_arity_17, label %call_error_func19

call_error_func15:                                ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_17:                              ; preds = %is_closure_17
  %binop_5221 = load i64, i64* %binop_52, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_26, i64 %binop_5221)
  br label %let_13

call_error_func19:                                ; preds = %is_closure_17
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 17)
  unreachable

let_13:                                           ; preds = %is_correct_arity_17
  %app_51 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_51, align 4
  br label %plus_14

plus_14:                                          ; preds = %let_13
  %app_5122 = load i64, i64* %app_51, align 4
  %tag_bits_of_arg123 = and i64 %app_5122, 1
  %is_arg1_int24 = icmp eq i64 %tag_bits_of_arg123, 0
  br i1 %is_arg1_int24, label %arg1_type_check_passed_14, label %call_error_func25

arg1_type_check_passed_14:                        ; preds = %plus_14
  br i1 true, label %arg2_type_check_passed_14, label %call_error_func27

call_error_func25:                                ; preds = %plus_14
  store i64 %app_5122, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_14:                        ; preds = %arg1_type_check_passed_14
  %plus_snake_result_14 = add i64 %app_5122, 2
  %l_ge_0 = icmp sge i64 %app_5122, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_14, %app_5122
  %sum_lt_r = icmp slt i64 %plus_snake_result_14, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %app_5122, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_14, %app_5122
  %sum_gt_r = icmp sgt i64 %plus_snake_result_14, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow29 = or i1 %positive_check, %negative_check
  %is_not_overflow30 = xor i1 %overflow29, true
  br i1 %is_not_overflow30, label %continue_no_overflow_14, label %call_error_func31

call_error_func27:                                ; preds = %arg1_type_check_passed_14
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val28 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_14:                          ; preds = %arg2_type_check_passed_14
  %plus_snake_result_1433 = phi i64 [ %plus_snake_result_14, %arg2_type_check_passed_14 ]
  br label %merge_then_else_11

call_error_func31:                                ; preds = %arg2_type_check_passed_14
  store i64 %plus_snake_result_14, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 5)
  unreachable
}
