; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_110

create_lambda_closure_110:                        ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_110 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_110, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_110, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_110, i32 0, i32 2
  store i64 (i64, i64)* @lambda_110_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_110 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_110 to i64
  %closure_tagged_tuple_addr_word_110 = add i64 %closure_addr_110, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_110
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_110, i64* %print_4, align 4
  br label %create_lambda_closure_107

create_lambda_closure_107:                        ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_107 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_107, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_107, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_107, i32 0, i32 2
  store i64 (i64)* @lambda_107_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_107 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_107 to i64
  %closure_tagged_tuple_addr_word_107 = add i64 %closure_addr_107, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_107
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_107, i64* %input_11, align 4
  br label %create_lambda_closure_102

create_lambda_closure_102:                        ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_102 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_102, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_102, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_102, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_102_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_102 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_102 to i64
  %closure_tagged_tuple_addr_word_102 = add i64 %closure_addr_102, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_102
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_102, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_46

create_lambda_closure_46:                         ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_46 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_46, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_46, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_46, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_46_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_46 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_46 to i64
  %closure_tagged_tuple_addr_word_46 = add i64 %closure_addr_46, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_46
  store i64 %closure_tagged_tuple_addr_word_46, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_46, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_78 = alloca i64, align 8
  br label %create_lambda_closure_29

create_lambda_closure_29:                         ; preds = %let_rec_5
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_29 = bitcast i8* %malloccall6 to { i64 (i64, i64, i64)*, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_29, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_29, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_29_, i64 (i64, i64, i64)** %13, align 8
  store i64 4, i64* %14, align 4
  %closure_addr_29 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_29 to i64
  %closure_tagged_tuple_addr_word_29 = add i64 %closure_addr_29, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_29
  store i64 %closure_tagged_tuple_addr_word_29, i64* %f2_78, align 4
  br label %construct_tuple_26

construct_tuple_26:                               ; preds = %patch_let_rec_closures_5
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_26 = bitcast i8* %malloccall7 to { i64, i64, i64 }*
  %15 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_26, i32 0, i32 0
  %16 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_26, i32 0, i32 1
  %17 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_26, i32 0, i32 2
  store i64 4, i64* %15, align 4
  store i64 2, i64* %16, align 4
  store i64 2, i64* %17, align 4
  %tuple_addr_26 = ptrtoint { i64, i64, i64 }* %tuple_ptr_26 to i64
  %tuple_tagged_tuple_addr_word_26 = add i64 %tuple_addr_26, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_26
  %tuple_111 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_26, i64* %tuple_111, align 4
  br label %construct_tuple_22

construct_tuple_22:                               ; preds = %let_6
  %tuple_1118 = load i64, i64* %tuple_111, align 4
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_22 = bitcast i8* %malloccall9 to { i64, i64, i64, i64 }*
  %18 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_22, i32 0, i32 0
  %19 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_22, i32 0, i32 1
  %20 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_22, i32 0, i32 2
  %21 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_22, i32 0, i32 3
  store i64 6, i64* %18, align 4
  store i64 2, i64* %19, align 4
  store i64 %tuple_1118, i64* %20, align 4
  store i64 2, i64* %21, align 4
  %tuple_addr_22 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_22 to i64
  %tuple_tagged_tuple_addr_word_22 = add i64 %tuple_addr_22, 1
  br label %let_7

let_7:                                            ; preds = %construct_tuple_22
  %tuple_109 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_22, i64* %tuple_109, align 4
  br label %function_call

function_call:                                    ; preds = %let_7
  %f1_2610 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_2610, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_18, label %call_error_func

is_closure_18:                                    ; preds = %function_call
  %untagged_closure_addr11 = sub i64 %f1_2610, 5
  %closure_ptr12 = inttoptr i64 %untagged_closure_addr11 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr12, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr12, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %22 = icmp eq i64 %arity, 4
  br i1 %22, label %is_correct_arity_18, label %call_error_func13

call_error_func:                                  ; preds = %function_call
  store i64 %f1_2610, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_18:                              ; preds = %is_closure_18
  %tuple_10915 = load i64, i64* %tuple_109, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_2610, i64 2, i64 %tuple_10915)
  br label %let_8

call_error_func13:                                ; preds = %is_closure_18
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val14 = call i64 @error_func(i64 17)
  unreachable

let_8:                                            ; preds = %is_correct_arity_18
  %app_107 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_107, align 4
  br label %let_9

let_9:                                            ; preds = %let_8
  %x_119 = alloca i64, align 8
  store i64 4, i64* %x_119, align 4
  br label %construct_tuple_14

construct_tuple_14:                               ; preds = %let_9
  %x_11916 = load i64, i64* %x_119, align 4
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_14 = bitcast i8* %malloccall17 to { i64, i64, i64 }*
  %23 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_14, i32 0, i32 0
  %24 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_14, i32 0, i32 1
  %25 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_14, i32 0, i32 2
  store i64 4, i64* %23, align 4
  store i64 %x_11916, i64* %24, align 4
  store i64 6, i64* %25, align 4
  %tuple_addr_14 = ptrtoint { i64, i64, i64 }* %tuple_ptr_14 to i64
  %tuple_tagged_tuple_addr_word_14 = add i64 %tuple_addr_14, 1
  br label %let_10

let_10:                                           ; preds = %construct_tuple_14
  %tuple_124 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_14, i64* %tuple_124, align 4
  br label %plus_11

plus_11:                                          ; preds = %let_10
  br i1 true, label %arg1_type_check_passed_11, label %call_error_func18

arg1_type_check_passed_11:                        ; preds = %plus_11
  br i1 true, label %arg2_type_check_passed_11, label %call_error_func20

call_error_func18:                                ; preds = %plus_11
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val19 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_11:                        ; preds = %arg1_type_check_passed_11
  br i1 true, label %continue_no_overflow_11, label %call_error_func22

call_error_func20:                                ; preds = %arg1_type_check_passed_11
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_11:                          ; preds = %arg2_type_check_passed_11
  %plus_snake_result_11 = phi i64 [ 6, %arg2_type_check_passed_11 ]
  br label %result

call_error_func22:                                ; preds = %arg2_type_check_passed_11
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val23 = call i64 @error_func(i64 5)
  unreachable

result:                                           ; preds = %continue_no_overflow_11
  ret i64 %plus_snake_result_11
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

define i64 @lambda_110_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_111

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_111 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_107_(i64 %0) {
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
  ret i64 %input_tail_call_result_108

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_108 = tail call i64 @input()
  br label %return
}

define i64 @lambda_102_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_103

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_103 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_46_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_99

return:                                           ; preds = %merge_then_else_54
  ret i64 %"if/else_snake_result_54"

get_item_99:                                      ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_99, label %call_error_func

it_not_nil_99:                                    ; preds = %get_item_99
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_99, label %call_error_func1

call_error_func:                                  ; preds = %get_item_99
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_99:                                   ; preds = %it_not_nil_99
  br i1 true, label %it_is_integer_99, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_99
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_99:                                 ; preds = %it_is_tuple_99
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_99, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_99
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_99:                           ; preds = %it_is_integer_99
  br i1 true, label %index_is_not_negative_99, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_99
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_99:                         ; preds = %index_is_less_tha_n_99
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_47

call_error_func7:                                 ; preds = %index_is_less_tha_n_99
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_47:                                           ; preds = %index_is_not_negative_99
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_96

get_item_96:                                      ; preds = %let_47
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_96, label %call_error_func10

it_not_nil_96:                                    ; preds = %get_item_96
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_96, label %call_error_func14

call_error_func10:                                ; preds = %get_item_96
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_96:                                   ; preds = %it_not_nil_96
  br i1 true, label %it_is_integer_96, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_96
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_96:                                 ; preds = %it_is_tuple_96
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_96, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_96
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_96:                           ; preds = %it_is_integer_96
  br i1 true, label %index_is_not_negative_96, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_96
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_96:                         ; preds = %index_is_less_tha_n_96
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_48

call_error_func25:                                ; preds = %index_is_less_tha_n_96
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_48:                                           ; preds = %index_is_not_negative_96
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_93

get_item_93:                                      ; preds = %let_48
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_93, label %call_error_func31

it_not_nil_93:                                    ; preds = %get_item_93
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_93, label %call_error_func35

call_error_func31:                                ; preds = %get_item_93
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_93:                                   ; preds = %it_not_nil_93
  br i1 true, label %it_is_integer_93, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_93
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_93:                                 ; preds = %it_is_tuple_93
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_93, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_93
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_93:                           ; preds = %it_is_integer_93
  br i1 true, label %index_is_not_negative_93, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_93
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_93:                         ; preds = %index_is_less_tha_n_93
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_49

call_error_func46:                                ; preds = %index_is_less_tha_n_93
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_49:                                           ; preds = %index_is_not_negative_93
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_90

get_item_90:                                      ; preds = %let_49
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_90, label %call_error_func51

it_not_nil_90:                                    ; preds = %get_item_90
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_90, label %call_error_func55

call_error_func51:                                ; preds = %get_item_90
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_90:                                   ; preds = %it_not_nil_90
  br i1 true, label %it_is_integer_90, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_90
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_90:                                 ; preds = %it_is_tuple_90
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_90, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_90
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_90:                           ; preds = %it_is_integer_90
  br i1 true, label %index_is_not_negative_90, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_90
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_90:                         ; preds = %index_is_less_tha_n_90
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_50

call_error_func66:                                ; preds = %index_is_less_tha_n_90
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_50:                                           ; preds = %index_is_not_negative_90
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_87

get_item_87:                                      ; preds = %let_50
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_87, label %call_error_func72

it_not_nil_87:                                    ; preds = %get_item_87
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_87, label %call_error_func76

call_error_func72:                                ; preds = %get_item_87
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_87:                                   ; preds = %it_not_nil_87
  br i1 true, label %it_is_integer_87, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_87
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_87:                                 ; preds = %it_is_tuple_87
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_87, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_87
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_87:                           ; preds = %it_is_integer_87
  br i1 true, label %index_is_not_negative_87, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_87
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_87:                         ; preds = %index_is_less_tha_n_87
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_51

call_error_func87:                                ; preds = %index_is_less_tha_n_87
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_51:                                           ; preds = %index_is_not_negative_87
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_84

get_item_84:                                      ; preds = %let_51
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_84, label %call_error_func92

it_not_nil_84:                                    ; preds = %get_item_84
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_84, label %call_error_func96

call_error_func92:                                ; preds = %get_item_84
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_84:                                   ; preds = %it_not_nil_84
  br i1 true, label %it_is_integer_84, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_84
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_84:                                 ; preds = %it_is_tuple_84
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_84, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_84
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_84:                           ; preds = %it_is_integer_84
  br i1 true, label %index_is_not_negative_84, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_84
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_84:                         ; preds = %index_is_less_tha_n_84
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_52

call_error_func107:                               ; preds = %index_is_less_tha_n_84
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_52:                                           ; preds = %index_is_not_negative_84
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %greater_eq_81

greater_eq_81:                                    ; preds = %let_52
  %x5_49111 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1 = and i64 %x5_49111, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_81, label %call_error_func112

arg1_type_check_passed_81:                        ; preds = %greater_eq_81
  br i1 true, label %arg2_type_check_passed_81, label %call_error_func114

call_error_func112:                               ; preds = %greater_eq_81
  store i64 %x5_49111, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_81:                        ; preds = %arg1_type_check_passed_81
  %greater_eq_llvm_result_81 = icmp sge i64 %x5_49111, 20
  br i1 %greater_eq_llvm_result_81, label %comp_is_true_81, label %comp_is_false_81

call_error_func114:                               ; preds = %arg1_type_check_passed_81
  store i64 20, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_81:                                  ; preds = %arg2_type_check_passed_81
  br label %merge_81

comp_is_false_81:                                 ; preds = %arg2_type_check_passed_81
  br label %merge_81

merge_81:                                         ; preds = %comp_is_false_81, %comp_is_true_81
  %greater_eq_snake_result_81 = phi i64 [ -1, %comp_is_true_81 ], [ 9223372036854775807, %comp_is_false_81 ]
  br label %let_53

let_53:                                           ; preds = %merge_81
  %binop_54 = alloca i64, align 8
  store i64 %greater_eq_snake_result_81, i64* %binop_54, align 4
  br label %if_else_54

if_else_54:                                       ; preds = %let_53
  %binop_54116 = load i64, i64* %binop_54, align 4
  %tag_bits_of_cond_val = and i64 %binop_54116, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_54, label %call_error_func117

continue_if_else_54:                              ; preds = %if_else_54
  %is_cond_true = icmp eq i64 %binop_54116, -1
  br i1 %is_cond_true, label %then_54, label %else_54

call_error_func117:                               ; preds = %if_else_54
  store i64 %binop_54116, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 4)
  unreachable

then_54:                                          ; preds = %continue_if_else_54
  br label %construct_tuple_77

else_54:                                          ; preds = %continue_if_else_54
  br label %construct_tuple_69

merge_then_else_54:                               ; preds = %is_correct_arity_58, %construct_tuple_73
  %"if/else_snake_result_54" = phi i64 [ %tuple_tagged_tuple_addr_word_73, %construct_tuple_73 ], [ %lambda_tail_call_result, %is_correct_arity_58 ]
  br label %return

construct_tuple_77:                               ; preds = %then_54
  %x3_35119 = load i64, i64* %x3_35, align 4
  %x4_42120 = load i64, i64* %x4_42, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_77 = bitcast i8* %malloccall to { i64, i64, i64 }*
  %3 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_77, i32 0, i32 0
  %4 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_77, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_77, i32 0, i32 2
  store i64 4, i64* %3, align 4
  store i64 %x3_35119, i64* %4, align 4
  store i64 %x4_42120, i64* %5, align 4
  %tuple_addr_77 = ptrtoint { i64, i64, i64 }* %tuple_ptr_77 to i64
  %tuple_tagged_tuple_addr_word_77 = add i64 %tuple_addr_77, 1
  br label %let_72

let_72:                                           ; preds = %construct_tuple_77
  %tuple_59 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_77, i64* %tuple_59, align 4
  br label %construct_tuple_73

construct_tuple_73:                               ; preds = %let_72
  %x2_30121 = load i64, i64* %x2_30, align 4
  %tuple_59122 = load i64, i64* %tuple_59, align 4
  %x5_49123 = load i64, i64* %x5_49, align 4
  %malloccall124 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_73 = bitcast i8* %malloccall124 to { i64, i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_73, i32 0, i32 0
  %7 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_73, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_73, i32 0, i32 2
  %9 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_73, i32 0, i32 3
  store i64 6, i64* %6, align 4
  store i64 %x2_30121, i64* %7, align 4
  store i64 %tuple_59122, i64* %8, align 4
  store i64 %x5_49123, i64* %9, align 4
  %tuple_addr_73 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_73 to i64
  %tuple_tagged_tuple_addr_word_73 = add i64 %tuple_addr_73, 1
  br label %merge_then_else_54

construct_tuple_69:                               ; preds = %else_54
  %x3_35125 = load i64, i64* %x3_35, align 4
  %x4_42126 = load i64, i64* %x4_42, align 4
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_69 = bitcast i8* %malloccall127 to { i64, i64, i64 }*
  %10 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_69, i32 0, i32 0
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_69, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_69, i32 0, i32 2
  store i64 4, i64* %10, align 4
  store i64 %x3_35125, i64* %11, align 4
  store i64 %x4_42126, i64* %12, align 4
  %tuple_addr_69 = ptrtoint { i64, i64, i64 }* %tuple_ptr_69 to i64
  %tuple_tagged_tuple_addr_word_69 = add i64 %tuple_addr_69, 1
  br label %let_55

let_55:                                           ; preds = %construct_tuple_69
  %tuple_67 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_69, i64* %tuple_67, align 4
  br label %plus_66

plus_66:                                          ; preds = %let_55
  %x5_49128 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1129 = and i64 %x5_49128, 1
  %is_arg1_int130 = icmp eq i64 %tag_bits_of_arg1129, 0
  br i1 %is_arg1_int130, label %arg1_type_check_passed_66, label %call_error_func131

arg1_type_check_passed_66:                        ; preds = %plus_66
  br i1 true, label %arg2_type_check_passed_66, label %call_error_func133

call_error_func131:                               ; preds = %plus_66
  store i64 %x5_49128, i64* @current_answer_ptr, align 4
  %error_call_return_val132 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_66:                        ; preds = %arg1_type_check_passed_66
  %plus_snake_result_66 = add i64 %x5_49128, 2
  %l_ge_0 = icmp sge i64 %x5_49128, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_66, %x5_49128
  %sum_lt_r = icmp slt i64 %plus_snake_result_66, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x5_49128, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_66, %x5_49128
  %sum_gt_r = icmp sgt i64 %plus_snake_result_66, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_66, label %call_error_func135

call_error_func133:                               ; preds = %arg1_type_check_passed_66
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val134 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_66:                          ; preds = %arg2_type_check_passed_66
  %plus_snake_result_66137 = phi i64 [ %plus_snake_result_66, %arg2_type_check_passed_66 ]
  br label %let_56

call_error_func135:                               ; preds = %arg2_type_check_passed_66
  store i64 %plus_snake_result_66, i64* @current_answer_ptr, align 4
  %error_call_return_val136 = call i64 @error_func(i64 5)
  unreachable

let_56:                                           ; preds = %continue_no_overflow_66
  %binop_70 = alloca i64, align 8
  store i64 %plus_snake_result_66137, i64* %binop_70, align 4
  br label %construct_tuple_62

construct_tuple_62:                               ; preds = %let_56
  %x2_30138 = load i64, i64* %x2_30, align 4
  %tuple_67139 = load i64, i64* %tuple_67, align 4
  %binop_70140 = load i64, i64* %binop_70, align 4
  %malloccall141 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_62 = bitcast i8* %malloccall141 to { i64, i64, i64, i64 }*
  %13 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_62, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_62, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_62, i32 0, i32 2
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_62, i32 0, i32 3
  store i64 6, i64* %13, align 4
  store i64 %x2_30138, i64* %14, align 4
  store i64 %tuple_67139, i64* %15, align 4
  store i64 %binop_70140, i64* %16, align 4
  %tuple_addr_62 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_62 to i64
  %tuple_tagged_tuple_addr_word_62 = add i64 %tuple_addr_62, 1
  br label %let_57

let_57:                                           ; preds = %construct_tuple_62
  %tuple_65 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_62, i64* %tuple_65, align 4
  br label %function_call

function_call:                                    ; preds = %let_57
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_58, label %call_error_func142

is_closure_58:                                    ; preds = %function_call
  %untagged_closure_addr144 = sub i64 %f1_26, 5
  %closure_ptr145 = inttoptr i64 %untagged_closure_addr144 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr145, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr145, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 4
  br i1 %17, label %is_correct_arity_58, label %call_error_func146

call_error_func142:                               ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val143 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_58:                              ; preds = %is_closure_58
  %tuple_65148 = load i64, i64* %tuple_65, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %tuple_65148)
  br label %merge_then_else_54

call_error_func146:                               ; preds = %is_closure_58
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val147 = call i64 @error_func(i64 17)
  unreachable
}

define i64 @lambda_29_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_43

return:                                           ; preds = %merge_then_else_33
  ret i64 %"if/else_snake_result_33"

get_item_43:                                      ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_43, label %call_error_func

it_not_nil_43:                                    ; preds = %get_item_43
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_43, label %call_error_func1

call_error_func:                                  ; preds = %get_item_43
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_43:                                   ; preds = %it_not_nil_43
  br i1 true, label %it_is_integer_43, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_43
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_43:                                 ; preds = %it_is_tuple_43
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_43, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_43
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_43:                           ; preds = %it_is_integer_43
  br i1 true, label %index_is_not_negative_43, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_43
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_43:                         ; preds = %index_is_less_tha_n_43
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_30

call_error_func7:                                 ; preds = %index_is_less_tha_n_43
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_30:                                           ; preds = %index_is_not_negative_43
  %y2_82 = alloca i64, align 8
  store i64 %accessed_element, i64* %y2_82, align 4
  br label %get_item_40

get_item_40:                                      ; preds = %let_30
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_40, label %call_error_func10

it_not_nil_40:                                    ; preds = %get_item_40
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_40, label %call_error_func14

call_error_func10:                                ; preds = %get_item_40
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_40:                                   ; preds = %it_not_nil_40
  br i1 true, label %it_is_integer_40, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_40
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_40:                                 ; preds = %it_is_tuple_40
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_40, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_40
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_40:                           ; preds = %it_is_integer_40
  br i1 true, label %index_is_not_negative_40, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_40
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_40:                         ; preds = %index_is_less_tha_n_40
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_31

call_error_func25:                                ; preds = %index_is_less_tha_n_40
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_31:                                           ; preds = %index_is_not_negative_40
  %y3_87 = alloca i64, align 8
  store i64 %accessed_element28, i64* %y3_87, align 4
  br label %greater_37

greater_37:                                       ; preds = %let_31
  %y2_8229 = load i64, i64* %y2_82, align 4
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_37, label %call_error_func30

arg1_type_check_passed_37:                        ; preds = %greater_37
  %tag_bits_of_arg2 = and i64 %y2_8229, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_37, label %call_error_func32

call_error_func30:                                ; preds = %greater_37
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_37:                        ; preds = %arg1_type_check_passed_37
  %greater_llvm_result_37 = icmp sgt i64 %1, %y2_8229
  br i1 %greater_llvm_result_37, label %comp_is_true_37, label %comp_is_false_37

call_error_func32:                                ; preds = %arg1_type_check_passed_37
  store i64 %y2_8229, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_37:                                  ; preds = %arg2_type_check_passed_37
  br label %merge_37

comp_is_false_37:                                 ; preds = %arg2_type_check_passed_37
  br label %merge_37

merge_37:                                         ; preds = %comp_is_false_37, %comp_is_true_37
  %greater_snake_result_37 = phi i64 [ -1, %comp_is_true_37 ], [ 9223372036854775807, %comp_is_false_37 ]
  br label %let_32

let_32:                                           ; preds = %merge_37
  %binop_92 = alloca i64, align 8
  store i64 %greater_snake_result_37, i64* %binop_92, align 4
  br label %if_else_33

if_else_33:                                       ; preds = %let_32
  %binop_9234 = load i64, i64* %binop_92, align 4
  %tag_bits_of_cond_val = and i64 %binop_9234, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_33, label %call_error_func35

continue_if_else_33:                              ; preds = %if_else_33
  %is_cond_true = icmp eq i64 %binop_9234, -1
  br i1 %is_cond_true, label %then_33, label %else_33

call_error_func35:                                ; preds = %if_else_33
  store i64 %binop_9234, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 4)
  unreachable

then_33:                                          ; preds = %continue_if_else_33
  %y3_8737 = load i64, i64* %y3_87, align 4
  br label %merge_then_else_33

else_33:                                          ; preds = %continue_if_else_33
  br label %merge_then_else_33

merge_then_else_33:                               ; preds = %else_33, %then_33
  %"if/else_snake_result_33" = phi i64 [ %y3_8737, %then_33 ], [ 9223372036854775807, %else_33 ]
  br label %return
}
