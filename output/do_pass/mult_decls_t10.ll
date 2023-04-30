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
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_49

create_lambda_closure_49:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_49 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_49, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_49, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_49_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  %closure_addr_49 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_49 to i64
  %closure_tagged_tuple_addr_word_49 = add i64 %closure_addr_49, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_49
  store i64 %closure_tagged_tuple_addr_word_49, i64* %f1_26, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_35 = alloca i64, align 8
  br label %create_lambda_closure_45

create_lambda_closure_45:                         ; preds = %let_rec_5
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_45 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64 }*
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_45, i32 0, i32 0
  %12 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_45, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_45_, i64 (i64, i64, i64)** %11, align 8
  store i64 4, i64* %12, align 4
  %closure_addr_45 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_45 to i64
  %closure_tagged_tuple_addr_word_45 = add i64 %closure_addr_45, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_45
  store i64 %closure_tagged_tuple_addr_word_45, i64* %f2_35, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_5
  %f1_265 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_265, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_41, label %call_error_func

is_closure_41:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %f1_265, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %13 = icmp eq i64 %arity, 4
  br i1 %13, label %is_correct_arity_41, label %call_error_func6

call_error_func:                                  ; preds = %function_call
  store i64 %f1_265, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_41:                              ; preds = %is_closure_41
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_265, i64 4, i64 6)
  br label %let_6

call_error_func6:                                 ; preds = %is_closure_41
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val7 = call i64 @error_func(i64 17)
  unreachable

let_6:                                            ; preds = %is_correct_arity_41
  %x_47 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %x_47, align 4
  br label %function_call8

function_call8:                                   ; preds = %let_6
  %f2_359 = load i64, i64* %f2_35, align 4
  %tag_bits_of_closure_of_func_to_call10 = and i64 %f2_359, 7
  %is_closure_of_func_to_call_closure11 = icmp eq i64 %tag_bits_of_closure_of_func_to_call10, 5
  br i1 %is_closure_of_func_to_call_closure11, label %is_closure_37, label %call_error_func12

is_closure_37:                                    ; preds = %function_call8
  %untagged_closure_addr14 = sub i64 %f2_359, 5
  %closure_ptr15 = inttoptr i64 %untagged_closure_addr14 to i64*
  %function_code_ptr_as_i6416 = load i64, i64* %closure_ptr15, align 4
  %function17 = inttoptr i64 %function_code_ptr_as_i6416 to i64 (i64, i64, i64)*
  %arity_ptr18 = getelementptr i64, i64* %closure_ptr15, i64 1
  %arity19 = load i64, i64* %arity_ptr18, align 4
  %14 = icmp eq i64 %arity19, 4
  br i1 %14, label %is_correct_arity_37, label %call_error_func20

call_error_func12:                                ; preds = %function_call8
  store i64 %f2_359, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_37:                              ; preds = %is_closure_37
  %lambda_non_tail_call_result22 = call i64 %function17(i64 %f2_359, i64 8, i64 10)
  br label %let_7

call_error_func20:                                ; preds = %is_closure_37
  store i64 %arity19, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 17)
  unreachable

let_7:                                            ; preds = %is_correct_arity_37
  %y_53 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result22, i64* %y_53, align 4
  br label %plus_34

plus_34:                                          ; preds = %let_7
  %x_4723 = load i64, i64* %x_47, align 4
  %y_5324 = load i64, i64* %y_53, align 4
  %tag_bits_of_arg1 = and i64 %x_4723, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_34, label %call_error_func25

arg1_type_check_passed_34:                        ; preds = %plus_34
  %tag_bits_of_arg2 = and i64 %y_5324, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_34, label %call_error_func27

call_error_func25:                                ; preds = %plus_34
  store i64 %x_4723, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_34:                        ; preds = %arg1_type_check_passed_34
  %plus_snake_result_34 = add i64 %x_4723, %y_5324
  %r_ge_0 = icmp sge i64 %y_5324, 0
  %l_ge_0 = icmp sge i64 %x_4723, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_34, %x_4723
  %sum_lt_r = icmp slt i64 %plus_snake_result_34, %y_5324
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %y_5324, 0
  %l_lt_029 = icmp slt i64 %x_4723, 0
  %negative_overflow = and i1 %l_lt_029, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_34, %x_4723
  %sum_gt_r = icmp sgt i64 %plus_snake_result_34, %y_5324
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_34, label %call_error_func30

call_error_func27:                                ; preds = %arg1_type_check_passed_34
  store i64 %y_5324, i64* @current_answer_ptr, align 4
  %error_call_return_val28 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_34:                          ; preds = %arg2_type_check_passed_34
  %plus_snake_result_3432 = phi i64 [ %plus_snake_result_34, %arg2_type_check_passed_34 ]
  br label %let_8

call_error_func30:                                ; preds = %arg2_type_check_passed_34
  store i64 %plus_snake_result_34, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 5)
  unreachable

let_8:                                            ; preds = %continue_no_overflow_34
  %x_44 = alloca i64, align 8
  store i64 %plus_snake_result_3432, i64* %x_44, align 4
  br label %let_9

let_9:                                            ; preds = %let_8
  %z_63 = alloca i64, align 8
  store i64 12, i64* %z_63, align 4
  br label %function_call33

function_call33:                                  ; preds = %let_9
  %f1_2634 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call35 = and i64 %f1_2634, 7
  %is_closure_of_func_to_call_closure36 = icmp eq i64 %tag_bits_of_closure_of_func_to_call35, 5
  br i1 %is_closure_of_func_to_call_closure36, label %is_closure_29, label %call_error_func37

is_closure_29:                                    ; preds = %function_call33
  %untagged_closure_addr39 = sub i64 %f1_2634, 5
  %closure_ptr40 = inttoptr i64 %untagged_closure_addr39 to i64*
  %function_code_ptr_as_i6441 = load i64, i64* %closure_ptr40, align 4
  %function42 = inttoptr i64 %function_code_ptr_as_i6441 to i64 (i64, i64, i64)*
  %arity_ptr43 = getelementptr i64, i64* %closure_ptr40, i64 1
  %arity44 = load i64, i64* %arity_ptr43, align 4
  %15 = icmp eq i64 %arity44, 4
  br i1 %15, label %is_correct_arity_29, label %call_error_func45

call_error_func37:                                ; preds = %function_call33
  store i64 %f1_2634, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_29:                              ; preds = %is_closure_29
  %lambda_non_tail_call_result47 = call i64 %function42(i64 %f1_2634, i64 4, i64 6)
  br label %let_10

call_error_func45:                                ; preds = %is_closure_29
  store i64 %arity44, i64* @current_answer_ptr, align 4
  %error_call_return_val46 = call i64 @error_func(i64 17)
  unreachable

let_10:                                           ; preds = %is_correct_arity_29
  %app_69 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result47, i64* %app_69, align 4
  br label %function_call48

function_call48:                                  ; preds = %let_10
  %f2_3549 = load i64, i64* %f2_35, align 4
  %tag_bits_of_closure_of_func_to_call50 = and i64 %f2_3549, 7
  %is_closure_of_func_to_call_closure51 = icmp eq i64 %tag_bits_of_closure_of_func_to_call50, 5
  br i1 %is_closure_of_func_to_call_closure51, label %is_closure_25, label %call_error_func52

is_closure_25:                                    ; preds = %function_call48
  %untagged_closure_addr54 = sub i64 %f2_3549, 5
  %closure_ptr55 = inttoptr i64 %untagged_closure_addr54 to i64*
  %function_code_ptr_as_i6456 = load i64, i64* %closure_ptr55, align 4
  %function57 = inttoptr i64 %function_code_ptr_as_i6456 to i64 (i64, i64, i64)*
  %arity_ptr58 = getelementptr i64, i64* %closure_ptr55, i64 1
  %arity59 = load i64, i64* %arity_ptr58, align 4
  %16 = icmp eq i64 %arity59, 4
  br i1 %16, label %is_correct_arity_25, label %call_error_func60

call_error_func52:                                ; preds = %function_call48
  store i64 %f2_3549, i64* @current_answer_ptr, align 4
  %error_call_return_val53 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_25:                              ; preds = %is_closure_25
  %lambda_non_tail_call_result62 = call i64 %function57(i64 %f2_3549, i64 4, i64 4)
  br label %let_11

call_error_func60:                                ; preds = %is_closure_25
  store i64 %arity59, i64* @current_answer_ptr, align 4
  %error_call_return_val61 = call i64 @error_func(i64 17)
  unreachable

let_11:                                           ; preds = %is_correct_arity_25
  %app_73 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result62, i64* %app_73, align 4
  br label %function_call63

function_call63:                                  ; preds = %let_11
  %f2_3564 = load i64, i64* %f2_35, align 4
  %tag_bits_of_closure_of_func_to_call65 = and i64 %f2_3564, 7
  %is_closure_of_func_to_call_closure66 = icmp eq i64 %tag_bits_of_closure_of_func_to_call65, 5
  br i1 %is_closure_of_func_to_call_closure66, label %is_closure_21, label %call_error_func67

is_closure_21:                                    ; preds = %function_call63
  %untagged_closure_addr69 = sub i64 %f2_3564, 5
  %closure_ptr70 = inttoptr i64 %untagged_closure_addr69 to i64*
  %function_code_ptr_as_i6471 = load i64, i64* %closure_ptr70, align 4
  %function72 = inttoptr i64 %function_code_ptr_as_i6471 to i64 (i64, i64, i64)*
  %arity_ptr73 = getelementptr i64, i64* %closure_ptr70, i64 1
  %arity74 = load i64, i64* %arity_ptr73, align 4
  %17 = icmp eq i64 %arity74, 4
  br i1 %17, label %is_correct_arity_21, label %call_error_func75

call_error_func67:                                ; preds = %function_call63
  store i64 %f2_3564, i64* @current_answer_ptr, align 4
  %error_call_return_val68 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_21:                              ; preds = %is_closure_21
  %app_6977 = load i64, i64* %app_69, align 4
  %app_7378 = load i64, i64* %app_73, align 4
  %lambda_non_tail_call_result79 = call i64 %function72(i64 %f2_3564, i64 %app_6977, i64 %app_7378)
  br label %let_12

call_error_func75:                                ; preds = %is_closure_21
  store i64 %arity74, i64* @current_answer_ptr, align 4
  %error_call_return_val76 = call i64 @error_func(i64 17)
  unreachable

let_12:                                           ; preds = %is_correct_arity_21
  %app_68 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result79, i64* %app_68, align 4
  br label %function_call80

function_call80:                                  ; preds = %let_12
  %f2_3581 = load i64, i64* %f2_35, align 4
  %tag_bits_of_closure_of_func_to_call82 = and i64 %f2_3581, 7
  %is_closure_of_func_to_call_closure83 = icmp eq i64 %tag_bits_of_closure_of_func_to_call82, 5
  br i1 %is_closure_of_func_to_call_closure83, label %is_closure_17, label %call_error_func84

is_closure_17:                                    ; preds = %function_call80
  %untagged_closure_addr86 = sub i64 %f2_3581, 5
  %closure_ptr87 = inttoptr i64 %untagged_closure_addr86 to i64*
  %function_code_ptr_as_i6488 = load i64, i64* %closure_ptr87, align 4
  %function89 = inttoptr i64 %function_code_ptr_as_i6488 to i64 (i64, i64, i64)*
  %arity_ptr90 = getelementptr i64, i64* %closure_ptr87, i64 1
  %arity91 = load i64, i64* %arity_ptr90, align 4
  %18 = icmp eq i64 %arity91, 4
  br i1 %18, label %is_correct_arity_17, label %call_error_func92

call_error_func84:                                ; preds = %function_call80
  store i64 %f2_3581, i64* @current_answer_ptr, align 4
  %error_call_return_val85 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_17:                              ; preds = %is_closure_17
  %z_6394 = load i64, i64* %z_63, align 4
  %app_6895 = load i64, i64* %app_68, align 4
  %lambda_non_tail_call_result96 = call i64 %function89(i64 %f2_3581, i64 %z_6394, i64 %app_6895)
  br label %let_13

call_error_func92:                                ; preds = %is_closure_17
  store i64 %arity91, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 17)
  unreachable

let_13:                                           ; preds = %is_correct_arity_17
  %app_66 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result96, i64* %app_66, align 4
  br label %plus_14

plus_14:                                          ; preds = %let_13
  %app_6697 = load i64, i64* %app_66, align 4
  %x_4498 = load i64, i64* %x_44, align 4
  %tag_bits_of_arg199 = and i64 %app_6697, 1
  %is_arg1_int100 = icmp eq i64 %tag_bits_of_arg199, 0
  br i1 %is_arg1_int100, label %arg1_type_check_passed_14, label %call_error_func101

arg1_type_check_passed_14:                        ; preds = %plus_14
  %tag_bits_of_arg2103 = and i64 %x_4498, 1
  %is_arg2_int104 = icmp eq i64 %tag_bits_of_arg2103, 0
  br i1 %is_arg2_int104, label %arg2_type_check_passed_14, label %call_error_func105

call_error_func101:                               ; preds = %plus_14
  store i64 %app_6697, i64* @current_answer_ptr, align 4
  %error_call_return_val102 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_14:                        ; preds = %arg1_type_check_passed_14
  %plus_snake_result_14 = add i64 %app_6697, %x_4498
  %r_ge_0107 = icmp sge i64 %x_4498, 0
  %l_ge_0108 = icmp sge i64 %app_6697, 0
  %positive_overflow109 = and i1 %l_ge_0108, %r_ge_0107
  %sum_lt_l110 = icmp slt i64 %plus_snake_result_14, %app_6697
  %sum_lt_r111 = icmp slt i64 %plus_snake_result_14, %x_4498
  %overflow_on_positive112 = or i1 %sum_lt_l110, %sum_lt_r111
  %l_lt_0113 = icmp slt i64 %x_4498, 0
  %l_lt_0114 = icmp slt i64 %app_6697, 0
  %negative_overflow115 = and i1 %l_lt_0114, %l_lt_0113
  %sum_gt_l116 = icmp sgt i64 %plus_snake_result_14, %app_6697
  %sum_gt_r117 = icmp sgt i64 %plus_snake_result_14, %x_4498
  %overflow_on_negative118 = or i1 %sum_gt_l116, %sum_gt_r117
  %negative_check119 = and i1 %negative_overflow115, %overflow_on_negative118
  %positive_check120 = and i1 %positive_overflow109, %overflow_on_positive112
  %overflow121 = or i1 %positive_check120, %negative_check119
  %is_not_overflow122 = xor i1 %overflow121, true
  br i1 %is_not_overflow122, label %continue_no_overflow_14, label %call_error_func123

call_error_func105:                               ; preds = %arg1_type_check_passed_14
  store i64 %x_4498, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_14:                          ; preds = %arg2_type_check_passed_14
  %plus_snake_result_14125 = phi i64 [ %plus_snake_result_14, %arg2_type_check_passed_14 ]
  br label %result

call_error_func123:                               ; preds = %arg2_type_check_passed_14
  store i64 %plus_snake_result_14, i64* @current_answer_ptr, align 4
  %error_call_return_val124 = call i64 @error_func(i64 5)
  unreachable

result:                                           ; preds = %continue_no_overflow_14
  ret i64 %plus_snake_result_14125
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

define i64 @lambda_49_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %plus_50

return:                                           ; preds = %continue_no_overflow_50
  ret i64 %plus_snake_result_506

plus_50:                                          ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_50, label %call_error_func

arg1_type_check_passed_50:                        ; preds = %plus_50
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_50, label %call_error_func1

call_error_func:                                  ; preds = %plus_50
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_50:                        ; preds = %arg1_type_check_passed_50
  %plus_snake_result_50 = add i64 %1, %2
  %r_ge_0 = icmp sge i64 %2, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_50, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_50, %2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %2, 0
  %l_lt_03 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_03, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_50, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_50, %2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_50, label %call_error_func4

call_error_func1:                                 ; preds = %arg1_type_check_passed_50
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_50:                          ; preds = %arg2_type_check_passed_50
  %plus_snake_result_506 = phi i64 [ %plus_snake_result_50, %arg2_type_check_passed_50 ]
  br label %return

call_error_func4:                                 ; preds = %arg2_type_check_passed_50
  store i64 %plus_snake_result_50, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 5)
  unreachable
}

define i64 @lambda_45_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %times_46

return:                                           ; preds = %continue_no_overflow_46
  ret i64 %times_snake_result_465

times_46:                                         ; preds = %lambda_body
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_46, label %call_error_func

arg1_type_check_passed_46:                        ; preds = %times_46
  %tag_bits_of_arg2 = and i64 %2, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_46, label %call_error_func1

call_error_func:                                  ; preds = %times_46
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_46:                        ; preds = %arg1_type_check_passed_46
  %logical_shift_right = lshr i64 %1, 1
  %times_snake_result_46 = mul i64 %logical_shift_right, %2
  %div_res = sdiv i64 %times_snake_result_46, %1
  %shl_adjusted = shl i64 %div_res, 1
  %is_overflow = icmp ne i64 %shl_adjusted, %2
  %is_not_overflow = xor i1 %is_overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_46, label %call_error_func3

call_error_func1:                                 ; preds = %arg1_type_check_passed_46
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_46:                          ; preds = %arg2_type_check_passed_46
  %times_snake_result_465 = phi i64 [ %times_snake_result_46, %arg2_type_check_passed_46 ]
  br label %return

call_error_func3:                                 ; preds = %arg2_type_check_passed_46
  store i64 %times_snake_result_46, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 5)
  unreachable
}
