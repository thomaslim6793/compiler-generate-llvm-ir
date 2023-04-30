; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_61

create_lambda_closure_61:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_61 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_61, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_61, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_61, i32 0, i32 2
  store i64 (i64, i64)* @lambda_61_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_61 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_61 to i64
  %closure_tagged_tuple_addr_word_61 = add i64 %closure_addr_61, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_61
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_61, i64* %print_4, align 4
  br label %create_lambda_closure_58

create_lambda_closure_58:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_58 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_58, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_58, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_58, i32 0, i32 2
  store i64 (i64)* @lambda_58_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_58 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_58 to i64
  %closure_tagged_tuple_addr_word_58 = add i64 %closure_addr_58, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_58
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_58, i64* %input_11, align 4
  br label %create_lambda_closure_53

create_lambda_closure_53:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_53 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_53, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_53, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_53, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_53_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_53 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_53 to i64
  %closure_tagged_tuple_addr_word_53 = add i64 %closure_addr_53, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_53
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_53, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %square_26 = alloca i64, align 8
  br label %create_lambda_closure_49

create_lambda_closure_49:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_49 = bitcast i8* %malloccall3 to { i64 (i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_49, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64)*, i64 }, { i64 (i64, i64)*, i64 }* %closure_ptr_49, i32 0, i32 1
  store i64 (i64, i64)* @lambda_49_, i64 (i64, i64)** %9, align 8
  store i64 2, i64* %10, align 4
  %closure_addr_49 = ptrtoint { i64 (i64, i64)*, i64 }* %closure_ptr_49 to i64
  %closure_tagged_tuple_addr_word_49 = add i64 %closure_addr_49, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_49
  store i64 %closure_tagged_tuple_addr_word_49, i64* %square_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %max_34 = alloca i64, align 8
  br label %create_lambda_closure_37

create_lambda_closure_37:                         ; preds = %let_rec_5
  %max_344 = load i64, i64* %max_34, align 4
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_37 = bitcast i8* %malloccall5 to { i64 (i64, i64, i64)*, i64, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_37, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_37, i32 0, i32 1
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_37, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_37_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  store i64 %max_344, i64* %13, align 4
  %closure_addr_37 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_37 to i64
  %closure_tagged_tuple_addr_word_37 = add i64 %closure_addr_37, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_37
  store i64 %closure_tagged_tuple_addr_word_37, i64* %max_34, align 4
  %max_346 = load i64, i64* %max_34, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_37, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %14 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %max_346, i64* %14, align 4
  br label %let_rec_6

let_rec_6:                                        ; preds = %patch_let_rec_closures_5
  %composite_49 = alloca i64, align 8
  br label %create_lambda_closure_24

create_lambda_closure_24:                         ; preds = %let_rec_6
  %max_347 = load i64, i64* %max_34, align 4
  %square_268 = load i64, i64* %square_26, align 4
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_24 = bitcast i8* %malloccall9 to { i64 (i64, i64, i64)*, i64, i64, i64 }*
  %15 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_24, i32 0, i32 0
  %16 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_24, i32 0, i32 1
  %17 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_24, i32 0, i32 2
  %18 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_24, i32 0, i32 3
  store i64 (i64, i64, i64)* @lambda_24_, i64 (i64, i64, i64)** %15, align 8
  store i64 4, i64* %16, align 4
  store i64 %max_347, i64* %17, align 4
  store i64 %square_268, i64* %18, align 4
  %closure_addr_24 = ptrtoint { i64 (i64, i64, i64)*, i64, i64, i64 }* %closure_ptr_24 to i64
  %closure_tagged_tuple_addr_word_24 = add i64 %closure_addr_24, 5
  br label %patch_let_rec_closures_6

patch_let_rec_closures_6:                         ; preds = %create_lambda_closure_24
  store i64 %closure_tagged_tuple_addr_word_24, i64* %composite_49, align 4
  %max_3410 = load i64, i64* %max_34, align 4
  %untagged_closure_addr11 = sub i64 %closure_tagged_tuple_addr_word_24, 5
  %closure_ptr12 = inttoptr i64 %untagged_closure_addr11 to i64*
  %19 = getelementptr i64, i64* %closure_ptr12, i64 2
  store i64 %max_3410, i64* %19, align 4
  %square_2613 = load i64, i64* %square_26, align 4
  %untagged_closure_addr14 = sub i64 %closure_tagged_tuple_addr_word_24, 5
  %closure_ptr15 = inttoptr i64 %untagged_closure_addr14 to i64*
  %20 = getelementptr i64, i64* %closure_ptr15, i64 3
  store i64 %square_2613, i64* %20, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_6
  %composite_4916 = load i64, i64* %composite_49, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %composite_4916, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_20, label %call_error_func

is_closure_20:                                    ; preds = %function_call
  %untagged_closure_addr17 = sub i64 %composite_4916, 5
  %closure_ptr18 = inttoptr i64 %untagged_closure_addr17 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr18, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr18, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %21 = icmp eq i64 %arity, 4
  br i1 %21, label %is_correct_arity_20, label %call_error_func19

call_error_func:                                  ; preds = %function_call
  store i64 %composite_4916, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_20:                              ; preds = %is_closure_20
  %lambda_non_tail_call_result = call i64 %function(i64 %composite_4916, i64 -6, i64 6)
  br label %let_7

call_error_func19:                                ; preds = %is_closure_20
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 17)
  unreachable

let_7:                                            ; preds = %is_correct_arity_20
  %app_63 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_63, align 4
  br label %function_call21

function_call21:                                  ; preds = %let_7
  %print_422 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call23 = and i64 %print_422, 7
  %is_closure_of_func_to_call_closure24 = icmp eq i64 %tag_bits_of_closure_of_func_to_call23, 5
  br i1 %is_closure_of_func_to_call_closure24, label %is_closure_17, label %call_error_func25

is_closure_17:                                    ; preds = %function_call21
  %untagged_closure_addr27 = sub i64 %print_422, 5
  %closure_ptr28 = inttoptr i64 %untagged_closure_addr27 to i64*
  %function_code_ptr_as_i6429 = load i64, i64* %closure_ptr28, align 4
  %function30 = inttoptr i64 %function_code_ptr_as_i6429 to i64 (i64, i64)*
  %arity_ptr31 = getelementptr i64, i64* %closure_ptr28, i64 1
  %arity32 = load i64, i64* %arity_ptr31, align 4
  %22 = icmp eq i64 %arity32, 2
  br i1 %22, label %is_correct_arity_17, label %call_error_func33

call_error_func25:                                ; preds = %function_call21
  store i64 %print_422, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_17:                              ; preds = %is_closure_17
  %app_6335 = load i64, i64* %app_63, align 4
  %lambda_non_tail_call_result36 = call i64 %function30(i64 %print_422, i64 %app_6335)
  br label %let_8

call_error_func33:                                ; preds = %is_closure_17
  store i64 %arity32, i64* @current_answer_ptr, align 4
  %error_call_return_val34 = call i64 @error_func(i64 17)
  unreachable

let_8:                                            ; preds = %is_correct_arity_17
  %app_62 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result36, i64* %app_62, align 4
  br label %function_call37

function_call37:                                  ; preds = %let_8
  %composite_4938 = load i64, i64* %composite_49, align 4
  %tag_bits_of_closure_of_func_to_call39 = and i64 %composite_4938, 7
  %is_closure_of_func_to_call_closure40 = icmp eq i64 %tag_bits_of_closure_of_func_to_call39, 5
  br i1 %is_closure_of_func_to_call_closure40, label %is_closure_13, label %call_error_func41

is_closure_13:                                    ; preds = %function_call37
  %untagged_closure_addr43 = sub i64 %composite_4938, 5
  %closure_ptr44 = inttoptr i64 %untagged_closure_addr43 to i64*
  %function_code_ptr_as_i6445 = load i64, i64* %closure_ptr44, align 4
  %function46 = inttoptr i64 %function_code_ptr_as_i6445 to i64 (i64, i64, i64)*
  %arity_ptr47 = getelementptr i64, i64* %closure_ptr44, i64 1
  %arity48 = load i64, i64* %arity_ptr47, align 4
  %23 = icmp eq i64 %arity48, 4
  br i1 %23, label %is_correct_arity_13, label %call_error_func49

call_error_func41:                                ; preds = %function_call37
  store i64 %composite_4938, i64* @current_answer_ptr, align 4
  %error_call_return_val42 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_13:                              ; preds = %is_closure_13
  %lambda_non_tail_call_result51 = call i64 %function46(i64 %composite_4938, i64 8, i64 10)
  br label %let_9

call_error_func49:                                ; preds = %is_closure_13
  store i64 %arity48, i64* @current_answer_ptr, align 4
  %error_call_return_val50 = call i64 @error_func(i64 17)
  unreachable

let_9:                                            ; preds = %is_correct_arity_13
  %app_68 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result51, i64* %app_68, align 4
  br label %plus_10

plus_10:                                          ; preds = %let_9
  %app_6252 = load i64, i64* %app_62, align 4
  %app_6853 = load i64, i64* %app_68, align 4
  %tag_bits_of_arg1 = and i64 %app_6252, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_10, label %call_error_func54

arg1_type_check_passed_10:                        ; preds = %plus_10
  %tag_bits_of_arg2 = and i64 %app_6853, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_10, label %call_error_func56

call_error_func54:                                ; preds = %plus_10
  store i64 %app_6252, i64* @current_answer_ptr, align 4
  %error_call_return_val55 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_10:                        ; preds = %arg1_type_check_passed_10
  %plus_snake_result_10 = add i64 %app_6252, %app_6853
  %r_ge_0 = icmp sge i64 %app_6853, 0
  %l_ge_0 = icmp sge i64 %app_6252, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_10, %app_6252
  %sum_lt_r = icmp slt i64 %plus_snake_result_10, %app_6853
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %app_6853, 0
  %l_lt_058 = icmp slt i64 %app_6252, 0
  %negative_overflow = and i1 %l_lt_058, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_10, %app_6252
  %sum_gt_r = icmp sgt i64 %plus_snake_result_10, %app_6853
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_10, label %call_error_func59

call_error_func56:                                ; preds = %arg1_type_check_passed_10
  store i64 %app_6853, i64* @current_answer_ptr, align 4
  %error_call_return_val57 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_10:                          ; preds = %arg2_type_check_passed_10
  %plus_snake_result_1061 = phi i64 [ %plus_snake_result_10, %arg2_type_check_passed_10 ]
  br label %result

call_error_func59:                                ; preds = %arg2_type_check_passed_10
  store i64 %plus_snake_result_10, i64* @current_answer_ptr, align 4
  %error_call_return_val60 = call i64 @error_func(i64 5)
  unreachable

result:                                           ; preds = %continue_no_overflow_10
  ret i64 %plus_snake_result_1061
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

define i64 @lambda_61_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_62

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_62 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_58_(i64 %0) {
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
  ret i64 %input_tail_call_result_59

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_59 = tail call i64 @input()
  br label %return
}

define i64 @lambda_53_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_54

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_54 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_49_(i64 %0, i64 %1) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %times_50

return:                                           ; preds = %continue_no_overflow_50
  ret i64 %times_snake_result_505

times_50:                                         ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_50, label %call_error_func

arg1_type_check_passed_50:                        ; preds = %times_50
  %tag_bits_of_arg2 = and i64 %1, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_50, label %call_error_func1

call_error_func:                                  ; preds = %times_50
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_50:                        ; preds = %arg1_type_check_passed_50
  %logical_shift_right = lshr i64 %1, 1
  %times_snake_result_50 = mul i64 %logical_shift_right, %1
  %div_res = sdiv i64 %times_snake_result_50, %1
  %shl_adjusted = shl i64 %div_res, 1
  %is_overflow = icmp ne i64 %shl_adjusted, %1
  %is_not_overflow = xor i1 %is_overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_50, label %call_error_func3

call_error_func1:                                 ; preds = %arg1_type_check_passed_50
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_50:                          ; preds = %arg2_type_check_passed_50
  %times_snake_result_505 = phi i64 [ %times_snake_result_50, %arg2_type_check_passed_50 ]
  br label %return

call_error_func3:                                 ; preds = %arg2_type_check_passed_50
  store i64 %times_snake_result_50, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_37_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'max_34'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %greater_eq_46

return:                                           ; preds = %merge_then_else_39
  ret i64 %"if/else_snake_result_39"

greater_eq_46:                                    ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_46, label %call_error_func

arg1_type_check_passed_46:                        ; preds = %greater_eq_46
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_46, label %call_error_func1

call_error_func:                                  ; preds = %greater_eq_46
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_46:                        ; preds = %arg1_type_check_passed_46
  %greater_eq_llvm_result_46 = icmp sge i64 %1, %2
  br i1 %greater_eq_llvm_result_46, label %comp_is_true_46, label %comp_is_false_46

call_error_func1:                                 ; preds = %arg1_type_check_passed_46
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_46:                                  ; preds = %arg2_type_check_passed_46
  br label %merge_46

comp_is_false_46:                                 ; preds = %arg2_type_check_passed_46
  br label %merge_46

merge_46:                                         ; preds = %comp_is_false_46, %comp_is_true_46
  %greater_eq_snake_result_46 = phi i64 [ -1, %comp_is_true_46 ], [ 9223372036854775807, %comp_is_false_46 ]
  br label %let_38

let_38:                                           ; preds = %merge_46
  %binop_37 = alloca i64, align 8
  store i64 %greater_eq_snake_result_46, i64* %binop_37, align 4
  br label %if_else_39

if_else_39:                                       ; preds = %let_38
  %binop_373 = load i64, i64* %binop_37, align 4
  %tag_bits_of_cond_val = and i64 %binop_373, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_39, label %call_error_func4

continue_if_else_39:                              ; preds = %if_else_39
  %is_cond_true = icmp eq i64 %binop_373, -1
  br i1 %is_cond_true, label %then_39, label %else_39

call_error_func4:                                 ; preds = %if_else_39
  store i64 %binop_373, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_39:                                          ; preds = %continue_if_else_39
  br label %merge_then_else_39

else_39:                                          ; preds = %continue_if_else_39
  br label %function_call

merge_then_else_39:                               ; preds = %is_correct_arity_40, %then_39
  %"if/else_snake_result_39" = phi i64 [ %1, %then_39 ], [ %lambda_tail_call_result, %is_correct_arity_40 ]
  br label %return

function_call:                                    ; preds = %else_39
  %max_34 = load i64, i64* %"free_var_'max_34'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %max_34, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_40, label %call_error_func6

is_closure_40:                                    ; preds = %function_call
  %untagged_closure_addr8 = sub i64 %max_34, 5
  %closure_ptr9 = inttoptr i64 %untagged_closure_addr8 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr9, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr9, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 4
  br i1 %3, label %is_correct_arity_40, label %call_error_func10

call_error_func6:                                 ; preds = %function_call
  store i64 %max_34, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_40:                              ; preds = %is_closure_40
  %lambda_tail_call_result = tail call i64 %function(i64 %max_34, i64 %2, i64 %1)
  br label %merge_then_else_39

call_error_func10:                                ; preds = %is_closure_40
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 17)
  unreachable
}

define i64 @lambda_24_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'max_34'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  %"free_var_'square_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 3
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %function_call

return:                                           ; preds = %is_correct_arity_27
  ret i64 %lambda_tail_call_result

function_call:                                    ; preds = %lambda_body
  %square_26 = load i64, i64* %"free_var_'square_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %square_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_34, label %call_error_func

is_closure_34:                                    ; preds = %function_call
  %untagged_closure_addr1 = sub i64 %square_26, 5
  %closure_ptr2 = inttoptr i64 %untagged_closure_addr1 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr2, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr2, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 2
  br i1 %3, label %is_correct_arity_34, label %call_error_func3

call_error_func:                                  ; preds = %function_call
  store i64 %square_26, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_34:                              ; preds = %is_closure_34
  %lambda_non_tail_call_result = call i64 %function(i64 %square_26, i64 %1)
  br label %let_25

call_error_func3:                                 ; preds = %is_closure_34
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 17)
  unreachable

let_25:                                           ; preds = %is_correct_arity_34
  %app_52 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_52, align 4
  br label %function_call5

function_call5:                                   ; preds = %let_25
  %square_266 = load i64, i64* %"free_var_'square_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call7 = and i64 %square_266, 7
  %is_closure_of_func_to_call_closure8 = icmp eq i64 %tag_bits_of_closure_of_func_to_call7, 5
  br i1 %is_closure_of_func_to_call_closure8, label %is_closure_31, label %call_error_func9

is_closure_31:                                    ; preds = %function_call5
  %untagged_closure_addr11 = sub i64 %square_266, 5
  %closure_ptr12 = inttoptr i64 %untagged_closure_addr11 to i64*
  %function_code_ptr_as_i6413 = load i64, i64* %closure_ptr12, align 4
  %function14 = inttoptr i64 %function_code_ptr_as_i6413 to i64 (i64, i64)*
  %arity_ptr15 = getelementptr i64, i64* %closure_ptr12, i64 1
  %arity16 = load i64, i64* %arity_ptr15, align 4
  %4 = icmp eq i64 %arity16, 2
  br i1 %4, label %is_correct_arity_31, label %call_error_func17

call_error_func9:                                 ; preds = %function_call5
  store i64 %square_266, i64* @current_answer_ptr, align 4
  %error_call_return_val10 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_31:                              ; preds = %is_closure_31
  %lambda_non_tail_call_result19 = call i64 %function14(i64 %square_266, i64 %2)
  br label %let_26

call_error_func17:                                ; preds = %is_closure_31
  store i64 %arity16, i64* @current_answer_ptr, align 4
  %error_call_return_val18 = call i64 @error_func(i64 17)
  unreachable

let_26:                                           ; preds = %is_correct_arity_31
  %app_55 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result19, i64* %app_55, align 4
  br label %function_call20

function_call20:                                  ; preds = %let_26
  %max_34 = load i64, i64* %"free_var_'max_34'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call21 = and i64 %max_34, 7
  %is_closure_of_func_to_call_closure22 = icmp eq i64 %tag_bits_of_closure_of_func_to_call21, 5
  br i1 %is_closure_of_func_to_call_closure22, label %is_closure_27, label %call_error_func23

is_closure_27:                                    ; preds = %function_call20
  %untagged_closure_addr25 = sub i64 %max_34, 5
  %closure_ptr26 = inttoptr i64 %untagged_closure_addr25 to i64*
  %function_code_ptr_as_i6427 = load i64, i64* %closure_ptr26, align 4
  %function28 = inttoptr i64 %function_code_ptr_as_i6427 to i64 (i64, i64, i64)*
  %arity_ptr29 = getelementptr i64, i64* %closure_ptr26, i64 1
  %arity30 = load i64, i64* %arity_ptr29, align 4
  %5 = icmp eq i64 %arity30, 4
  br i1 %5, label %is_correct_arity_27, label %call_error_func31

call_error_func23:                                ; preds = %function_call20
  store i64 %max_34, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_27:                              ; preds = %is_closure_27
  %app_5233 = load i64, i64* %app_52, align 4
  %app_5534 = load i64, i64* %app_55, align 4
  %lambda_tail_call_result = tail call i64 %function28(i64 %max_34, i64 %app_5233, i64 %app_5534)
  br label %return

call_error_func31:                                ; preds = %is_closure_27
  store i64 %arity30, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 17)
  unreachable
}
