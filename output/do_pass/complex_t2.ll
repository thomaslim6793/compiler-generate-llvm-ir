; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_56

create_lambda_closure_56:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_56 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_56, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_56, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_56, i32 0, i32 2
  store i64 (i64, i64)* @lambda_56_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_56 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_56 to i64
  %closure_tagged_tuple_addr_word_56 = add i64 %closure_addr_56, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_56
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_56, i64* %print_4, align 4
  br label %create_lambda_closure_53

create_lambda_closure_53:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_53 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_53, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_53, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_53, i32 0, i32 2
  store i64 (i64)* @lambda_53_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_53 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_53 to i64
  %closure_tagged_tuple_addr_word_53 = add i64 %closure_addr_53, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_53
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_53, i64* %input_11, align 4
  br label %create_lambda_closure_48

create_lambda_closure_48:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_48 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_48, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_48, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_48, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_48_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_48 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_48 to i64
  %closure_tagged_tuple_addr_word_48 = add i64 %closure_addr_48, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_48
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_48, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_29

create_lambda_closure_29:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_29 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_29, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_29, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_29_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  %closure_addr_29 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_29 to i64
  %closure_tagged_tuple_addr_word_29 = add i64 %closure_addr_29, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_29
  store i64 %closure_tagged_tuple_addr_word_29, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_52 = alloca i64, align 8
  br label %create_lambda_closure_13

create_lambda_closure_13:                         ; preds = %let_rec_5
  %f1_264 = load i64, i64* %f1_26, align 4
  %f2_525 = load i64, i64* %f2_52, align 4
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64, i64 }, { i64 (i64, i64)*, i64, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_13 = bitcast i8* %malloccall6 to { i64 (i64, i64)*, i64, i64, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64)*, i64, i64, i64 }, { i64 (i64, i64)*, i64, i64, i64 }* %closure_ptr_13, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64)*, i64, i64, i64 }, { i64 (i64, i64)*, i64, i64, i64 }* %closure_ptr_13, i32 0, i32 1
  %13 = getelementptr inbounds { i64 (i64, i64)*, i64, i64, i64 }, { i64 (i64, i64)*, i64, i64, i64 }* %closure_ptr_13, i32 0, i32 2
  %14 = getelementptr inbounds { i64 (i64, i64)*, i64, i64, i64 }, { i64 (i64, i64)*, i64, i64, i64 }* %closure_ptr_13, i32 0, i32 3
  store i64 (i64, i64)* @lambda_13_, i64 (i64, i64)** %11, align 8
  store i64 2, i64* %12, align 4
  store i64 %f1_264, i64* %13, align 4
  store i64 %f2_525, i64* %14, align 4
  %closure_addr_13 = ptrtoint { i64 (i64, i64)*, i64, i64, i64 }* %closure_ptr_13 to i64
  %closure_tagged_tuple_addr_word_13 = add i64 %closure_addr_13, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_13
  store i64 %closure_tagged_tuple_addr_word_13, i64* %f2_52, align 4
  %f1_267 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_13, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %15 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_267, i64* %15, align 4
  %f2_528 = load i64, i64* %f2_52, align 4
  %untagged_closure_addr9 = sub i64 %closure_tagged_tuple_addr_word_13, 5
  %closure_ptr10 = inttoptr i64 %untagged_closure_addr9 to i64*
  %16 = getelementptr i64, i64* %closure_ptr10, i64 3
  store i64 %f2_528, i64* %16, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f2_5211 = load i64, i64* %f2_52, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f2_5211, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_10, label %call_error_func

is_closure_10:                                    ; preds = %function_call
  %untagged_closure_addr12 = sub i64 %f2_5211, 5
  %closure_ptr13 = inttoptr i64 %untagged_closure_addr12 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr13, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr13, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 2
  br i1 %17, label %is_correct_arity_10, label %call_error_func14

call_error_func:                                  ; preds = %function_call
  store i64 %f2_5211, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_10:                              ; preds = %is_closure_10
  %lambda_non_tail_call_result = call i64 %function(i64 %f2_5211, i64 2)
  br label %let_6

call_error_func14:                                ; preds = %is_closure_10
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 17)
  unreachable

let_6:                                            ; preds = %is_correct_arity_10
  %app_67 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_67, align 4
  br label %function_call16

function_call16:                                  ; preds = %let_6
  %f2_5217 = load i64, i64* %f2_52, align 4
  %tag_bits_of_closure_of_func_to_call18 = and i64 %f2_5217, 7
  %is_closure_of_func_to_call_closure19 = icmp eq i64 %tag_bits_of_closure_of_func_to_call18, 5
  br i1 %is_closure_of_func_to_call_closure19, label %is_closure_7, label %call_error_func20

is_closure_7:                                     ; preds = %function_call16
  %untagged_closure_addr22 = sub i64 %f2_5217, 5
  %closure_ptr23 = inttoptr i64 %untagged_closure_addr22 to i64*
  %function_code_ptr_as_i6424 = load i64, i64* %closure_ptr23, align 4
  %function25 = inttoptr i64 %function_code_ptr_as_i6424 to i64 (i64, i64)*
  %arity_ptr26 = getelementptr i64, i64* %closure_ptr23, i64 1
  %arity27 = load i64, i64* %arity_ptr26, align 4
  %18 = icmp eq i64 %arity27, 2
  br i1 %18, label %is_correct_arity_7, label %call_error_func28

call_error_func20:                                ; preds = %function_call16
  store i64 %f2_5217, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_7:                               ; preds = %is_closure_7
  %app_6730 = load i64, i64* %app_67, align 4
  %lambda_tail_call_result = tail call i64 %function25(i64 %f2_5217, i64 %app_6730)
  br label %result

call_error_func28:                                ; preds = %is_closure_7
  store i64 %arity27, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 17)
  unreachable

result:                                           ; preds = %is_correct_arity_7
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

define i64 @lambda_56_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_57

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_57 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_53_(i64 %0) {
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
  ret i64 %input_tail_call_result_54

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_54 = tail call i64 @input()
  br label %return
}

define i64 @lambda_48_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_49

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_49 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_29_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %greater_eq_45

return:                                           ; preds = %merge_then_else_31
  ret i64 %"if/else_snake_result_31"

greater_eq_45:                                    ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_45, label %call_error_func

arg1_type_check_passed_45:                        ; preds = %greater_eq_45
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_45, label %call_error_func1

call_error_func:                                  ; preds = %greater_eq_45
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_45:                        ; preds = %arg1_type_check_passed_45
  %greater_eq_llvm_result_45 = icmp sge i64 %1, %2
  br i1 %greater_eq_llvm_result_45, label %comp_is_true_45, label %comp_is_false_45

call_error_func1:                                 ; preds = %arg1_type_check_passed_45
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_45:                                  ; preds = %arg2_type_check_passed_45
  br label %merge_45

comp_is_false_45:                                 ; preds = %arg2_type_check_passed_45
  br label %merge_45

merge_45:                                         ; preds = %comp_is_false_45, %comp_is_true_45
  %greater_eq_snake_result_45 = phi i64 [ -1, %comp_is_true_45 ], [ 9223372036854775807, %comp_is_false_45 ]
  br label %let_30

let_30:                                           ; preds = %merge_45
  %binop_29 = alloca i64, align 8
  store i64 %greater_eq_snake_result_45, i64* %binop_29, align 4
  br label %if_else_31

if_else_31:                                       ; preds = %let_30
  %binop_293 = load i64, i64* %binop_29, align 4
  %tag_bits_of_cond_val = and i64 %binop_293, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_31, label %call_error_func4

continue_if_else_31:                              ; preds = %if_else_31
  %is_cond_true = icmp eq i64 %binop_293, -1
  br i1 %is_cond_true, label %then_31, label %else_31

call_error_func4:                                 ; preds = %if_else_31
  store i64 %binop_293, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_31:                                          ; preds = %continue_if_else_31
  br label %times_41

else_31:                                          ; preds = %continue_if_else_31
  br label %merge_then_else_31

merge_then_else_31:                               ; preds = %else_31, %continue_no_overflow_35
  %"if/else_snake_result_31" = phi i64 [ %times_snake_result_3547, %continue_no_overflow_35 ], [ 9223372036854775807, %else_31 ]
  br label %return

times_41:                                         ; preds = %then_31
  %tag_bits_of_arg16 = and i64 %2, 1
  %is_arg1_int7 = icmp eq i64 %tag_bits_of_arg16, 0
  br i1 %is_arg1_int7, label %arg1_type_check_passed_41, label %call_error_func8

arg1_type_check_passed_41:                        ; preds = %times_41
  %tag_bits_of_arg210 = and i64 %1, 1
  %is_arg2_int11 = icmp eq i64 %tag_bits_of_arg210, 0
  br i1 %is_arg2_int11, label %arg2_type_check_passed_41, label %call_error_func12

call_error_func8:                                 ; preds = %times_41
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_41:                        ; preds = %arg1_type_check_passed_41
  %logical_shift_right = lshr i64 %2, 1
  %times_snake_result_41 = mul i64 %logical_shift_right, %1
  %div_res = sdiv i64 %times_snake_result_41, %2
  %shl_adjusted = shl i64 %div_res, 1
  %is_overflow = icmp ne i64 %shl_adjusted, %1
  %is_not_overflow = xor i1 %is_overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_41, label %call_error_func14

call_error_func12:                                ; preds = %arg1_type_check_passed_41
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_41:                          ; preds = %arg2_type_check_passed_41
  %times_snake_result_4116 = phi i64 [ %times_snake_result_41, %arg2_type_check_passed_41 ]
  br label %let_33

call_error_func14:                                ; preds = %arg2_type_check_passed_41
  store i64 %times_snake_result_41, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 5)
  unreachable

let_33:                                           ; preds = %continue_no_overflow_41
  %x1_34 = alloca i64, align 8
  store i64 %times_snake_result_4116, i64* %x1_34, align 4
  br label %plus_38

plus_38:                                          ; preds = %let_33
  %tag_bits_of_arg117 = and i64 %1, 1
  %is_arg1_int18 = icmp eq i64 %tag_bits_of_arg117, 0
  br i1 %is_arg1_int18, label %arg1_type_check_passed_38, label %call_error_func19

arg1_type_check_passed_38:                        ; preds = %plus_38
  %tag_bits_of_arg221 = and i64 %2, 1
  %is_arg2_int22 = icmp eq i64 %tag_bits_of_arg221, 0
  br i1 %is_arg2_int22, label %arg2_type_check_passed_38, label %call_error_func23

call_error_func19:                                ; preds = %plus_38
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 2)
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
  %l_lt_025 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_025, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_38, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_38, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow26 = xor i1 %overflow, true
  br i1 %is_not_overflow26, label %continue_no_overflow_38, label %call_error_func27

call_error_func23:                                ; preds = %arg1_type_check_passed_38
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_38:                          ; preds = %arg2_type_check_passed_38
  %plus_snake_result_3829 = phi i64 [ %plus_snake_result_38, %arg2_type_check_passed_38 ]
  br label %let_34

call_error_func27:                                ; preds = %arg2_type_check_passed_38
  store i64 %plus_snake_result_38, i64* @current_answer_ptr, align 4
  %error_call_return_val28 = call i64 @error_func(i64 5)
  unreachable

let_34:                                           ; preds = %continue_no_overflow_38
  %x2_40 = alloca i64, align 8
  store i64 %plus_snake_result_3829, i64* %x2_40, align 4
  br label %times_35

times_35:                                         ; preds = %let_34
  %x1_3430 = load i64, i64* %x1_34, align 4
  %x2_4031 = load i64, i64* %x2_40, align 4
  %tag_bits_of_arg132 = and i64 %x1_3430, 1
  %is_arg1_int33 = icmp eq i64 %tag_bits_of_arg132, 0
  br i1 %is_arg1_int33, label %arg1_type_check_passed_35, label %call_error_func34

arg1_type_check_passed_35:                        ; preds = %times_35
  %tag_bits_of_arg236 = and i64 %x2_4031, 1
  %is_arg2_int37 = icmp eq i64 %tag_bits_of_arg236, 0
  br i1 %is_arg2_int37, label %arg2_type_check_passed_35, label %call_error_func38

call_error_func34:                                ; preds = %times_35
  store i64 %x1_3430, i64* @current_answer_ptr, align 4
  %error_call_return_val35 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_35:                        ; preds = %arg1_type_check_passed_35
  %logical_shift_right40 = lshr i64 %x1_3430, 1
  %times_snake_result_35 = mul i64 %logical_shift_right40, %x2_4031
  %div_res41 = sdiv i64 %times_snake_result_35, %x1_3430
  %shl_adjusted42 = shl i64 %div_res41, 1
  %is_overflow43 = icmp ne i64 %shl_adjusted42, %x2_4031
  %is_not_overflow44 = xor i1 %is_overflow43, true
  br i1 %is_not_overflow44, label %continue_no_overflow_35, label %call_error_func45

call_error_func38:                                ; preds = %arg1_type_check_passed_35
  store i64 %x2_4031, i64* @current_answer_ptr, align 4
  %error_call_return_val39 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_35:                          ; preds = %arg2_type_check_passed_35
  %times_snake_result_3547 = phi i64 [ %times_snake_result_35, %arg2_type_check_passed_35 ]
  br label %merge_then_else_31

call_error_func45:                                ; preds = %arg2_type_check_passed_35
  store i64 %times_snake_result_35, i64* @current_answer_ptr, align 4
  %error_call_return_val46 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_13_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  %"free_var_'f2_52'_ptr" = getelementptr i64, i64* %closure_ptr, i64 3
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %greater_26

return:                                           ; preds = %merge_then_else_15
  ret i64 %"if/else_snake_result_15"

greater_26:                                       ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_26, label %call_error_func

arg1_type_check_passed_26:                        ; preds = %greater_26
  br i1 true, label %arg2_type_check_passed_26, label %call_error_func1

call_error_func:                                  ; preds = %greater_26
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_26:                        ; preds = %arg1_type_check_passed_26
  %greater_llvm_result_26 = icmp sgt i64 %1, 1000
  br i1 %greater_llvm_result_26, label %comp_is_true_26, label %comp_is_false_26

call_error_func1:                                 ; preds = %arg1_type_check_passed_26
  store i64 1000, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_26:                                  ; preds = %arg2_type_check_passed_26
  br label %merge_26

comp_is_false_26:                                 ; preds = %arg2_type_check_passed_26
  br label %merge_26

merge_26:                                         ; preds = %comp_is_false_26, %comp_is_true_26
  %greater_snake_result_26 = phi i64 [ -1, %comp_is_true_26 ], [ 9223372036854775807, %comp_is_false_26 ]
  br label %let_14

let_14:                                           ; preds = %merge_26
  %binop_55 = alloca i64, align 8
  store i64 %greater_snake_result_26, i64* %binop_55, align 4
  br label %if_else_15

if_else_15:                                       ; preds = %let_14
  %binop_553 = load i64, i64* %binop_55, align 4
  %tag_bits_of_cond_val = and i64 %binop_553, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_15, label %call_error_func4

continue_if_else_15:                              ; preds = %if_else_15
  %is_cond_true = icmp eq i64 %binop_553, -1
  br i1 %is_cond_true, label %then_15, label %else_15

call_error_func4:                                 ; preds = %if_else_15
  store i64 %binop_553, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_15:                                          ; preds = %continue_if_else_15
  br label %merge_then_else_15

else_15:                                          ; preds = %continue_if_else_15
  br label %function_call

merge_then_else_15:                               ; preds = %is_correct_arity_17, %then_15
  %"if/else_snake_result_15" = phi i64 [ %1, %then_15 ], [ %lambda_tail_call_result, %is_correct_arity_17 ]
  br label %return

function_call:                                    ; preds = %else_15
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_20, label %call_error_func6

is_closure_20:                                    ; preds = %function_call
  %untagged_closure_addr8 = sub i64 %f1_26, 5
  %closure_ptr9 = inttoptr i64 %untagged_closure_addr8 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr9, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr9, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %2 = icmp eq i64 %arity, 4
  br i1 %2, label %is_correct_arity_20, label %call_error_func10

call_error_func6:                                 ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_20:                              ; preds = %is_closure_20
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_26, i64 %1, i64 %1)
  br label %let_16

call_error_func10:                                ; preds = %is_closure_20
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 17)
  unreachable

let_16:                                           ; preds = %is_correct_arity_20
  %app_60 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_60, align 4
  br label %function_call12

function_call12:                                  ; preds = %let_16
  %f2_52 = load i64, i64* %"free_var_'f2_52'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call13 = and i64 %f2_52, 7
  %is_closure_of_func_to_call_closure14 = icmp eq i64 %tag_bits_of_closure_of_func_to_call13, 5
  br i1 %is_closure_of_func_to_call_closure14, label %is_closure_17, label %call_error_func15

is_closure_17:                                    ; preds = %function_call12
  %untagged_closure_addr17 = sub i64 %f2_52, 5
  %closure_ptr18 = inttoptr i64 %untagged_closure_addr17 to i64*
  %function_code_ptr_as_i6419 = load i64, i64* %closure_ptr18, align 4
  %function20 = inttoptr i64 %function_code_ptr_as_i6419 to i64 (i64, i64)*
  %arity_ptr21 = getelementptr i64, i64* %closure_ptr18, i64 1
  %arity22 = load i64, i64* %arity_ptr21, align 4
  %3 = icmp eq i64 %arity22, 2
  br i1 %3, label %is_correct_arity_17, label %call_error_func23

call_error_func15:                                ; preds = %function_call12
  store i64 %f2_52, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_17:                              ; preds = %is_closure_17
  %app_6025 = load i64, i64* %app_60, align 4
  %lambda_tail_call_result = tail call i64 %function20(i64 %f2_52, i64 %app_6025)
  br label %merge_then_else_15

call_error_func23:                                ; preds = %is_closure_17
  store i64 %arity22, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 17)
  unreachable
}
