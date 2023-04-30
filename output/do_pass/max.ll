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
  %max_26 = alloca i64, align 8
  br label %create_lambda_closure_18

create_lambda_closure_18:                         ; preds = %let_rec_4
  %max_263 = load i64, i64* %max_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_18 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_18, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_18, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_18, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_18_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %max_263, i64* %11, align 4
  %closure_addr_18 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_18 to i64
  %closure_tagged_tuple_addr_word_18 = add i64 %closure_addr_18, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_18
  store i64 %closure_tagged_tuple_addr_word_18, i64* %max_26, align 4
  %max_265 = load i64, i64* %max_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_18, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %max_265, i64* %12, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_4
  %max_266 = load i64, i64* %max_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %max_266, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_14, label %call_error_func

is_closure_14:                                    ; preds = %function_call
  %untagged_closure_addr7 = sub i64 %max_266, 5
  %closure_ptr8 = inttoptr i64 %untagged_closure_addr7 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr8, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr8, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 4
  br i1 %13, label %is_correct_arity_14, label %call_error_func9

call_error_func:                                  ; preds = %function_call
  store i64 %max_266, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_14:                              ; preds = %is_closure_14
  %lambda_non_tail_call_result = call i64 %function(i64 %max_266, i64 40, i64 20)
  br label %let_5

call_error_func9:                                 ; preds = %is_closure_14
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val10 = call i64 @error_func(i64 17)
  unreachable

let_5:                                            ; preds = %is_correct_arity_14
  %app_40 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_40, align 4
  br label %function_call11

function_call11:                                  ; preds = %let_5
  %max_2612 = load i64, i64* %max_26, align 4
  %tag_bits_of_closure_of_func_to_call13 = and i64 %max_2612, 7
  %is_closure_of_func_to_call_closure14 = icmp eq i64 %tag_bits_of_closure_of_func_to_call13, 5
  br i1 %is_closure_of_func_to_call_closure14, label %is_closure_10, label %call_error_func15

is_closure_10:                                    ; preds = %function_call11
  %untagged_closure_addr17 = sub i64 %max_2612, 5
  %closure_ptr18 = inttoptr i64 %untagged_closure_addr17 to i64*
  %function_code_ptr_as_i6419 = load i64, i64* %closure_ptr18, align 4
  %function20 = inttoptr i64 %function_code_ptr_as_i6419 to i64 (i64, i64, i64)*
  %arity_ptr21 = getelementptr i64, i64* %closure_ptr18, i64 1
  %arity22 = load i64, i64* %arity_ptr21, align 4
  %14 = icmp eq i64 %arity22, 4
  br i1 %14, label %is_correct_arity_10, label %call_error_func23

call_error_func15:                                ; preds = %function_call11
  store i64 %max_2612, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_10:                              ; preds = %is_closure_10
  %lambda_non_tail_call_result25 = call i64 %function20(i64 %max_2612, i64 20, i64 40)
  br label %let_6

call_error_func23:                                ; preds = %is_closure_10
  store i64 %arity22, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 17)
  unreachable

let_6:                                            ; preds = %is_correct_arity_10
  %app_44 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result25, i64* %app_44, align 4
  br label %equal_7

equal_7:                                          ; preds = %let_6
  %app_4026 = load i64, i64* %app_40, align 4
  %app_4427 = load i64, i64* %app_44, align 4
  %equal_llvm_result_7 = icmp eq i64 %app_4026, %app_4427
  br i1 %equal_llvm_result_7, label %comp_is_true_7, label %comp_is_false_7

comp_is_true_7:                                   ; preds = %equal_7
  br label %merge_7

comp_is_false_7:                                  ; preds = %equal_7
  br label %merge_7

merge_7:                                          ; preds = %comp_is_false_7, %comp_is_true_7
  %equal_snake_result_7 = phi i64 [ -1, %comp_is_true_7 ], [ 9223372036854775807, %comp_is_false_7 ]
  br label %result

result:                                           ; preds = %merge_7
  ret i64 %equal_snake_result_7
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

define i64 @lambda_18_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'max_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %greater_eq_27

return:                                           ; preds = %merge_then_else_20
  ret i64 %"if/else_snake_result_20"

greater_eq_27:                                    ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %2, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_27, label %call_error_func

arg1_type_check_passed_27:                        ; preds = %greater_eq_27
  %tag_bits_of_arg2 = and i64 %1, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_27, label %call_error_func1

call_error_func:                                  ; preds = %greater_eq_27
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_27:                        ; preds = %arg1_type_check_passed_27
  %greater_eq_llvm_result_27 = icmp sge i64 %2, %1
  br i1 %greater_eq_llvm_result_27, label %comp_is_true_27, label %comp_is_false_27

call_error_func1:                                 ; preds = %arg1_type_check_passed_27
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_27:                                  ; preds = %arg2_type_check_passed_27
  br label %merge_27

comp_is_false_27:                                 ; preds = %arg2_type_check_passed_27
  br label %merge_27

merge_27:                                         ; preds = %comp_is_false_27, %comp_is_true_27
  %greater_eq_snake_result_27 = phi i64 [ -1, %comp_is_true_27 ], [ 9223372036854775807, %comp_is_false_27 ]
  br label %let_19

let_19:                                           ; preds = %merge_27
  %binop_29 = alloca i64, align 8
  store i64 %greater_eq_snake_result_27, i64* %binop_29, align 4
  br label %if_else_20

if_else_20:                                       ; preds = %let_19
  %binop_293 = load i64, i64* %binop_29, align 4
  %tag_bits_of_cond_val = and i64 %binop_293, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_20, label %call_error_func4

continue_if_else_20:                              ; preds = %if_else_20
  %is_cond_true = icmp eq i64 %binop_293, -1
  br i1 %is_cond_true, label %then_20, label %else_20

call_error_func4:                                 ; preds = %if_else_20
  store i64 %binop_293, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_20:                                          ; preds = %continue_if_else_20
  br label %merge_then_else_20

else_20:                                          ; preds = %continue_if_else_20
  br label %function_call

merge_then_else_20:                               ; preds = %is_correct_arity_21, %then_20
  %"if/else_snake_result_20" = phi i64 [ %2, %then_20 ], [ %lambda_tail_call_result, %is_correct_arity_21 ]
  br label %return

function_call:                                    ; preds = %else_20
  %max_26 = load i64, i64* %"free_var_'max_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %max_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_21, label %call_error_func6

is_closure_21:                                    ; preds = %function_call
  %untagged_closure_addr8 = sub i64 %max_26, 5
  %closure_ptr9 = inttoptr i64 %untagged_closure_addr8 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr9, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr9, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 4
  br i1 %3, label %is_correct_arity_21, label %call_error_func10

call_error_func6:                                 ; preds = %function_call
  store i64 %max_26, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_21:                              ; preds = %is_closure_21
  %lambda_tail_call_result = tail call i64 %function(i64 %max_26, i64 %2, i64 %1)
  br label %merge_then_else_20

call_error_func10:                                ; preds = %is_closure_21
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 17)
  unreachable
}
