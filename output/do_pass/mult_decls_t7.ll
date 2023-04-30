; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_48

create_lambda_closure_48:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_48 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_48, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_48, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_48, i32 0, i32 2
  store i64 (i64, i64)* @lambda_48_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_48 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_48 to i64
  %closure_tagged_tuple_addr_word_48 = add i64 %closure_addr_48, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_48
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_48, i64* %print_4, align 4
  br label %create_lambda_closure_45

create_lambda_closure_45:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_45 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_45, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_45, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_45, i32 0, i32 2
  store i64 (i64)* @lambda_45_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_45 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_45 to i64
  %closure_tagged_tuple_addr_word_45 = add i64 %closure_addr_45, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_45
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_45, i64* %input_11, align 4
  br label %create_lambda_closure_40

create_lambda_closure_40:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_40 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_40, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_40, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_40, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_40_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_40 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_40 to i64
  %closure_tagged_tuple_addr_word_40 = add i64 %closure_addr_40, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_40
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_40, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_28

create_lambda_closure_28:                         ; preds = %let_rec_4
  %print_43 = load i64, i64* %print_4, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_28 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_28, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_28_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %print_43, i64* %11, align 4
  %closure_addr_28 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_28 to i64
  %closure_tagged_tuple_addr_word_28 = add i64 %closure_addr_28, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_28
  store i64 %closure_tagged_tuple_addr_word_28, i64* %f1_26, align 4
  %print_45 = load i64, i64* %print_4, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_28, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %print_45, i64* %12, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_39 = alloca i64, align 8
  br label %create_lambda_closure_20

create_lambda_closure_20:                         ; preds = %let_rec_5
  %print_46 = load i64, i64* %print_4, align 4
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_20 = bitcast i8* %malloccall7 to { i64 (i64, i64, i64)*, i64, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_20, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_20, i32 0, i32 1
  %15 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_20, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_20_, i64 (i64, i64, i64)** %13, align 8
  store i64 4, i64* %14, align 4
  store i64 %print_46, i64* %15, align 4
  %closure_addr_20 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_20 to i64
  %closure_tagged_tuple_addr_word_20 = add i64 %closure_addr_20, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_20
  store i64 %closure_tagged_tuple_addr_word_20, i64* %f2_39, align 4
  %print_48 = load i64, i64* %print_4, align 4
  %untagged_closure_addr9 = sub i64 %closure_tagged_tuple_addr_word_20, 5
  %closure_ptr10 = inttoptr i64 %untagged_closure_addr9 to i64*
  %16 = getelementptr i64, i64* %closure_ptr10, i64 2
  store i64 %print_48, i64* %16, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f1_2611 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_2611, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_16, label %call_error_func

is_closure_16:                                    ; preds = %function_call
  %untagged_closure_addr12 = sub i64 %f1_2611, 5
  %closure_ptr13 = inttoptr i64 %untagged_closure_addr12 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr13, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr13, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 4
  br i1 %17, label %is_correct_arity_16, label %call_error_func14

call_error_func:                                  ; preds = %function_call
  store i64 %f1_2611, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_16:                              ; preds = %is_closure_16
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_2611, i64 2, i64 4)
  br label %let_6

call_error_func14:                                ; preds = %is_closure_16
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 17)
  unreachable

let_6:                                            ; preds = %is_correct_arity_16
  %app_49 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_49, align 4
  br label %function_call16

function_call16:                                  ; preds = %let_6
  %f1_2617 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call18 = and i64 %f1_2617, 7
  %is_closure_of_func_to_call_closure19 = icmp eq i64 %tag_bits_of_closure_of_func_to_call18, 5
  br i1 %is_closure_of_func_to_call_closure19, label %is_closure_12, label %call_error_func20

is_closure_12:                                    ; preds = %function_call16
  %untagged_closure_addr22 = sub i64 %f1_2617, 5
  %closure_ptr23 = inttoptr i64 %untagged_closure_addr22 to i64*
  %function_code_ptr_as_i6424 = load i64, i64* %closure_ptr23, align 4
  %function25 = inttoptr i64 %function_code_ptr_as_i6424 to i64 (i64, i64, i64)*
  %arity_ptr26 = getelementptr i64, i64* %closure_ptr23, i64 1
  %arity27 = load i64, i64* %arity_ptr26, align 4
  %18 = icmp eq i64 %arity27, 4
  br i1 %18, label %is_correct_arity_12, label %call_error_func28

call_error_func20:                                ; preds = %function_call16
  store i64 %f1_2617, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_12:                              ; preds = %is_closure_12
  %lambda_non_tail_call_result30 = call i64 %function25(i64 %f1_2617, i64 6, i64 8)
  br label %let_7

call_error_func28:                                ; preds = %is_closure_12
  store i64 %arity27, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 17)
  unreachable

let_7:                                            ; preds = %is_correct_arity_12
  %app_53 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result30, i64* %app_53, align 4
  br label %function_call31

function_call31:                                  ; preds = %let_7
  %f2_3932 = load i64, i64* %f2_39, align 4
  %tag_bits_of_closure_of_func_to_call33 = and i64 %f2_3932, 7
  %is_closure_of_func_to_call_closure34 = icmp eq i64 %tag_bits_of_closure_of_func_to_call33, 5
  br i1 %is_closure_of_func_to_call_closure34, label %is_closure_8, label %call_error_func35

is_closure_8:                                     ; preds = %function_call31
  %untagged_closure_addr37 = sub i64 %f2_3932, 5
  %closure_ptr38 = inttoptr i64 %untagged_closure_addr37 to i64*
  %function_code_ptr_as_i6439 = load i64, i64* %closure_ptr38, align 4
  %function40 = inttoptr i64 %function_code_ptr_as_i6439 to i64 (i64, i64, i64)*
  %arity_ptr41 = getelementptr i64, i64* %closure_ptr38, i64 1
  %arity42 = load i64, i64* %arity_ptr41, align 4
  %19 = icmp eq i64 %arity42, 4
  br i1 %19, label %is_correct_arity_8, label %call_error_func43

call_error_func35:                                ; preds = %function_call31
  store i64 %f2_3932, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_8:                               ; preds = %is_closure_8
  %app_4945 = load i64, i64* %app_49, align 4
  %app_5346 = load i64, i64* %app_53, align 4
  %lambda_tail_call_result = tail call i64 %function40(i64 %f2_3932, i64 %app_4945, i64 %app_5346)
  br label %result

call_error_func43:                                ; preds = %is_closure_8
  store i64 %arity42, i64* @current_answer_ptr, align 4
  %error_call_return_val44 = call i64 @error_func(i64 17)
  unreachable

result:                                           ; preds = %is_correct_arity_8
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

define i64 @lambda_48_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_49

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_49 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_45_(i64 %0) {
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
  ret i64 %input_tail_call_result_46

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_46 = tail call i64 @input()
  br label %return
}

define i64 @lambda_40_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_41

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_41 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_28_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'print_4'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %function_call

return:                                           ; preds = %continue_no_overflow_31
  ret i64 %plus_snake_result_3129

function_call:                                    ; preds = %lambda_body
  %print_4 = load i64, i64* %"free_var_'print_4'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %print_4, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_37, label %call_error_func

is_closure_37:                                    ; preds = %function_call
  %untagged_closure_addr1 = sub i64 %print_4, 5
  %closure_ptr2 = inttoptr i64 %untagged_closure_addr1 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr2, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr2, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 2
  br i1 %3, label %is_correct_arity_37, label %call_error_func3

call_error_func:                                  ; preds = %function_call
  store i64 %print_4, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_37:                              ; preds = %is_closure_37
  %lambda_non_tail_call_result = call i64 %function(i64 %print_4, i64 %1)
  br label %let_29

call_error_func3:                                 ; preds = %is_closure_37
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 17)
  unreachable

let_29:                                           ; preds = %is_correct_arity_37
  %app_29 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_29, align 4
  br label %function_call5

function_call5:                                   ; preds = %let_29
  %print_46 = load i64, i64* %"free_var_'print_4'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call7 = and i64 %print_46, 7
  %is_closure_of_func_to_call_closure8 = icmp eq i64 %tag_bits_of_closure_of_func_to_call7, 5
  br i1 %is_closure_of_func_to_call_closure8, label %is_closure_34, label %call_error_func9

is_closure_34:                                    ; preds = %function_call5
  %untagged_closure_addr11 = sub i64 %print_46, 5
  %closure_ptr12 = inttoptr i64 %untagged_closure_addr11 to i64*
  %function_code_ptr_as_i6413 = load i64, i64* %closure_ptr12, align 4
  %function14 = inttoptr i64 %function_code_ptr_as_i6413 to i64 (i64, i64)*
  %arity_ptr15 = getelementptr i64, i64* %closure_ptr12, i64 1
  %arity16 = load i64, i64* %arity_ptr15, align 4
  %4 = icmp eq i64 %arity16, 2
  br i1 %4, label %is_correct_arity_34, label %call_error_func17

call_error_func9:                                 ; preds = %function_call5
  store i64 %print_46, i64* @current_answer_ptr, align 4
  %error_call_return_val10 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_34:                              ; preds = %is_closure_34
  %lambda_non_tail_call_result19 = call i64 %function14(i64 %print_46, i64 %2)
  br label %let_30

call_error_func17:                                ; preds = %is_closure_34
  store i64 %arity16, i64* @current_answer_ptr, align 4
  %error_call_return_val18 = call i64 @error_func(i64 17)
  unreachable

let_30:                                           ; preds = %is_correct_arity_34
  %app_32 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result19, i64* %app_32, align 4
  br label %plus_31

plus_31:                                          ; preds = %let_30
  %app_2920 = load i64, i64* %app_29, align 4
  %app_3221 = load i64, i64* %app_32, align 4
  %tag_bits_of_arg1 = and i64 %app_2920, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_31, label %call_error_func22

arg1_type_check_passed_31:                        ; preds = %plus_31
  %tag_bits_of_arg2 = and i64 %app_3221, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_31, label %call_error_func24

call_error_func22:                                ; preds = %plus_31
  store i64 %app_2920, i64* @current_answer_ptr, align 4
  %error_call_return_val23 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_31:                        ; preds = %arg1_type_check_passed_31
  %plus_snake_result_31 = add i64 %app_2920, %app_3221
  %r_ge_0 = icmp sge i64 %app_3221, 0
  %l_ge_0 = icmp sge i64 %app_2920, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_31, %app_2920
  %sum_lt_r = icmp slt i64 %plus_snake_result_31, %app_3221
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %app_3221, 0
  %l_lt_026 = icmp slt i64 %app_2920, 0
  %negative_overflow = and i1 %l_lt_026, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_31, %app_2920
  %sum_gt_r = icmp sgt i64 %plus_snake_result_31, %app_3221
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_31, label %call_error_func27

call_error_func24:                                ; preds = %arg1_type_check_passed_31
  store i64 %app_3221, i64* @current_answer_ptr, align 4
  %error_call_return_val25 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_31:                          ; preds = %arg2_type_check_passed_31
  %plus_snake_result_3129 = phi i64 [ %plus_snake_result_31, %arg2_type_check_passed_31 ]
  br label %return

call_error_func27:                                ; preds = %arg2_type_check_passed_31
  store i64 %plus_snake_result_31, i64* @current_answer_ptr, align 4
  %error_call_return_val28 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_20_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'print_4'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %plus_25

return:                                           ; preds = %is_correct_arity_22
  ret i64 %lambda_tail_call_result

plus_25:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_25, label %call_error_func

arg1_type_check_passed_25:                        ; preds = %plus_25
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_25, label %call_error_func1

call_error_func:                                  ; preds = %plus_25
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_25:                        ; preds = %arg1_type_check_passed_25
  %plus_snake_result_25 = add i64 %1, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_25, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_25, %2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %l_lt_03 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_03, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_25, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_25, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_25, label %call_error_func4

call_error_func1:                                 ; preds = %arg1_type_check_passed_25
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_25:                          ; preds = %arg2_type_check_passed_25
  %plus_snake_result_256 = phi i64 [ %plus_snake_result_25, %arg2_type_check_passed_25 ]
  br label %let_21

call_error_func4:                                 ; preds = %arg2_type_check_passed_25
  store i64 %plus_snake_result_25, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 5)
  unreachable

let_21:                                           ; preds = %continue_no_overflow_25
  %binop_42 = alloca i64, align 8
  store i64 %plus_snake_result_256, i64* %binop_42, align 4
  br label %function_call

function_call:                                    ; preds = %let_21
  %print_4 = load i64, i64* %"free_var_'print_4'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %print_4, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_22, label %call_error_func7

is_closure_22:                                    ; preds = %function_call
  %untagged_closure_addr9 = sub i64 %print_4, 5
  %closure_ptr10 = inttoptr i64 %untagged_closure_addr9 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr10, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr10, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 2
  br i1 %3, label %is_correct_arity_22, label %call_error_func11

call_error_func7:                                 ; preds = %function_call
  store i64 %print_4, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_22:                              ; preds = %is_closure_22
  %binop_4213 = load i64, i64* %binop_42, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %print_4, i64 %binop_4213)
  br label %return

call_error_func11:                                ; preds = %is_closure_22
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val12 = call i64 @error_func(i64 17)
  unreachable
}
