; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_67

create_lambda_closure_67:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_67 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_67, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_67, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_67, i32 0, i32 2
  store i64 (i64, i64)* @lambda_67_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_67 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_67 to i64
  %closure_tagged_tuple_addr_word_67 = add i64 %closure_addr_67, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_67
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_67, i64* %print_4, align 4
  br label %create_lambda_closure_64

create_lambda_closure_64:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_64 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_64, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_64, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_64, i32 0, i32 2
  store i64 (i64)* @lambda_64_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_64 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_64 to i64
  %closure_tagged_tuple_addr_word_64 = add i64 %closure_addr_64, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_64
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_64, i64* %input_11, align 4
  br label %create_lambda_closure_59

create_lambda_closure_59:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_59 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_59, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_59, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_59, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_59_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_59 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_59 to i64
  %closure_tagged_tuple_addr_word_59 = add i64 %closure_addr_59, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_59
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_59, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_25

create_lambda_closure_25:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_25 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_25, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_25, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_25_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  %closure_addr_25 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_25 to i64
  %closure_tagged_tuple_addr_word_25 = add i64 %closure_addr_25, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_25
  store i64 %closure_tagged_tuple_addr_word_25, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_57 = alloca i64, align 8
  br label %create_lambda_closure_15

create_lambda_closure_15:                         ; preds = %let_rec_5
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_15 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_15, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_15, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_15_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  %closure_addr_15 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_15 to i64
  %closure_tagged_tuple_addr_word_15 = add i64 %closure_addr_15, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_15
  store i64 %closure_tagged_tuple_addr_word_15, i64* %f2_57, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f1_265 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_265, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_11, label %call_error_func

is_closure_11:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %f1_265, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 4
  br i1 %13, label %is_correct_arity_11, label %call_error_func6

call_error_func:                                  ; preds = %function_call
  store i64 %f1_265, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_11:                              ; preds = %is_closure_11
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_265, i64 -1, i64 8)
  br label %let_6

call_error_func6:                                 ; preds = %is_closure_11
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 17)
  unreachable

let_6:                                            ; preds = %is_correct_arity_11
  %app_69 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_69, align 4
  br label %function_call8

function_call8:                                   ; preds = %let_6
  %f2_579 = load i64, i64* %f2_57, align 4
  %tag_bits_of_closure_of_func_to_call10 = and i64 %f2_579, 7
  %is_closure_of_func_to_call_closure11 = icmp eq i64 %tag_bits_of_closure_of_func_to_call10, 5
  br i1 %is_closure_of_func_to_call_closure11, label %is_closure_7, label %call_error_func12

is_closure_7:                                     ; preds = %function_call8
  %untagged_closure_addr14 = sub i64 %f2_579, 5
  %closure_ptr15 = inttoptr i64 %untagged_closure_addr14 to i64*
  %function_code_ptr_as_i6416 = load i64, i64* %closure_ptr15, align 4
  %function17 = inttoptr i64 %function_code_ptr_as_i6416 to i64 (i64, i64, i64)*
  %arity_ptr18 = getelementptr i64, i64* %closure_ptr15, i64 1
  %arity19 = load i64, i64* %arity_ptr18, align 4
  %14 = icmp eq i64 %arity19, 4
  br i1 %14, label %is_correct_arity_7, label %call_error_func20

call_error_func12:                                ; preds = %function_call8
  store i64 %f2_579, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_7:                               ; preds = %is_closure_7
  %app_6922 = load i64, i64* %app_69, align 4
  %lambda_tail_call_result = tail call i64 %function17(i64 %f2_579, i64 %app_6922, i64 10)
  br label %result

call_error_func20:                                ; preds = %is_closure_7
  store i64 %arity19, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 17)
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

define i64 @lambda_67_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_68

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_68 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_64_(i64 %0) {
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
  ret i64 %input_tail_call_result_65

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_65 = tail call i64 @input()
  br label %return
}

define i64 @lambda_59_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_60

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_60 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_25_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %logical_not_57

return:                                           ; preds = %merge_then_else_31
  ret i64 %"if/else_snake_result_31"

logical_not_57:                                   ; preds = %lambda_body
  %tag_bits_of_arg = and i64 %1, 7
  %is_arg_bool = icmp eq i64 %tag_bits_of_arg, 7
  br i1 %is_arg_bool, label %continue_logical_not_57, label %call_error_func

continue_logical_not_57:                          ; preds = %logical_not_57
  %logical_not_snake_result_57 = xor i64 %1, -9223372036854775808
  br label %let_26

call_error_func:                                  ; preds = %logical_not_57
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 3)
  unreachable

let_26:                                           ; preds = %continue_logical_not_57
  %unary_32 = alloca i64, align 8
  store i64 %logical_not_snake_result_57, i64* %unary_32, align 4
  br label %if_else_45

if_else_45:                                       ; preds = %let_26
  %unary_321 = load i64, i64* %unary_32, align 4
  %tag_bits_of_cond_val = and i64 %unary_321, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_45, label %call_error_func2

continue_if_else_45:                              ; preds = %if_else_45
  %is_cond_true = icmp eq i64 %unary_321, -1
  br i1 %is_cond_true, label %then_45, label %else_45

call_error_func2:                                 ; preds = %if_else_45
  store i64 %unary_321, i64* @current_answer_ptr, align 4
  %error_call_return_val3 = call i64 @error_func(i64 4)
  unreachable

then_45:                                          ; preds = %continue_if_else_45
  br label %merge_then_else_45

else_45:                                          ; preds = %continue_if_else_45
  br label %less_52

merge_then_else_45:                               ; preds = %continue_logical_not_48, %then_45
  %"if/else_snake_result_45" = phi i64 [ 9223372036854775807, %then_45 ], [ %logical_not_snake_result_48, %continue_logical_not_48 ]
  br label %let_27

less_52:                                          ; preds = %else_45
  br i1 true, label %arg1_type_check_passed_52, label %call_error_func4

arg1_type_check_passed_52:                        ; preds = %less_52
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_52, label %call_error_func6

call_error_func4:                                 ; preds = %less_52
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_52:                        ; preds = %arg1_type_check_passed_52
  %less_llvm_result_52 = icmp slt i64 6, %2
  br i1 %less_llvm_result_52, label %comp_is_true_52, label %comp_is_false_52

call_error_func6:                                 ; preds = %arg1_type_check_passed_52
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_52:                                  ; preds = %arg2_type_check_passed_52
  br label %merge_52

comp_is_false_52:                                 ; preds = %arg2_type_check_passed_52
  br label %merge_52

merge_52:                                         ; preds = %comp_is_false_52, %comp_is_true_52
  %less_snake_result_52 = phi i64 [ -1, %comp_is_true_52 ], [ 9223372036854775807, %comp_is_false_52 ]
  br label %let_46

let_46:                                           ; preds = %merge_52
  %binop_37 = alloca i64, align 8
  store i64 %less_snake_result_52, i64* %binop_37, align 4
  br label %logical_not_50

logical_not_50:                                   ; preds = %let_46
  %binop_378 = load i64, i64* %binop_37, align 4
  %tag_bits_of_arg9 = and i64 %binop_378, 7
  %is_arg_bool10 = icmp eq i64 %tag_bits_of_arg9, 7
  br i1 %is_arg_bool10, label %continue_logical_not_50, label %call_error_func11

continue_logical_not_50:                          ; preds = %logical_not_50
  %logical_not_snake_result_50 = xor i64 %binop_378, -9223372036854775808
  br label %let_47

call_error_func11:                                ; preds = %logical_not_50
  store i64 %binop_378, i64* @current_answer_ptr, align 4
  %error_call_return_val12 = call i64 @error_func(i64 3)
  unreachable

let_47:                                           ; preds = %continue_logical_not_50
  %unary_36 = alloca i64, align 8
  store i64 %logical_not_snake_result_50, i64* %unary_36, align 4
  br label %logical_not_48

logical_not_48:                                   ; preds = %let_47
  %unary_3613 = load i64, i64* %unary_36, align 4
  %tag_bits_of_arg14 = and i64 %unary_3613, 7
  %is_arg_bool15 = icmp eq i64 %tag_bits_of_arg14, 7
  br i1 %is_arg_bool15, label %continue_logical_not_48, label %call_error_func16

continue_logical_not_48:                          ; preds = %logical_not_48
  %logical_not_snake_result_48 = xor i64 %unary_3613, -9223372036854775808
  br label %merge_then_else_45

call_error_func16:                                ; preds = %logical_not_48
  store i64 %unary_3613, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 3)
  unreachable

let_27:                                           ; preds = %merge_then_else_45
  %z_30 = alloca i64, align 8
  store i64 %"if/else_snake_result_45", i64* %z_30, align 4
  br label %let_28

let_28:                                           ; preds = %let_27
  %a_42 = alloca i64, align 8
  store i64 8, i64* %a_42, align 4
  br label %greater_41

greater_41:                                       ; preds = %let_28
  %a_4218 = load i64, i64* %a_42, align 4
  %tag_bits_of_arg1 = and i64 %a_4218, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_41, label %call_error_func19

arg1_type_check_passed_41:                        ; preds = %greater_41
  %tag_bits_of_arg221 = and i64 %2, 1
  %is_arg2_int22 = icmp eq i64 %tag_bits_of_arg221, 0
  br i1 %is_arg2_int22, label %arg2_type_check_passed_41, label %call_error_func23

call_error_func19:                                ; preds = %greater_41
  store i64 %a_4218, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_41:                        ; preds = %arg1_type_check_passed_41
  %greater_llvm_result_41 = icmp sgt i64 %a_4218, %2
  br i1 %greater_llvm_result_41, label %comp_is_true_41, label %comp_is_false_41

call_error_func23:                                ; preds = %arg1_type_check_passed_41
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_41:                                  ; preds = %arg2_type_check_passed_41
  br label %merge_41

comp_is_false_41:                                 ; preds = %arg2_type_check_passed_41
  br label %merge_41

merge_41:                                         ; preds = %comp_is_false_41, %comp_is_true_41
  %greater_snake_result_41 = phi i64 [ -1, %comp_is_true_41 ], [ 9223372036854775807, %comp_is_false_41 ]
  br label %let_29

let_29:                                           ; preds = %merge_41
  %binop_46 = alloca i64, align 8
  store i64 %greater_snake_result_41, i64* %binop_46, align 4
  br label %logical_not_39

logical_not_39:                                   ; preds = %let_29
  %binop_4625 = load i64, i64* %binop_46, align 4
  %tag_bits_of_arg26 = and i64 %binop_4625, 7
  %is_arg_bool27 = icmp eq i64 %tag_bits_of_arg26, 7
  br i1 %is_arg_bool27, label %continue_logical_not_39, label %call_error_func28

continue_logical_not_39:                          ; preds = %logical_not_39
  %logical_not_snake_result_39 = xor i64 %binop_4625, -9223372036854775808
  br label %let_30

call_error_func28:                                ; preds = %logical_not_39
  store i64 %binop_4625, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 3)
  unreachable

let_30:                                           ; preds = %continue_logical_not_39
  %unary_45 = alloca i64, align 8
  store i64 %logical_not_snake_result_39, i64* %unary_45, align 4
  br label %if_else_31

if_else_31:                                       ; preds = %let_30
  %unary_4530 = load i64, i64* %unary_45, align 4
  %tag_bits_of_cond_val31 = and i64 %unary_4530, 7
  %type_is_bool32 = icmp eq i64 %tag_bits_of_cond_val31, 7
  br i1 %type_is_bool32, label %continue_if_else_31, label %call_error_func33

continue_if_else_31:                              ; preds = %if_else_31
  %is_cond_true35 = icmp eq i64 %unary_4530, -1
  br i1 %is_cond_true35, label %then_31, label %else_31

call_error_func33:                                ; preds = %if_else_31
  store i64 %unary_4530, i64* @current_answer_ptr, align 4
  %error_call_return_val34 = call i64 @error_func(i64 4)
  unreachable

then_31:                                          ; preds = %continue_if_else_31
  br label %logical_not_36

else_31:                                          ; preds = %continue_if_else_31
  br label %merge_then_else_31

merge_then_else_31:                               ; preds = %else_31, %continue_logical_not_34
  %"if/else_snake_result_31" = phi i64 [ %logical_not_snake_result_34, %continue_logical_not_34 ], [ -1, %else_31 ]
  br label %return

logical_not_36:                                   ; preds = %then_31
  %z_3036 = load i64, i64* %z_30, align 4
  %tag_bits_of_arg37 = and i64 %z_3036, 7
  %is_arg_bool38 = icmp eq i64 %tag_bits_of_arg37, 7
  br i1 %is_arg_bool38, label %continue_logical_not_36, label %call_error_func39

continue_logical_not_36:                          ; preds = %logical_not_36
  %logical_not_snake_result_36 = xor i64 %z_3036, -9223372036854775808
  br label %let_33

call_error_func39:                                ; preds = %logical_not_36
  store i64 %z_3036, i64* @current_answer_ptr, align 4
  %error_call_return_val40 = call i64 @error_func(i64 3)
  unreachable

let_33:                                           ; preds = %continue_logical_not_36
  %unary_50 = alloca i64, align 8
  store i64 %logical_not_snake_result_36, i64* %unary_50, align 4
  br label %logical_not_34

logical_not_34:                                   ; preds = %let_33
  %unary_5041 = load i64, i64* %unary_50, align 4
  %tag_bits_of_arg42 = and i64 %unary_5041, 7
  %is_arg_bool43 = icmp eq i64 %tag_bits_of_arg42, 7
  br i1 %is_arg_bool43, label %continue_logical_not_34, label %call_error_func44

continue_logical_not_34:                          ; preds = %logical_not_34
  %logical_not_snake_result_34 = xor i64 %unary_5041, -9223372036854775808
  br label %merge_then_else_31

call_error_func44:                                ; preds = %logical_not_34
  store i64 %unary_5041, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 3)
  unreachable
}

define i64 @lambda_15_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %logical_not_23

return:                                           ; preds = %merge_then_else_17
  ret i64 %"if/else_snake_result_17"

logical_not_23:                                   ; preds = %lambda_body
  %tag_bits_of_arg = and i64 %1, 7
  %is_arg_bool = icmp eq i64 %tag_bits_of_arg, 7
  br i1 %is_arg_bool, label %continue_logical_not_23, label %call_error_func

continue_logical_not_23:                          ; preds = %logical_not_23
  %logical_not_snake_result_23 = xor i64 %1, -9223372036854775808
  br label %let_16

call_error_func:                                  ; preds = %logical_not_23
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 3)
  unreachable

let_16:                                           ; preds = %continue_logical_not_23
  %unary_60 = alloca i64, align 8
  store i64 %logical_not_snake_result_23, i64* %unary_60, align 4
  br label %if_else_17

if_else_17:                                       ; preds = %let_16
  %unary_601 = load i64, i64* %unary_60, align 4
  %tag_bits_of_cond_val = and i64 %unary_601, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_17, label %call_error_func2

continue_if_else_17:                              ; preds = %if_else_17
  %is_cond_true = icmp eq i64 %unary_601, -1
  br i1 %is_cond_true, label %then_17, label %else_17

call_error_func2:                                 ; preds = %if_else_17
  store i64 %unary_601, i64* @current_answer_ptr, align 4
  %error_call_return_val3 = call i64 @error_func(i64 4)
  unreachable

then_17:                                          ; preds = %continue_if_else_17
  br label %merge_then_else_17

else_17:                                          ; preds = %continue_if_else_17
  br label %plus_18

merge_then_else_17:                               ; preds = %continue_no_overflow_18, %then_17
  %"if/else_snake_result_17" = phi i64 [ 6, %then_17 ], [ %plus_snake_result_1810, %continue_no_overflow_18 ]
  br label %return

plus_18:                                          ; preds = %else_17
  %tag_bits_of_arg1 = and i64 %2, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_18, label %call_error_func4

arg1_type_check_passed_18:                        ; preds = %plus_18
  br i1 true, label %arg2_type_check_passed_18, label %call_error_func6

call_error_func4:                                 ; preds = %plus_18
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_18:                        ; preds = %arg1_type_check_passed_18
  %plus_snake_result_18 = add i64 %2, 6
  %l_ge_0 = icmp sge i64 %2, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_18, %2
  %sum_lt_r = icmp slt i64 %plus_snake_result_18, 6
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_18, %2
  %sum_gt_r = icmp sgt i64 %plus_snake_result_18, 6
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_18, label %call_error_func8

call_error_func6:                                 ; preds = %arg1_type_check_passed_18
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_18:                          ; preds = %arg2_type_check_passed_18
  %plus_snake_result_1810 = phi i64 [ %plus_snake_result_18, %arg2_type_check_passed_18 ]
  br label %merge_then_else_17

call_error_func8:                                 ; preds = %arg2_type_check_passed_18
  store i64 %plus_snake_result_18, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 5)
  unreachable
}
