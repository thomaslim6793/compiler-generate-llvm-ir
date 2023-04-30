; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_40

create_lambda_closure_40:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_40 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_40, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_40, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_40, i32 0, i32 2
  store i64 (i64, i64)* @lambda_40_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_40 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_40 to i64
  %closure_tagged_tuple_addr_word_40 = add i64 %closure_addr_40, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_40
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_40, i64* %print_4, align 4
  br label %create_lambda_closure_37

create_lambda_closure_37:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_37 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_37, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_37, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_37, i32 0, i32 2
  store i64 (i64)* @lambda_37_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_37 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_37 to i64
  %closure_tagged_tuple_addr_word_37 = add i64 %closure_addr_37, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_37
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_37, i64* %input_11, align 4
  br label %create_lambda_closure_32

create_lambda_closure_32:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_32 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_32, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_32, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_32, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_32_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_32 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_32 to i64
  %closure_tagged_tuple_addr_word_32 = add i64 %closure_addr_32, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_32
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_32, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_29

create_lambda_closure_29:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_29 = bitcast i8* %malloccall3 to { i64 (i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_29, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_29, i32 0, i32 1
  store i64 (i64, i64)* @lambda_29_, i64 (i64, i64)** %9, align 8
  store i64 2, i64* %10, align 4
  %closure_addr_29 = ptrtoint { i64 (i64, i64)*, i64 }* %closure_ptr_29 to i64
  %closure_tagged_tuple_addr_word_29 = add i64 %closure_addr_29, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_29
  store i64 %closure_tagged_tuple_addr_word_29, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_33 = alloca i64, align 8
  br label %create_lambda_closure_24

create_lambda_closure_24:                         ; preds = %let_rec_5
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_24 = bitcast i8* %malloccall4 to { i64 (i64, i64)*, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_24, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_24, i32 0, i32 1
  store i64 (i64, i64)* @lambda_24_, i64 (i64, i64)** %11, align 8
  store i64 2, i64* %12, align 4
  %closure_addr_24 = ptrtoint { i64 (i64, i64)*, i64 }* %closure_ptr_24 to i64
  %closure_tagged_tuple_addr_word_24 = add i64 %closure_addr_24, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_24
  store i64 %closure_tagged_tuple_addr_word_24, i64* %f2_33, align 4
  br label %let_rec_6

let_rec_6:                                        ; preds = %patch_let_rec_closures_5
  %f3_42 = alloca i64, align 8
  br label %create_lambda_closure_18

create_lambda_closure_18:                         ; preds = %let_rec_6
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_18 = bitcast i8* %malloccall5 to { i64 (i64, i64)*, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_18, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_18, i32 0, i32 1
  store i64 (i64, i64)* @lambda_18_, i64 (i64, i64)** %13, align 8
  store i64 2, i64* %14, align 4
  %closure_addr_18 = ptrtoint { i64 (i64, i64)*, i64 }* %closure_ptr_18 to i64
  %closure_tagged_tuple_addr_word_18 = add i64 %closure_addr_18, 5
  br label %patch_let_rec_closures_6

patch_let_rec_closures_6:                         ; preds = %create_lambda_closure_18
  store i64 %closure_tagged_tuple_addr_word_18, i64* %f3_42, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_6
  %f1_266 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_266, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_15, label %call_error_func

is_closure_15:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %f1_266, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %15 = icmp eq i64 %arity, 2
  br i1 %15, label %is_correct_arity_15, label %call_error_func7

call_error_func:                                  ; preds = %function_call
  store i64 %f1_266, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_15:                              ; preds = %is_closure_15
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_266, i64 2)
  br label %let_7

call_error_func7:                                 ; preds = %is_closure_15
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 17)
  unreachable

let_7:                                            ; preds = %is_correct_arity_15
  %app_54 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_54, align 4
  br label %function_call9

function_call9:                                   ; preds = %let_7
  %f2_3310 = load i64, i64* %f2_33, align 4
  %tag_bits_of_closure_of_func_to_call11 = and i64 %f2_3310, 7
  %is_closure_of_func_to_call_closure12 = icmp eq i64 %tag_bits_of_closure_of_func_to_call11, 5
  br i1 %is_closure_of_func_to_call_closure12, label %is_closure_12, label %call_error_func13

is_closure_12:                                    ; preds = %function_call9
  %untagged_closure_addr15 = sub i64 %f2_3310, 5
  %closure_ptr16 = inttoptr i64 %untagged_closure_addr15 to i64*
  %function_code_ptr_as_i6417 = load i64, i64* %closure_ptr16, align 4
  %function18 = inttoptr i64 %function_code_ptr_as_i6417 to i64 (i64, i64)*
  %arity_ptr19 = getelementptr i64, i64* %closure_ptr16, i64 1
  %arity20 = load i64, i64* %arity_ptr19, align 4
  %16 = icmp eq i64 %arity20, 2
  br i1 %16, label %is_correct_arity_12, label %call_error_func21

call_error_func13:                                ; preds = %function_call9
  store i64 %f2_3310, i64* @current_answer_ptr, align 4
  %error_call_return_val14 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_12:                              ; preds = %is_closure_12
  %app_5423 = load i64, i64* %app_54, align 4
  %lambda_non_tail_call_result24 = call i64 %function18(i64 %f2_3310, i64 %app_5423)
  br label %let_8

call_error_func21:                                ; preds = %is_closure_12
  store i64 %arity20, i64* @current_answer_ptr, align 4
  %error_call_return_val22 = call i64 @error_func(i64 17)
  unreachable

let_8:                                            ; preds = %is_correct_arity_12
  %app_53 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result24, i64* %app_53, align 4
  br label %function_call25

function_call25:                                  ; preds = %let_8
  %f3_4226 = load i64, i64* %f3_42, align 4
  %tag_bits_of_closure_of_func_to_call27 = and i64 %f3_4226, 7
  %is_closure_of_func_to_call_closure28 = icmp eq i64 %tag_bits_of_closure_of_func_to_call27, 5
  br i1 %is_closure_of_func_to_call_closure28, label %is_closure_9, label %call_error_func29

is_closure_9:                                     ; preds = %function_call25
  %untagged_closure_addr31 = sub i64 %f3_4226, 5
  %closure_ptr32 = inttoptr i64 %untagged_closure_addr31 to i64*
  %function_code_ptr_as_i6433 = load i64, i64* %closure_ptr32, align 4
  %function34 = inttoptr i64 %function_code_ptr_as_i6433 to i64 (i64, i64)*
  %arity_ptr35 = getelementptr i64, i64* %closure_ptr32, i64 1
  %arity36 = load i64, i64* %arity_ptr35, align 4
  %17 = icmp eq i64 %arity36, 2
  br i1 %17, label %is_correct_arity_9, label %call_error_func37

call_error_func29:                                ; preds = %function_call25
  store i64 %f3_4226, i64* @current_answer_ptr, align 4
  %error_call_return_val30 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_9:                               ; preds = %is_closure_9
  %app_5339 = load i64, i64* %app_53, align 4
  %lambda_tail_call_result = tail call i64 %function34(i64 %f3_4226, i64 %app_5339)
  br label %result

call_error_func37:                                ; preds = %is_closure_9
  store i64 %arity36, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 17)
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

define i64 @lambda_40_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_41

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_41 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_37_(i64 %0) {
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
  ret i64 %input_tail_call_result_38

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_38 = tail call i64 @input()
  br label %return
}

define i64 @lambda_32_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_33

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_33 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_29_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %isnum_30

return:                                           ; preds = %merged_num_30
  ret i64 %isnum_snake_result_30

isnum_30:                                         ; preds = %lambda_body
  %tag_bits_of_arg = and i64 %1, 1
  %is_bool = icmp eq i64 %tag_bits_of_arg, 0
  br i1 %is_bool, label %yes_isnum_30, label %not_isnum_30

yes_isnum_30:                                     ; preds = %isnum_30
  br label %merged_num_30

not_isnum_30:                                     ; preds = %isnum_30
  br label %merged_num_30

merged_num_30:                                    ; preds = %not_isnum_30, %yes_isnum_30
  %isnum_snake_result_30 = phi i64 [ -1, %yes_isnum_30 ], [ 9223372036854775807, %not_isnum_30 ]
  br label %return
}

define i64 @lambda_24_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %if_else_25

return:                                           ; preds = %merge_then_else_25
  ret i64 %"if/else_snake_result_25"

if_else_25:                                       ; preds = %lambda_body
  %tag_bits_of_cond_val = and i64 %1, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_25, label %call_error_func

continue_if_else_25:                              ; preds = %if_else_25
  %is_cond_true = icmp eq i64 %1, -1
  br i1 %is_cond_true, label %then_25, label %else_25

call_error_func:                                  ; preds = %if_else_25
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 4)
  unreachable

then_25:                                          ; preds = %continue_if_else_25
  br label %merge_then_else_25

else_25:                                          ; preds = %continue_if_else_25
  br label %merge_then_else_25

merge_then_else_25:                               ; preds = %else_25, %then_25
  %"if/else_snake_result_25" = phi i64 [ 2, %then_25 ], [ 4, %else_25 ]
  br label %return
}

define i64 @lambda_18_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %let_19

return:                                           ; preds = %merge_20
  ret i64 %greater_snake_result_20

let_19:                                           ; preds = %lambda_body
  %x1_46 = alloca i64, align 8
  store i64 20, i64* %x1_46, align 4
  br label %greater_20

greater_20:                                       ; preds = %let_19
  %x1_461 = load i64, i64* %x1_46, align 4
  %tag_bits_of_arg1 = and i64 %x1_461, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_20, label %call_error_func

arg1_type_check_passed_20:                        ; preds = %greater_20
  %tag_bits_of_arg2 = and i64 %1, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_20, label %call_error_func2

call_error_func:                                  ; preds = %greater_20
  store i64 %x1_461, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_20:                        ; preds = %arg1_type_check_passed_20
  %greater_llvm_result_20 = icmp sgt i64 %x1_461, %1
  br i1 %greater_llvm_result_20, label %comp_is_true_20, label %comp_is_false_20

call_error_func2:                                 ; preds = %arg1_type_check_passed_20
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val3 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_20:                                  ; preds = %arg2_type_check_passed_20
  br label %merge_20

comp_is_false_20:                                 ; preds = %arg2_type_check_passed_20
  br label %merge_20

merge_20:                                         ; preds = %comp_is_false_20, %comp_is_true_20
  %greater_snake_result_20 = phi i64 [ -1, %comp_is_true_20 ], [ 9223372036854775807, %comp_is_false_20 ]
  br label %return
}
