; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_90

create_lambda_closure_90:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_90 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_90, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_90, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_90, i32 0, i32 2
  store i64 (i64, i64)* @lambda_90_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_90 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_90 to i64
  %closure_tagged_tuple_addr_word_90 = add i64 %closure_addr_90, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_90
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_90, i64* %print_4, align 4
  br label %create_lambda_closure_87

create_lambda_closure_87:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_87 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_87, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_87, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_87, i32 0, i32 2
  store i64 (i64)* @lambda_87_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_87 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_87 to i64
  %closure_tagged_tuple_addr_word_87 = add i64 %closure_addr_87, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_87
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_87, i64* %input_11, align 4
  br label %create_lambda_closure_82

create_lambda_closure_82:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_82 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_82, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_82, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_82, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_82_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_82 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_82 to i64
  %closure_tagged_tuple_addr_word_82 = add i64 %closure_addr_82, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_82
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_82, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_26

create_lambda_closure_26:                         ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_26 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_26, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_26, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_26, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_26_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_26 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_26 to i64
  %closure_tagged_tuple_addr_word_26 = add i64 %closure_addr_26, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_26
  store i64 %closure_tagged_tuple_addr_word_26, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_26, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %construct_tuple_23

construct_tuple_23:                               ; preds = %patch_let_rec_closures_4
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_23 = bitcast i8* %malloccall6 to { i64, i64, i64 }*
  %13 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_23, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_23, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_23, i32 0, i32 2
  store i64 4, i64* %13, align 4
  store i64 6, i64* %14, align 4
  store i64 8, i64* %15, align 4
  %tuple_addr_23 = ptrtoint { i64, i64, i64 }* %tuple_ptr_23 to i64
  %tuple_tagged_tuple_addr_word_23 = add i64 %tuple_addr_23, 1
  br label %let_5

let_5:                                            ; preds = %construct_tuple_23
  %tuple_84 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_23, i64* %tuple_84, align 4
  br label %construct_tuple_19

construct_tuple_19:                               ; preds = %let_5
  %tuple_847 = load i64, i64* %tuple_84, align 4
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_19 = bitcast i8* %malloccall8 to { i64, i64, i64, i64 }*
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 0
  %17 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 1
  %18 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 2
  %19 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 3
  store i64 6, i64* %16, align 4
  store i64 4, i64* %17, align 4
  store i64 %tuple_847, i64* %18, align 4
  store i64 10, i64* %19, align 4
  %tuple_addr_19 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_19 to i64
  %tuple_tagged_tuple_addr_word_19 = add i64 %tuple_addr_19, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_19
  %tuple_82 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_19, i64* %tuple_82, align 4
  br label %function_call

function_call:                                    ; preds = %let_6
  %f1_269 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_269, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_15, label %call_error_func

is_closure_15:                                    ; preds = %function_call
  %untagged_closure_addr10 = sub i64 %f1_269, 5
  %closure_ptr11 = inttoptr i64 %untagged_closure_addr10 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr11, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr11, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %20 = icmp eq i64 %arity, 4
  br i1 %20, label %is_correct_arity_15, label %call_error_func12

call_error_func:                                  ; preds = %function_call
  store i64 %f1_269, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_15:                              ; preds = %is_closure_15
  %tuple_8214 = load i64, i64* %tuple_82, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_269, i64 2, i64 %tuple_8214)
  br label %let_7

call_error_func12:                                ; preds = %is_closure_15
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 17)
  unreachable

let_7:                                            ; preds = %is_correct_arity_15
  %app_80 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_80, align 4
  br label %function_call15

function_call15:                                  ; preds = %let_7
  %print_416 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call17 = and i64 %print_416, 7
  %is_closure_of_func_to_call_closure18 = icmp eq i64 %tag_bits_of_closure_of_func_to_call17, 5
  br i1 %is_closure_of_func_to_call_closure18, label %is_closure_12, label %call_error_func19

is_closure_12:                                    ; preds = %function_call15
  %untagged_closure_addr21 = sub i64 %print_416, 5
  %closure_ptr22 = inttoptr i64 %untagged_closure_addr21 to i64*
  %function_code_ptr_as_i6423 = load i64, i64* %closure_ptr22, align 4
  %function24 = inttoptr i64 %function_code_ptr_as_i6423 to i64 (i64, i64)*
  %arity_ptr25 = getelementptr i64, i64* %closure_ptr22, i64 1
  %arity26 = load i64, i64* %arity_ptr25, align 4
  %21 = icmp eq i64 %arity26, 2
  br i1 %21, label %is_correct_arity_12, label %call_error_func27

call_error_func19:                                ; preds = %function_call15
  store i64 %print_416, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_12:                              ; preds = %is_closure_12
  %app_8029 = load i64, i64* %app_80, align 4
  %lambda_non_tail_call_result30 = call i64 %function24(i64 %print_416, i64 %app_8029)
  br label %function_call31

call_error_func27:                                ; preds = %is_closure_12
  store i64 %arity26, i64* @current_answer_ptr, align 4
  %error_call_return_val28 = call i64 @error_func(i64 17)
  unreachable

function_call31:                                  ; preds = %is_correct_arity_12
  %print_432 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call33 = and i64 %print_432, 7
  %is_closure_of_func_to_call_closure34 = icmp eq i64 %tag_bits_of_closure_of_func_to_call33, 5
  br i1 %is_closure_of_func_to_call_closure34, label %is_closure_9, label %call_error_func35

is_closure_9:                                     ; preds = %function_call31
  %untagged_closure_addr37 = sub i64 %print_432, 5
  %closure_ptr38 = inttoptr i64 %untagged_closure_addr37 to i64*
  %function_code_ptr_as_i6439 = load i64, i64* %closure_ptr38, align 4
  %function40 = inttoptr i64 %function_code_ptr_as_i6439 to i64 (i64, i64)*
  %arity_ptr41 = getelementptr i64, i64* %closure_ptr38, i64 1
  %arity42 = load i64, i64* %arity_ptr41, align 4
  %22 = icmp eq i64 %arity42, 2
  br i1 %22, label %is_correct_arity_9, label %call_error_func43

call_error_func35:                                ; preds = %function_call31
  store i64 %print_432, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_9:                               ; preds = %is_closure_9
  %lambda_tail_call_result = tail call i64 %function40(i64 %print_432, i64 6)
  br label %result

call_error_func43:                                ; preds = %is_closure_9
  store i64 %arity42, i64* @current_answer_ptr, align 4
  %error_call_return_val44 = call i64 @error_func(i64 17)
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

define i64 @lambda_90_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_91

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_91 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_87_(i64 %0) {
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
  ret i64 %input_tail_call_result_88

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_88 = tail call i64 @input()
  br label %return
}

define i64 @lambda_82_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_83

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_83 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_26_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_79

return:                                           ; preds = %merge_then_else_34
  ret i64 %"if/else_snake_result_34"

get_item_79:                                      ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_79, label %call_error_func

it_not_nil_79:                                    ; preds = %get_item_79
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_79, label %call_error_func1

call_error_func:                                  ; preds = %get_item_79
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_79:                                   ; preds = %it_not_nil_79
  br i1 true, label %it_is_integer_79, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_79
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_79:                                 ; preds = %it_is_tuple_79
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_79, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_79
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_79:                           ; preds = %it_is_integer_79
  br i1 true, label %index_is_not_negative_79, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_79
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_79:                         ; preds = %index_is_less_tha_n_79
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_27

call_error_func7:                                 ; preds = %index_is_less_tha_n_79
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_27:                                           ; preds = %index_is_not_negative_79
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_76

get_item_76:                                      ; preds = %let_27
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_76, label %call_error_func10

it_not_nil_76:                                    ; preds = %get_item_76
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_76, label %call_error_func14

call_error_func10:                                ; preds = %get_item_76
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_76:                                   ; preds = %it_not_nil_76
  br i1 true, label %it_is_integer_76, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_76
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_76:                                 ; preds = %it_is_tuple_76
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_76, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_76
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_76:                           ; preds = %it_is_integer_76
  br i1 true, label %index_is_not_negative_76, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_76
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_76:                         ; preds = %index_is_less_tha_n_76
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_28

call_error_func25:                                ; preds = %index_is_less_tha_n_76
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_28:                                           ; preds = %index_is_not_negative_76
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_73

get_item_73:                                      ; preds = %let_28
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_73, label %call_error_func31

it_not_nil_73:                                    ; preds = %get_item_73
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_73, label %call_error_func35

call_error_func31:                                ; preds = %get_item_73
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_73:                                   ; preds = %it_not_nil_73
  br i1 true, label %it_is_integer_73, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_73
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_73:                                 ; preds = %it_is_tuple_73
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_73, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_73
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_73:                           ; preds = %it_is_integer_73
  br i1 true, label %index_is_not_negative_73, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_73
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_73:                         ; preds = %index_is_less_tha_n_73
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_29

call_error_func46:                                ; preds = %index_is_less_tha_n_73
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_29:                                           ; preds = %index_is_not_negative_73
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_70

get_item_70:                                      ; preds = %let_29
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_70, label %call_error_func51

it_not_nil_70:                                    ; preds = %get_item_70
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_70, label %call_error_func55

call_error_func51:                                ; preds = %get_item_70
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_70:                                   ; preds = %it_not_nil_70
  br i1 true, label %it_is_integer_70, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_70
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_70:                                 ; preds = %it_is_tuple_70
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_70, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_70
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_70:                           ; preds = %it_is_integer_70
  br i1 true, label %index_is_not_negative_70, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_70
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_70:                         ; preds = %index_is_less_tha_n_70
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_30

call_error_func66:                                ; preds = %index_is_less_tha_n_70
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_30:                                           ; preds = %index_is_not_negative_70
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_67

get_item_67:                                      ; preds = %let_30
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_67, label %call_error_func72

it_not_nil_67:                                    ; preds = %get_item_67
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_67, label %call_error_func76

call_error_func72:                                ; preds = %get_item_67
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_67:                                   ; preds = %it_not_nil_67
  br i1 true, label %it_is_integer_67, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_67
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_67:                                 ; preds = %it_is_tuple_67
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_67, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_67
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_67:                           ; preds = %it_is_integer_67
  br i1 true, label %index_is_not_negative_67, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_67
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_67:                         ; preds = %index_is_less_tha_n_67
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_31

call_error_func87:                                ; preds = %index_is_less_tha_n_67
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_31:                                           ; preds = %index_is_not_negative_67
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_64

get_item_64:                                      ; preds = %let_31
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_64, label %call_error_func92

it_not_nil_64:                                    ; preds = %get_item_64
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_64, label %call_error_func96

call_error_func92:                                ; preds = %get_item_64
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_64:                                   ; preds = %it_not_nil_64
  br i1 true, label %it_is_integer_64, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_64
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_64:                                 ; preds = %it_is_tuple_64
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_64, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_64
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_64:                           ; preds = %it_is_integer_64
  br i1 true, label %index_is_not_negative_64, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_64
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_64:                         ; preds = %index_is_less_tha_n_64
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_32

call_error_func107:                               ; preds = %index_is_less_tha_n_64
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_32:                                           ; preds = %index_is_not_negative_64
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %greater_eq_61

greater_eq_61:                                    ; preds = %let_32
  %x5_49111 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1 = and i64 %x5_49111, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_61, label %call_error_func112

arg1_type_check_passed_61:                        ; preds = %greater_eq_61
  br i1 true, label %arg2_type_check_passed_61, label %call_error_func114

call_error_func112:                               ; preds = %greater_eq_61
  store i64 %x5_49111, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_61:                        ; preds = %arg1_type_check_passed_61
  %greater_eq_llvm_result_61 = icmp sge i64 %x5_49111, 20
  br i1 %greater_eq_llvm_result_61, label %comp_is_true_61, label %comp_is_false_61

call_error_func114:                               ; preds = %arg1_type_check_passed_61
  store i64 20, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_61:                                  ; preds = %arg2_type_check_passed_61
  br label %merge_61

comp_is_false_61:                                 ; preds = %arg2_type_check_passed_61
  br label %merge_61

merge_61:                                         ; preds = %comp_is_false_61, %comp_is_true_61
  %greater_eq_snake_result_61 = phi i64 [ -1, %comp_is_true_61 ], [ 9223372036854775807, %comp_is_false_61 ]
  br label %let_33

let_33:                                           ; preds = %merge_61
  %binop_54 = alloca i64, align 8
  store i64 %greater_eq_snake_result_61, i64* %binop_54, align 4
  br label %if_else_34

if_else_34:                                       ; preds = %let_33
  %binop_54116 = load i64, i64* %binop_54, align 4
  %tag_bits_of_cond_val = and i64 %binop_54116, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_34, label %call_error_func117

continue_if_else_34:                              ; preds = %if_else_34
  %is_cond_true = icmp eq i64 %binop_54116, -1
  br i1 %is_cond_true, label %then_34, label %else_34

call_error_func117:                               ; preds = %if_else_34
  store i64 %binop_54116, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 4)
  unreachable

then_34:                                          ; preds = %continue_if_else_34
  br label %construct_tuple_57

else_34:                                          ; preds = %continue_if_else_34
  br label %construct_tuple_49

merge_then_else_34:                               ; preds = %is_correct_arity_38, %construct_tuple_53
  %"if/else_snake_result_34" = phi i64 [ %tuple_tagged_tuple_addr_word_53, %construct_tuple_53 ], [ %lambda_tail_call_result, %is_correct_arity_38 ]
  br label %return

construct_tuple_57:                               ; preds = %then_34
  %x3_35119 = load i64, i64* %x3_35, align 4
  %x4_42120 = load i64, i64* %x4_42, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_57 = bitcast i8* %malloccall to { i64, i64, i64 }*
  %3 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_57, i32 0, i32 0
  %4 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_57, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_57, i32 0, i32 2
  store i64 4, i64* %3, align 4
  store i64 %x3_35119, i64* %4, align 4
  store i64 %x4_42120, i64* %5, align 4
  %tuple_addr_57 = ptrtoint { i64, i64, i64 }* %tuple_ptr_57 to i64
  %tuple_tagged_tuple_addr_word_57 = add i64 %tuple_addr_57, 1
  br label %let_52

let_52:                                           ; preds = %construct_tuple_57
  %tuple_59 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_57, i64* %tuple_59, align 4
  br label %construct_tuple_53

construct_tuple_53:                               ; preds = %let_52
  %x2_30121 = load i64, i64* %x2_30, align 4
  %tuple_59122 = load i64, i64* %tuple_59, align 4
  %x5_49123 = load i64, i64* %x5_49, align 4
  %malloccall124 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_53 = bitcast i8* %malloccall124 to { i64, i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_53, i32 0, i32 0
  %7 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_53, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_53, i32 0, i32 2
  %9 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_53, i32 0, i32 3
  store i64 6, i64* %6, align 4
  store i64 %x2_30121, i64* %7, align 4
  store i64 %tuple_59122, i64* %8, align 4
  store i64 %x5_49123, i64* %9, align 4
  %tuple_addr_53 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_53 to i64
  %tuple_tagged_tuple_addr_word_53 = add i64 %tuple_addr_53, 1
  br label %merge_then_else_34

construct_tuple_49:                               ; preds = %else_34
  %x3_35125 = load i64, i64* %x3_35, align 4
  %x4_42126 = load i64, i64* %x4_42, align 4
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_49 = bitcast i8* %malloccall127 to { i64, i64, i64 }*
  %10 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 0
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 2
  store i64 4, i64* %10, align 4
  store i64 %x3_35125, i64* %11, align 4
  store i64 %x4_42126, i64* %12, align 4
  %tuple_addr_49 = ptrtoint { i64, i64, i64 }* %tuple_ptr_49 to i64
  %tuple_tagged_tuple_addr_word_49 = add i64 %tuple_addr_49, 1
  br label %let_35

let_35:                                           ; preds = %construct_tuple_49
  %tuple_67 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_49, i64* %tuple_67, align 4
  br label %plus_46

plus_46:                                          ; preds = %let_35
  %x5_49128 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1129 = and i64 %x5_49128, 1
  %is_arg1_int130 = icmp eq i64 %tag_bits_of_arg1129, 0
  br i1 %is_arg1_int130, label %arg1_type_check_passed_46, label %call_error_func131

arg1_type_check_passed_46:                        ; preds = %plus_46
  br i1 true, label %arg2_type_check_passed_46, label %call_error_func133

call_error_func131:                               ; preds = %plus_46
  store i64 %x5_49128, i64* @current_answer_ptr, align 4
  %error_call_return_val132 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_46:                        ; preds = %arg1_type_check_passed_46
  %plus_snake_result_46 = add i64 %x5_49128, 2
  %l_ge_0 = icmp sge i64 %x5_49128, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_46, %x5_49128
  %sum_lt_r = icmp slt i64 %plus_snake_result_46, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x5_49128, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_46, %x5_49128
  %sum_gt_r = icmp sgt i64 %plus_snake_result_46, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_46, label %call_error_func135

call_error_func133:                               ; preds = %arg1_type_check_passed_46
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val134 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_46:                          ; preds = %arg2_type_check_passed_46
  %plus_snake_result_46137 = phi i64 [ %plus_snake_result_46, %arg2_type_check_passed_46 ]
  br label %let_36

call_error_func135:                               ; preds = %arg2_type_check_passed_46
  store i64 %plus_snake_result_46, i64* @current_answer_ptr, align 4
  %error_call_return_val136 = call i64 @error_func(i64 5)
  unreachable

let_36:                                           ; preds = %continue_no_overflow_46
  %binop_70 = alloca i64, align 8
  store i64 %plus_snake_result_46137, i64* %binop_70, align 4
  br label %construct_tuple_42

construct_tuple_42:                               ; preds = %let_36
  %x2_30138 = load i64, i64* %x2_30, align 4
  %tuple_67139 = load i64, i64* %tuple_67, align 4
  %binop_70140 = load i64, i64* %binop_70, align 4
  %malloccall141 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_42 = bitcast i8* %malloccall141 to { i64, i64, i64, i64 }*
  %13 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_42, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_42, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_42, i32 0, i32 2
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_42, i32 0, i32 3
  store i64 6, i64* %13, align 4
  store i64 %x2_30138, i64* %14, align 4
  store i64 %tuple_67139, i64* %15, align 4
  store i64 %binop_70140, i64* %16, align 4
  %tuple_addr_42 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_42 to i64
  %tuple_tagged_tuple_addr_word_42 = add i64 %tuple_addr_42, 1
  br label %let_37

let_37:                                           ; preds = %construct_tuple_42
  %tuple_65 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_42, i64* %tuple_65, align 4
  br label %function_call

function_call:                                    ; preds = %let_37
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_38, label %call_error_func142

is_closure_38:                                    ; preds = %function_call
  %untagged_closure_addr144 = sub i64 %f1_26, 5
  %closure_ptr145 = inttoptr i64 %untagged_closure_addr144 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr145, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr145, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 4
  br i1 %17, label %is_correct_arity_38, label %call_error_func146

call_error_func142:                               ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val143 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_38:                              ; preds = %is_closure_38
  %tuple_65148 = load i64, i64* %tuple_65, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %tuple_65148)
  br label %merge_then_else_34

call_error_func146:                               ; preds = %is_closure_38
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val147 = call i64 @error_func(i64 17)
  unreachable
}
