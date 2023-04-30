; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_50

create_lambda_closure_50:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_50 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_50, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_50, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_50, i32 0, i32 2
  store i64 (i64, i64)* @lambda_50_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_50 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_50 to i64
  %closure_tagged_tuple_addr_word_50 = add i64 %closure_addr_50, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_50
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_50, i64* %print_4, align 4
  br label %create_lambda_closure_47

create_lambda_closure_47:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_47 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_47, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_47, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_47, i32 0, i32 2
  store i64 (i64)* @lambda_47_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_47 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_47 to i64
  %closure_tagged_tuple_addr_word_47 = add i64 %closure_addr_47, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_47
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_47, i64* %input_11, align 4
  br label %create_lambda_closure_42

create_lambda_closure_42:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_42 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_42, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_42, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_42, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_42_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_42 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_42 to i64
  %closure_tagged_tuple_addr_word_42 = add i64 %closure_addr_42, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_42
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_42, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_40

create_lambda_closure_40:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_40 = bitcast i8* %malloccall3 to { i64 (i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_40, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_40, i32 0, i32 1
  store i64 (i64, i64)* @lambda_40_, i64 (i64, i64)** %9, align 8
  store i64 2, i64* %10, align 4
  %closure_addr_40 = ptrtoint { i64 (i64, i64)*, i64 }* %closure_ptr_40 to i64
  %closure_tagged_tuple_addr_word_40 = add i64 %closure_addr_40, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_40
  store i64 %closure_tagged_tuple_addr_word_40, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_32 = alloca i64, align 8
  br label %create_lambda_closure_36

create_lambda_closure_36:                         ; preds = %let_rec_5
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_36 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_36, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_36, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_36_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  %closure_addr_36 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_36 to i64
  %closure_tagged_tuple_addr_word_36 = add i64 %closure_addr_36, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_36
  store i64 %closure_tagged_tuple_addr_word_36, i64* %f2_32, align 4
  br label %let_rec_6

let_rec_6:                                        ; preds = %patch_let_rec_closures_5
  %f3_41 = alloca i64, align 8
  br label %create_lambda_closure_28

create_lambda_closure_28:                         ; preds = %let_rec_6
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_28 = bitcast i8* %malloccall5 to { i64 (i64, i64, i64, i64)*, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_28, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_28, i32 0, i32 1
  store i64 (i64, i64, i64, i64)* @lambda_28_, i64 (i64, i64, i64, i64)** %13, align 8
  store i64 6, i64* %14, align 4
  %closure_addr_28 = ptrtoint { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_28 to i64
  %closure_tagged_tuple_addr_word_28 = add i64 %closure_addr_28, 5
  br label %patch_let_rec_closures_6

patch_let_rec_closures_6:                         ; preds = %create_lambda_closure_28
  store i64 %closure_tagged_tuple_addr_word_28, i64* %f3_41, align 4
  br label %let_7

let_7:                                            ; preds = %patch_let_rec_closures_6
  %x_53 = alloca i64, align 8
  store i64 4, i64* %x_53, align 4
  br label %let_8

let_8:                                            ; preds = %let_7
  %y_56 = alloca i64, align 8
  store i64 6, i64* %y_56, align 4
  br label %let_9

let_9:                                            ; preds = %let_8
  %z_59 = alloca i64, align 8
  store i64 8, i64* %z_59, align 4
  br label %function_call

function_call:                                    ; preds = %let_9
  %f2_326 = load i64, i64* %f2_32, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f2_326, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_21, label %call_error_func

is_closure_21:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %f2_326, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %15 = icmp eq i64 %arity, 4
  br i1 %15, label %is_correct_arity_21, label %call_error_func7

call_error_func:                                  ; preds = %function_call
  store i64 %f2_326, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_21:                              ; preds = %is_closure_21
  %x_539 = load i64, i64* %x_53, align 4
  %y_5610 = load i64, i64* %y_56, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f2_326, i64 %x_539, i64 %y_5610)
  br label %let_10

call_error_func7:                                 ; preds = %is_closure_21
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 17)
  unreachable

let_10:                                           ; preds = %is_correct_arity_21
  %app_62 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_62, align 4
  br label %if_else_11

if_else_11:                                       ; preds = %let_10
  %app_6211 = load i64, i64* %app_62, align 4
  %tag_bits_of_cond_val = and i64 %app_6211, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_11, label %call_error_func12

continue_if_else_11:                              ; preds = %if_else_11
  %is_cond_true = icmp eq i64 %app_6211, -1
  br i1 %is_cond_true, label %then_11, label %else_11

call_error_func12:                                ; preds = %if_else_11
  store i64 %app_6211, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 4)
  unreachable

then_11:                                          ; preds = %continue_if_else_11
  br label %function_call14

else_11:                                          ; preds = %continue_if_else_11
  br label %function_call29

merge_then_else_11:                               ; preds = %is_correct_arity_12, %is_correct_arity_17
  %"if/else_snake_result_11" = phi i64 [ %lambda_tail_call_result, %is_correct_arity_17 ], [ %lambda_tail_call_result46, %is_correct_arity_12 ]
  br label %result

function_call14:                                  ; preds = %then_11
  %f1_2615 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call16 = and i64 %f1_2615, 7
  %is_closure_of_func_to_call_closure17 = icmp eq i64 %tag_bits_of_closure_of_func_to_call16, 5
  br i1 %is_closure_of_func_to_call_closure17, label %is_closure_17, label %call_error_func18

is_closure_17:                                    ; preds = %function_call14
  %untagged_closure_addr20 = sub i64 %f1_2615, 5
  %closure_ptr21 = inttoptr i64 %untagged_closure_addr20 to i64*
  %function_code_ptr_as_i6422 = load i64, i64* %closure_ptr21, align 4
  %function23 = inttoptr i64 %function_code_ptr_as_i6422 to i64 (i64, i64)*
  %arity_ptr24 = getelementptr i64, i64* %closure_ptr21, i64 1
  %arity25 = load i64, i64* %arity_ptr24, align 4
  %16 = icmp eq i64 %arity25, 2
  br i1 %16, label %is_correct_arity_17, label %call_error_func26

call_error_func18:                                ; preds = %function_call14
  store i64 %f1_2615, i64* @current_answer_ptr, align 4
  %error_call_return_val19 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_17:                              ; preds = %is_closure_17
  %x_5328 = load i64, i64* %x_53, align 4
  %lambda_tail_call_result = tail call i64 %function23(i64 %f1_2615, i64 %x_5328)
  br label %merge_then_else_11

call_error_func26:                                ; preds = %is_closure_17
  store i64 %arity25, i64* @current_answer_ptr, align 4
  %error_call_return_val27 = call i64 @error_func(i64 17)
  unreachable

function_call29:                                  ; preds = %else_11
  %f3_4130 = load i64, i64* %f3_41, align 4
  %tag_bits_of_closure_of_func_to_call31 = and i64 %f3_4130, 7
  %is_closure_of_func_to_call_closure32 = icmp eq i64 %tag_bits_of_closure_of_func_to_call31, 5
  br i1 %is_closure_of_func_to_call_closure32, label %is_closure_12, label %call_error_func33

is_closure_12:                                    ; preds = %function_call29
  %untagged_closure_addr35 = sub i64 %f3_4130, 5
  %closure_ptr36 = inttoptr i64 %untagged_closure_addr35 to i64*
  %function_code_ptr_as_i6437 = load i64, i64* %closure_ptr36, align 4
  %function38 = inttoptr i64 %function_code_ptr_as_i6437 to i64 (i64, i64, i64, i64)*
  %arity_ptr39 = getelementptr i64, i64* %closure_ptr36, i64 1
  %arity40 = load i64, i64* %arity_ptr39, align 4
  %17 = icmp eq i64 %arity40, 6
  br i1 %17, label %is_correct_arity_12, label %call_error_func41

call_error_func33:                                ; preds = %function_call29
  store i64 %f3_4130, i64* @current_answer_ptr, align 4
  %error_call_return_val34 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_12:                              ; preds = %is_closure_12
  %x_5343 = load i64, i64* %x_53, align 4
  %y_5644 = load i64, i64* %y_56, align 4
  %z_5945 = load i64, i64* %z_59, align 4
  %lambda_tail_call_result46 = tail call i64 %function38(i64 %f3_4130, i64 %x_5343, i64 %y_5644, i64 %z_5945)
  br label %merge_then_else_11

call_error_func41:                                ; preds = %is_closure_12
  store i64 %arity40, i64* @current_answer_ptr, align 4
  %error_call_return_val42 = call i64 @error_func(i64 17)
  unreachable

result:                                           ; preds = %merge_then_else_11
  ret i64 %"if/else_snake_result_11"
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

define i64 @lambda_50_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_51

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_51 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_47_(i64 %0) {
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
  ret i64 %input_tail_call_result_48

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_48 = tail call i64 @input()
  br label %return
}

define i64 @lambda_42_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_43

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_43 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_40_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %return

return:                                           ; preds = %lambda_body
  ret i64 %1
}

define i64 @lambda_36_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %greater_37

return:                                           ; preds = %merge_37
  ret i64 %greater_snake_result_37

greater_37:                                       ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_37, label %call_error_func

arg1_type_check_passed_37:                        ; preds = %greater_37
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_37, label %call_error_func1

call_error_func:                                  ; preds = %greater_37
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_37:                        ; preds = %arg1_type_check_passed_37
  %greater_llvm_result_37 = icmp sgt i64 %1, %2
  br i1 %greater_llvm_result_37, label %comp_is_true_37, label %comp_is_false_37

call_error_func1:                                 ; preds = %arg1_type_check_passed_37
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_37:                                  ; preds = %arg2_type_check_passed_37
  br label %merge_37

comp_is_false_37:                                 ; preds = %arg2_type_check_passed_37
  br label %merge_37

merge_37:                                         ; preds = %comp_is_false_37, %comp_is_true_37
  %greater_snake_result_37 = phi i64 [ -1, %comp_is_true_37 ], [ 9223372036854775807, %comp_is_false_37 ]
  br label %return
}

define i64 @lambda_28_(i64 %0, i64 %1, i64 %2, i64 %3) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %times_33

return:                                           ; preds = %continue_no_overflow_30
  ret i64 %plus_snake_result_3019

times_33:                                         ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_33, label %call_error_func

arg1_type_check_passed_33:                        ; preds = %times_33
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_33, label %call_error_func1

call_error_func:                                  ; preds = %times_33
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_33:                        ; preds = %arg1_type_check_passed_33
  %logical_shift_right = lshr i64 %1, 1
  %times_snake_result_33 = mul i64 %logical_shift_right, %2
  %div_res = sdiv i64 %times_snake_result_33, %1
  %shl_adjusted = shl i64 %div_res, 1
  %is_overflow = icmp ne i64 %shl_adjusted, %2
  %is_not_overflow = xor i1 %is_overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_33, label %call_error_func3

call_error_func1:                                 ; preds = %arg1_type_check_passed_33
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_33:                          ; preds = %arg2_type_check_passed_33
  %times_snake_result_335 = phi i64 [ %times_snake_result_33, %arg2_type_check_passed_33 ]
  br label %let_29

call_error_func3:                                 ; preds = %arg2_type_check_passed_33
  store i64 %times_snake_result_33, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 5)
  unreachable

let_29:                                           ; preds = %continue_no_overflow_33
  %binop_44 = alloca i64, align 8
  store i64 %times_snake_result_335, i64* %binop_44, align 4
  br label %plus_30

plus_30:                                          ; preds = %let_29
  %binop_446 = load i64, i64* %binop_44, align 4
  %tag_bits_of_arg17 = and i64 %binop_446, 1
  %is_arg1_int8 = icmp eq i64 %tag_bits_of_arg17, 0
  br i1 %is_arg1_int8, label %arg1_type_check_passed_30, label %call_error_func9

arg1_type_check_passed_30:                        ; preds = %plus_30
  %tag_bits_of_arg211 = and i64 %3, 1
  %is_arg2_int12 = icmp eq i64 %tag_bits_of_arg211, 0
  br i1 %is_arg2_int12, label %arg2_type_check_passed_30, label %call_error_func13

call_error_func9:                                 ; preds = %plus_30
  store i64 %binop_446, i64* @current_answer_ptr, align 4
  %error_call_return_val10 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_30:                        ; preds = %arg1_type_check_passed_30
  %plus_snake_result_30 = add i64 %binop_446, %3
  %r_ge_0 = icmp sge i64 %3, 0
  %l_ge_0 = icmp sge i64 %binop_446, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_30, %binop_446
  %sum_lt_r = icmp slt i64 %plus_snake_result_30, %3
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %3, 0
  %l_lt_015 = icmp slt i64 %binop_446, 0
  %negative_overflow = and i1 %l_lt_015, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_30, %binop_446
  %sum_gt_r = icmp sgt i64 %plus_snake_result_30, %3
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow16 = xor i1 %overflow, true
  br i1 %is_not_overflow16, label %continue_no_overflow_30, label %call_error_func17

call_error_func13:                                ; preds = %arg1_type_check_passed_30
  store i64 %3, i64* @current_answer_ptr, align 4
  %error_call_return_val14 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_30:                          ; preds = %arg2_type_check_passed_30
  %plus_snake_result_3019 = phi i64 [ %plus_snake_result_30, %arg2_type_check_passed_30 ]
  br label %return

call_error_func17:                                ; preds = %arg2_type_check_passed_30
  store i64 %plus_snake_result_30, i64* @current_answer_ptr, align 4
  %error_call_return_val18 = call i64 @error_func(i64 5)
  unreachable
}
