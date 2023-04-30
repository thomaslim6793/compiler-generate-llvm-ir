; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_45

create_lambda_closure_45:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_45 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_45, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_45, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_45, i32 0, i32 2
  store i64 (i64, i64)* @lambda_45_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_45 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_45 to i64
  %closure_tagged_tuple_addr_word_45 = add i64 %closure_addr_45, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_45
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_45, i64* %print_4, align 4
  br label %create_lambda_closure_42

create_lambda_closure_42:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_42 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_42, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_42, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_42, i32 0, i32 2
  store i64 (i64)* @lambda_42_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_42 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_42 to i64
  %closure_tagged_tuple_addr_word_42 = add i64 %closure_addr_42, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_42
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_42, i64* %input_11, align 4
  br label %create_lambda_closure_37

create_lambda_closure_37:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_37 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_37, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_37, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_37, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_37_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_37 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_37 to i64
  %closure_tagged_tuple_addr_word_37 = add i64 %closure_addr_37, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_37
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_37, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_21

create_lambda_closure_21:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_21 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_21, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_21, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_21_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  %closure_addr_21 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_21 to i64
  %closure_tagged_tuple_addr_word_21 = add i64 %closure_addr_21, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_21
  store i64 %closure_tagged_tuple_addr_word_21, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_47 = alloca i64, align 8
  br label %create_lambda_closure_10

create_lambda_closure_10:                         ; preds = %let_rec_5
  %f1_264 = load i64, i64* %f1_26, align 4
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_10 = bitcast i8* %malloccall5 to { i64 (i64, i64, i64)*, i64, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_10, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_10, i32 0, i32 1
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_10, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_10_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  store i64 %f1_264, i64* %13, align 4
  %closure_addr_10 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_10 to i64
  %closure_tagged_tuple_addr_word_10 = add i64 %closure_addr_10, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_10
  store i64 %closure_tagged_tuple_addr_word_10, i64* %f2_47, align 4
  %f1_266 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_10, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %14 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_266, i64* %14, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f2_477 = load i64, i64* %f2_47, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f2_477, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_6, label %call_error_func

is_closure_6:                                     ; preds = %function_call
  %untagged_closure_addr8 = sub i64 %f2_477, 5
  %closure_ptr9 = inttoptr i64 %untagged_closure_addr8 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr9, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr9, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %15 = icmp eq i64 %arity, 4
  br i1 %15, label %is_correct_arity_6, label %call_error_func10

call_error_func:                                  ; preds = %function_call
  store i64 %f2_477, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_6:                               ; preds = %is_closure_6
  %lambda_tail_call_result = tail call i64 %function(i64 %f2_477, i64 2, i64 4)
  br label %result

call_error_func10:                                ; preds = %is_closure_6
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 17)
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

define i64 @lambda_45_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_46

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_46 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_42_(i64 %0) {
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
  ret i64 %input_tail_call_result_43

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_43 = tail call i64 @input()
  br label %return
}

define i64 @lambda_37_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_38

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_38 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_21_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %let_22

return:                                           ; preds = %continue_no_overflow_26
  ret i64 %plus_snake_result_2664

let_22:                                           ; preds = %lambda_body
  %x1_30 = alloca i64, align 8
  store i64 6, i64* %x1_30, align 4
  br label %let_23

let_23:                                           ; preds = %let_22
  %x2_34 = alloca i64, align 8
  store i64 8, i64* %x2_34, align 4
  br label %plus_32

plus_32:                                          ; preds = %let_23
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_32, label %call_error_func

arg1_type_check_passed_32:                        ; preds = %plus_32
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_32, label %call_error_func1

call_error_func:                                  ; preds = %plus_32
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_32:                        ; preds = %arg1_type_check_passed_32
  %plus_snake_result_32 = add i64 %1, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_32, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_32, %2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %l_lt_03 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_03, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_32, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_32, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_32, label %call_error_func4

call_error_func1:                                 ; preds = %arg1_type_check_passed_32
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_32:                          ; preds = %arg2_type_check_passed_32
  %plus_snake_result_326 = phi i64 [ %plus_snake_result_32, %arg2_type_check_passed_32 ]
  br label %let_24

call_error_func4:                                 ; preds = %arg2_type_check_passed_32
  store i64 %plus_snake_result_32, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 5)
  unreachable

let_24:                                           ; preds = %continue_no_overflow_32
  %binop_38 = alloca i64, align 8
  store i64 %plus_snake_result_326, i64* %binop_38, align 4
  br label %plus_29

plus_29:                                          ; preds = %let_24
  %binop_387 = load i64, i64* %binop_38, align 4
  %x1_308 = load i64, i64* %x1_30, align 4
  %tag_bits_of_arg19 = and i64 %binop_387, 1
  %is_arg1_int10 = icmp eq i64 %tag_bits_of_arg19, 0
  br i1 %is_arg1_int10, label %arg1_type_check_passed_29, label %call_error_func11

arg1_type_check_passed_29:                        ; preds = %plus_29
  %tag_bits_of_arg213 = and i64 %x1_308, 1
  %is_arg2_int14 = icmp eq i64 %tag_bits_of_arg213, 0
  br i1 %is_arg2_int14, label %arg2_type_check_passed_29, label %call_error_func15

call_error_func11:                                ; preds = %plus_29
  store i64 %binop_387, i64* @current_answer_ptr, align 4
  %error_call_return_val12 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_29:                        ; preds = %arg1_type_check_passed_29
  %plus_snake_result_29 = add i64 %binop_387, %x1_308
  %r_ge_017 = icmp sge i64 %x1_308, 0
  %l_ge_018 = icmp sge i64 %binop_387, 0
  %positive_overflow19 = and i1 %l_ge_018, %r_ge_017
  %sum_lt_l20 = icmp slt i64 %plus_snake_result_29, %binop_387
  %sum_lt_r21 = icmp slt i64 %plus_snake_result_29, %x1_308
  %overflow_on_positive22 = or i1 %sum_lt_l20, %sum_lt_r21
  %l_lt_023 = icmp slt i64 %x1_308, 0
  %l_lt_024 = icmp slt i64 %binop_387, 0
  %negative_overflow25 = and i1 %l_lt_024, %l_lt_023
  %sum_gt_l26 = icmp sgt i64 %plus_snake_result_29, %binop_387
  %sum_gt_r27 = icmp sgt i64 %plus_snake_result_29, %x1_308
  %overflow_on_negative28 = or i1 %sum_gt_l26, %sum_gt_r27
  %negative_check29 = and i1 %negative_overflow25, %overflow_on_negative28
  %positive_check30 = and i1 %positive_overflow19, %overflow_on_positive22
  %overflow31 = or i1 %positive_check30, %negative_check29
  %is_not_overflow32 = xor i1 %overflow31, true
  br i1 %is_not_overflow32, label %continue_no_overflow_29, label %call_error_func33

call_error_func15:                                ; preds = %arg1_type_check_passed_29
  store i64 %x1_308, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_29:                          ; preds = %arg2_type_check_passed_29
  %plus_snake_result_2935 = phi i64 [ %plus_snake_result_29, %arg2_type_check_passed_29 ]
  br label %let_25

call_error_func33:                                ; preds = %arg2_type_check_passed_29
  store i64 %plus_snake_result_29, i64* @current_answer_ptr, align 4
  %error_call_return_val34 = call i64 @error_func(i64 5)
  unreachable

let_25:                                           ; preds = %continue_no_overflow_29
  %binop_37 = alloca i64, align 8
  store i64 %plus_snake_result_2935, i64* %binop_37, align 4
  br label %plus_26

plus_26:                                          ; preds = %let_25
  %binop_3736 = load i64, i64* %binop_37, align 4
  %x2_3437 = load i64, i64* %x2_34, align 4
  %tag_bits_of_arg138 = and i64 %binop_3736, 1
  %is_arg1_int39 = icmp eq i64 %tag_bits_of_arg138, 0
  br i1 %is_arg1_int39, label %arg1_type_check_passed_26, label %call_error_func40

arg1_type_check_passed_26:                        ; preds = %plus_26
  %tag_bits_of_arg242 = and i64 %x2_3437, 1
  %is_arg2_int43 = icmp eq i64 %tag_bits_of_arg242, 0
  br i1 %is_arg2_int43, label %arg2_type_check_passed_26, label %call_error_func44

call_error_func40:                                ; preds = %plus_26
  store i64 %binop_3736, i64* @current_answer_ptr, align 4
  %error_call_return_val41 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_26:                        ; preds = %arg1_type_check_passed_26
  %plus_snake_result_26 = add i64 %binop_3736, %x2_3437
  %r_ge_046 = icmp sge i64 %x2_3437, 0
  %l_ge_047 = icmp sge i64 %binop_3736, 0
  %positive_overflow48 = and i1 %l_ge_047, %r_ge_046
  %sum_lt_l49 = icmp slt i64 %plus_snake_result_26, %binop_3736
  %sum_lt_r50 = icmp slt i64 %plus_snake_result_26, %x2_3437
  %overflow_on_positive51 = or i1 %sum_lt_l49, %sum_lt_r50
  %l_lt_052 = icmp slt i64 %x2_3437, 0
  %l_lt_053 = icmp slt i64 %binop_3736, 0
  %negative_overflow54 = and i1 %l_lt_053, %l_lt_052
  %sum_gt_l55 = icmp sgt i64 %plus_snake_result_26, %binop_3736
  %sum_gt_r56 = icmp sgt i64 %plus_snake_result_26, %x2_3437
  %overflow_on_negative57 = or i1 %sum_gt_l55, %sum_gt_r56
  %negative_check58 = and i1 %negative_overflow54, %overflow_on_negative57
  %positive_check59 = and i1 %positive_overflow48, %overflow_on_positive51
  %overflow60 = or i1 %positive_check59, %negative_check58
  %is_not_overflow61 = xor i1 %overflow60, true
  br i1 %is_not_overflow61, label %continue_no_overflow_26, label %call_error_func62

call_error_func44:                                ; preds = %arg1_type_check_passed_26
  store i64 %x2_3437, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_26:                          ; preds = %arg2_type_check_passed_26
  %plus_snake_result_2664 = phi i64 [ %plus_snake_result_26, %arg2_type_check_passed_26 ]
  br label %return

call_error_func62:                                ; preds = %arg2_type_check_passed_26
  store i64 %plus_snake_result_26, i64* @current_answer_ptr, align 4
  %error_call_return_val63 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_10_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %let_11

return:                                           ; preds = %is_correct_arity_13
  ret i64 %lambda_tail_call_result

let_11:                                           ; preds = %lambda_body
  %x1_51 = alloca i64, align 8
  store i64 6, i64* %x1_51, align 4
  br label %plus_17

plus_17:                                          ; preds = %let_11
  %x1_511 = load i64, i64* %x1_51, align 4
  %tag_bits_of_arg1 = and i64 %2, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_17, label %call_error_func

arg1_type_check_passed_17:                        ; preds = %plus_17
  %tag_bits_of_arg2 = and i64 %x1_511, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_17, label %call_error_func2

call_error_func:                                  ; preds = %plus_17
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_17:                        ; preds = %arg1_type_check_passed_17
  %plus_snake_result_17 = add i64 %2, %x1_511
  %r_ge_0 = icmp sge i64 %x1_511, 0
  %l_ge_0 = icmp sge i64 %2, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_17, %2
  %sum_lt_r = icmp slt i64 %plus_snake_result_17, %x1_511
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x1_511, 0
  %l_lt_04 = icmp slt i64 %2, 0
  %negative_overflow = and i1 %l_lt_04, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_17, %2
  %sum_gt_r = icmp sgt i64 %plus_snake_result_17, %x1_511
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_17, label %call_error_func5

call_error_func2:                                 ; preds = %arg1_type_check_passed_17
  store i64 %x1_511, i64* @current_answer_ptr, align 4
  %error_call_return_val3 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_17:                          ; preds = %arg2_type_check_passed_17
  %plus_snake_result_177 = phi i64 [ %plus_snake_result_17, %arg2_type_check_passed_17 ]
  br label %let_12

call_error_func5:                                 ; preds = %arg2_type_check_passed_17
  store i64 %plus_snake_result_17, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 5)
  unreachable

let_12:                                           ; preds = %continue_no_overflow_17
  %binop_55 = alloca i64, align 8
  store i64 %plus_snake_result_177, i64* %binop_55, align 4
  br label %function_call

function_call:                                    ; preds = %let_12
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_13, label %call_error_func8

is_closure_13:                                    ; preds = %function_call
  %untagged_closure_addr10 = sub i64 %f1_26, 5
  %closure_ptr11 = inttoptr i64 %untagged_closure_addr10 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr11, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr11, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %3 = icmp eq i64 %arity, 4
  br i1 %3, label %is_correct_arity_13, label %call_error_func12

call_error_func8:                                 ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_13:                              ; preds = %is_closure_13
  %binop_5514 = load i64, i64* %binop_55, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %binop_5514)
  br label %return

call_error_func12:                                ; preds = %is_closure_13
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 17)
  unreachable
}
