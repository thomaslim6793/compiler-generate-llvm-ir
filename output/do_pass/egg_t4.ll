; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_86

create_lambda_closure_86:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_86 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_86, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_86, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_86, i32 0, i32 2
  store i64 (i64, i64)* @lambda_86_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_86 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_86 to i64
  %closure_tagged_tuple_addr_word_86 = add i64 %closure_addr_86, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_86
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_86, i64* %print_4, align 4
  br label %create_lambda_closure_83

create_lambda_closure_83:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_83 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_83, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_83, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_83, i32 0, i32 2
  store i64 (i64)* @lambda_83_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_83 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_83 to i64
  %closure_tagged_tuple_addr_word_83 = add i64 %closure_addr_83, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_83
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_83, i64* %input_11, align 4
  br label %create_lambda_closure_78

create_lambda_closure_78:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_78 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_78, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_78, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_78, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_78_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_78 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_78 to i64
  %closure_tagged_tuple_addr_word_78 = add i64 %closure_addr_78, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_78
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_78, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_22

create_lambda_closure_22:                         ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_22 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_22, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_22, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_22, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_22_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_22 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_22 to i64
  %closure_tagged_tuple_addr_word_22 = add i64 %closure_addr_22, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_22
  store i64 %closure_tagged_tuple_addr_word_22, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_22, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %construct_tuple_19

construct_tuple_19:                               ; preds = %patch_let_rec_closures_4
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_19 = bitcast i8* %malloccall6 to { i64, i64, i64 }*
  %13 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 2
  store i64 4, i64* %13, align 4
  store i64 6, i64* %14, align 4
  store i64 8, i64* %15, align 4
  %tuple_addr_19 = ptrtoint { i64, i64, i64 }* %tuple_ptr_19 to i64
  %tuple_tagged_tuple_addr_word_19 = add i64 %tuple_addr_19, 1
  br label %let_5

let_5:                                            ; preds = %construct_tuple_19
  %tuple_83 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_19, i64* %tuple_83, align 4
  br label %construct_tuple_15

construct_tuple_15:                               ; preds = %let_5
  %tuple_837 = load i64, i64* %tuple_83, align 4
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_15 = bitcast i8* %malloccall8 to { i64, i64, i64, i64 }*
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 0
  %17 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 1
  %18 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 2
  %19 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 3
  store i64 6, i64* %16, align 4
  store i64 4, i64* %17, align 4
  store i64 %tuple_837, i64* %18, align 4
  store i64 10, i64* %19, align 4
  %tuple_addr_15 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_15 to i64
  %tuple_tagged_tuple_addr_word_15 = add i64 %tuple_addr_15, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_15
  %tuple_81 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_15, i64* %tuple_81, align 4
  br label %function_call

function_call:                                    ; preds = %let_6
  %f1_269 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_269, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_11, label %call_error_func

is_closure_11:                                    ; preds = %function_call
  %untagged_closure_addr10 = sub i64 %f1_269, 5
  %closure_ptr11 = inttoptr i64 %untagged_closure_addr10 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr11, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr11, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %20 = icmp eq i64 %arity, 4
  br i1 %20, label %is_correct_arity_11, label %call_error_func12

call_error_func:                                  ; preds = %function_call
  store i64 %f1_269, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_11:                              ; preds = %is_closure_11
  %tuple_8114 = load i64, i64* %tuple_81, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_269, i64 2, i64 %tuple_8114)
  br label %plus_8

call_error_func12:                                ; preds = %is_closure_11
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 17)
  unreachable

plus_8:                                           ; preds = %is_correct_arity_11
  br i1 true, label %arg1_type_check_passed_8, label %call_error_func15

arg1_type_check_passed_8:                         ; preds = %plus_8
  br i1 true, label %arg2_type_check_passed_8, label %call_error_func17

call_error_func15:                                ; preds = %plus_8
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val16 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_8:                         ; preds = %arg1_type_check_passed_8
  br i1 true, label %continue_no_overflow_8, label %call_error_func19

call_error_func17:                                ; preds = %arg1_type_check_passed_8
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val18 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_8:                           ; preds = %arg2_type_check_passed_8
  %plus_snake_result_8 = phi i64 [ 4, %arg2_type_check_passed_8 ]
  br label %result

call_error_func19:                                ; preds = %arg2_type_check_passed_8
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val20 = call i64 @error_func(i64 5)
  unreachable

result:                                           ; preds = %continue_no_overflow_8
  ret i64 %plus_snake_result_8
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

define i64 @lambda_86_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_87

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_87 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_83_(i64 %0) {
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
  ret i64 %input_tail_call_result_84

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_84 = tail call i64 @input()
  br label %return
}

define i64 @lambda_78_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_79

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_79 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_22_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_75

return:                                           ; preds = %merge_then_else_30
  ret i64 %"if/else_snake_result_30"

get_item_75:                                      ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_75, label %call_error_func

it_not_nil_75:                                    ; preds = %get_item_75
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_75, label %call_error_func1

call_error_func:                                  ; preds = %get_item_75
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_75:                                   ; preds = %it_not_nil_75
  br i1 true, label %it_is_integer_75, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_75
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_75:                                 ; preds = %it_is_tuple_75
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_75, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_75
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_75:                           ; preds = %it_is_integer_75
  br i1 true, label %index_is_not_negative_75, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_75
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_75:                         ; preds = %index_is_less_tha_n_75
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_23

call_error_func7:                                 ; preds = %index_is_less_tha_n_75
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_23:                                           ; preds = %index_is_not_negative_75
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_72

get_item_72:                                      ; preds = %let_23
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_72, label %call_error_func10

it_not_nil_72:                                    ; preds = %get_item_72
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_72, label %call_error_func14

call_error_func10:                                ; preds = %get_item_72
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_72:                                   ; preds = %it_not_nil_72
  br i1 true, label %it_is_integer_72, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_72
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_72:                                 ; preds = %it_is_tuple_72
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_72, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_72
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_72:                           ; preds = %it_is_integer_72
  br i1 true, label %index_is_not_negative_72, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_72
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_72:                         ; preds = %index_is_less_tha_n_72
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_24

call_error_func25:                                ; preds = %index_is_less_tha_n_72
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_24:                                           ; preds = %index_is_not_negative_72
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_69

get_item_69:                                      ; preds = %let_24
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_69, label %call_error_func31

it_not_nil_69:                                    ; preds = %get_item_69
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_69, label %call_error_func35

call_error_func31:                                ; preds = %get_item_69
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_69:                                   ; preds = %it_not_nil_69
  br i1 true, label %it_is_integer_69, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_69
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_69:                                 ; preds = %it_is_tuple_69
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_69, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_69
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_69:                           ; preds = %it_is_integer_69
  br i1 true, label %index_is_not_negative_69, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_69
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_69:                         ; preds = %index_is_less_tha_n_69
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_25

call_error_func46:                                ; preds = %index_is_less_tha_n_69
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_25:                                           ; preds = %index_is_not_negative_69
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_66

get_item_66:                                      ; preds = %let_25
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_66, label %call_error_func51

it_not_nil_66:                                    ; preds = %get_item_66
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_66, label %call_error_func55

call_error_func51:                                ; preds = %get_item_66
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_66:                                   ; preds = %it_not_nil_66
  br i1 true, label %it_is_integer_66, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_66
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_66:                                 ; preds = %it_is_tuple_66
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_66, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_66
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_66:                           ; preds = %it_is_integer_66
  br i1 true, label %index_is_not_negative_66, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_66
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_66:                         ; preds = %index_is_less_tha_n_66
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_26

call_error_func66:                                ; preds = %index_is_less_tha_n_66
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_26:                                           ; preds = %index_is_not_negative_66
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_63

get_item_63:                                      ; preds = %let_26
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_63, label %call_error_func72

it_not_nil_63:                                    ; preds = %get_item_63
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_63, label %call_error_func76

call_error_func72:                                ; preds = %get_item_63
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_63:                                   ; preds = %it_not_nil_63
  br i1 true, label %it_is_integer_63, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_63
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_63:                                 ; preds = %it_is_tuple_63
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_63, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_63
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_63:                           ; preds = %it_is_integer_63
  br i1 true, label %index_is_not_negative_63, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_63
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_63:                         ; preds = %index_is_less_tha_n_63
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_27

call_error_func87:                                ; preds = %index_is_less_tha_n_63
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_27:                                           ; preds = %index_is_not_negative_63
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_60

get_item_60:                                      ; preds = %let_27
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_60, label %call_error_func92

it_not_nil_60:                                    ; preds = %get_item_60
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_60, label %call_error_func96

call_error_func92:                                ; preds = %get_item_60
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_60:                                   ; preds = %it_not_nil_60
  br i1 true, label %it_is_integer_60, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_60
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_60:                                 ; preds = %it_is_tuple_60
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_60, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_60
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_60:                           ; preds = %it_is_integer_60
  br i1 true, label %index_is_not_negative_60, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_60
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_60:                         ; preds = %index_is_less_tha_n_60
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_28

call_error_func107:                               ; preds = %index_is_less_tha_n_60
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_28:                                           ; preds = %index_is_not_negative_60
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %greater_eq_57

greater_eq_57:                                    ; preds = %let_28
  %x5_49111 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1 = and i64 %x5_49111, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_57, label %call_error_func112

arg1_type_check_passed_57:                        ; preds = %greater_eq_57
  br i1 true, label %arg2_type_check_passed_57, label %call_error_func114

call_error_func112:                               ; preds = %greater_eq_57
  store i64 %x5_49111, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_57:                        ; preds = %arg1_type_check_passed_57
  %greater_eq_llvm_result_57 = icmp sge i64 %x5_49111, 20
  br i1 %greater_eq_llvm_result_57, label %comp_is_true_57, label %comp_is_false_57

call_error_func114:                               ; preds = %arg1_type_check_passed_57
  store i64 20, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_57:                                  ; preds = %arg2_type_check_passed_57
  br label %merge_57

comp_is_false_57:                                 ; preds = %arg2_type_check_passed_57
  br label %merge_57

merge_57:                                         ; preds = %comp_is_false_57, %comp_is_true_57
  %greater_eq_snake_result_57 = phi i64 [ -1, %comp_is_true_57 ], [ 9223372036854775807, %comp_is_false_57 ]
  br label %let_29

let_29:                                           ; preds = %merge_57
  %binop_54 = alloca i64, align 8
  store i64 %greater_eq_snake_result_57, i64* %binop_54, align 4
  br label %if_else_30

if_else_30:                                       ; preds = %let_29
  %binop_54116 = load i64, i64* %binop_54, align 4
  %tag_bits_of_cond_val = and i64 %binop_54116, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_30, label %call_error_func117

continue_if_else_30:                              ; preds = %if_else_30
  %is_cond_true = icmp eq i64 %binop_54116, -1
  br i1 %is_cond_true, label %then_30, label %else_30

call_error_func117:                               ; preds = %if_else_30
  store i64 %binop_54116, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 4)
  unreachable

then_30:                                          ; preds = %continue_if_else_30
  br label %construct_tuple_53

else_30:                                          ; preds = %continue_if_else_30
  br label %construct_tuple_45

merge_then_else_30:                               ; preds = %is_correct_arity_34, %construct_tuple_49
  %"if/else_snake_result_30" = phi i64 [ %tuple_tagged_tuple_addr_word_49, %construct_tuple_49 ], [ %lambda_tail_call_result, %is_correct_arity_34 ]
  br label %return

construct_tuple_53:                               ; preds = %then_30
  %x3_35119 = load i64, i64* %x3_35, align 4
  %x4_42120 = load i64, i64* %x4_42, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_53 = bitcast i8* %malloccall to { i64, i64, i64 }*
  %3 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_53, i32 0, i32 0
  %4 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_53, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_53, i32 0, i32 2
  store i64 4, i64* %3, align 4
  store i64 %x3_35119, i64* %4, align 4
  store i64 %x4_42120, i64* %5, align 4
  %tuple_addr_53 = ptrtoint { i64, i64, i64 }* %tuple_ptr_53 to i64
  %tuple_tagged_tuple_addr_word_53 = add i64 %tuple_addr_53, 1
  br label %let_48

let_48:                                           ; preds = %construct_tuple_53
  %tuple_59 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_53, i64* %tuple_59, align 4
  br label %construct_tuple_49

construct_tuple_49:                               ; preds = %let_48
  %x2_30121 = load i64, i64* %x2_30, align 4
  %tuple_59122 = load i64, i64* %tuple_59, align 4
  %x5_49123 = load i64, i64* %x5_49, align 4
  %malloccall124 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_49 = bitcast i8* %malloccall124 to { i64, i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 0
  %7 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 2
  %9 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 3
  store i64 6, i64* %6, align 4
  store i64 %x2_30121, i64* %7, align 4
  store i64 %tuple_59122, i64* %8, align 4
  store i64 %x5_49123, i64* %9, align 4
  %tuple_addr_49 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_49 to i64
  %tuple_tagged_tuple_addr_word_49 = add i64 %tuple_addr_49, 1
  br label %merge_then_else_30

construct_tuple_45:                               ; preds = %else_30
  %x3_35125 = load i64, i64* %x3_35, align 4
  %x4_42126 = load i64, i64* %x4_42, align 4
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_45 = bitcast i8* %malloccall127 to { i64, i64, i64 }*
  %10 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_45, i32 0, i32 0
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_45, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_45, i32 0, i32 2
  store i64 4, i64* %10, align 4
  store i64 %x3_35125, i64* %11, align 4
  store i64 %x4_42126, i64* %12, align 4
  %tuple_addr_45 = ptrtoint { i64, i64, i64 }* %tuple_ptr_45 to i64
  %tuple_tagged_tuple_addr_word_45 = add i64 %tuple_addr_45, 1
  br label %let_31

let_31:                                           ; preds = %construct_tuple_45
  %tuple_67 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_45, i64* %tuple_67, align 4
  br label %plus_42

plus_42:                                          ; preds = %let_31
  %x5_49128 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1129 = and i64 %x5_49128, 1
  %is_arg1_int130 = icmp eq i64 %tag_bits_of_arg1129, 0
  br i1 %is_arg1_int130, label %arg1_type_check_passed_42, label %call_error_func131

arg1_type_check_passed_42:                        ; preds = %plus_42
  br i1 true, label %arg2_type_check_passed_42, label %call_error_func133

call_error_func131:                               ; preds = %plus_42
  store i64 %x5_49128, i64* @current_answer_ptr, align 4
  %error_call_return_val132 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_42:                        ; preds = %arg1_type_check_passed_42
  %plus_snake_result_42 = add i64 %x5_49128, 2
  %l_ge_0 = icmp sge i64 %x5_49128, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_42, %x5_49128
  %sum_lt_r = icmp slt i64 %plus_snake_result_42, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x5_49128, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_42, %x5_49128
  %sum_gt_r = icmp sgt i64 %plus_snake_result_42, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_42, label %call_error_func135

call_error_func133:                               ; preds = %arg1_type_check_passed_42
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val134 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_42:                          ; preds = %arg2_type_check_passed_42
  %plus_snake_result_42137 = phi i64 [ %plus_snake_result_42, %arg2_type_check_passed_42 ]
  br label %let_32

call_error_func135:                               ; preds = %arg2_type_check_passed_42
  store i64 %plus_snake_result_42, i64* @current_answer_ptr, align 4
  %error_call_return_val136 = call i64 @error_func(i64 5)
  unreachable

let_32:                                           ; preds = %continue_no_overflow_42
  %binop_70 = alloca i64, align 8
  store i64 %plus_snake_result_42137, i64* %binop_70, align 4
  br label %construct_tuple_38

construct_tuple_38:                               ; preds = %let_32
  %x2_30138 = load i64, i64* %x2_30, align 4
  %tuple_67139 = load i64, i64* %tuple_67, align 4
  %binop_70140 = load i64, i64* %binop_70, align 4
  %malloccall141 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_38 = bitcast i8* %malloccall141 to { i64, i64, i64, i64 }*
  %13 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_38, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_38, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_38, i32 0, i32 2
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_38, i32 0, i32 3
  store i64 6, i64* %13, align 4
  store i64 %x2_30138, i64* %14, align 4
  store i64 %tuple_67139, i64* %15, align 4
  store i64 %binop_70140, i64* %16, align 4
  %tuple_addr_38 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_38 to i64
  %tuple_tagged_tuple_addr_word_38 = add i64 %tuple_addr_38, 1
  br label %let_33

let_33:                                           ; preds = %construct_tuple_38
  %tuple_65 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_38, i64* %tuple_65, align 4
  br label %function_call

function_call:                                    ; preds = %let_33
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_34, label %call_error_func142

is_closure_34:                                    ; preds = %function_call
  %untagged_closure_addr144 = sub i64 %f1_26, 5
  %closure_ptr145 = inttoptr i64 %untagged_closure_addr144 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr145, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr145, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 4
  br i1 %17, label %is_correct_arity_34, label %call_error_func146

call_error_func142:                               ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val143 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_34:                              ; preds = %is_closure_34
  %tuple_65148 = load i64, i64* %tuple_65, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %tuple_65148)
  br label %merge_then_else_30

call_error_func146:                               ; preds = %is_closure_34
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val147 = call i64 @error_func(i64 17)
  unreachable
}
