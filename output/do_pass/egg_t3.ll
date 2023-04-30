; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_82

create_lambda_closure_82:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_82 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_82, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_82, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_82, i32 0, i32 2
  store i64 (i64, i64)* @lambda_82_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_82 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_82 to i64
  %closure_tagged_tuple_addr_word_82 = add i64 %closure_addr_82, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_82
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_82, i64* %print_4, align 4
  br label %create_lambda_closure_79

create_lambda_closure_79:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_79 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_79, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_79, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_79, i32 0, i32 2
  store i64 (i64)* @lambda_79_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_79 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_79 to i64
  %closure_tagged_tuple_addr_word_79 = add i64 %closure_addr_79, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_79
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_79, i64* %input_11, align 4
  br label %create_lambda_closure_74

create_lambda_closure_74:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_74 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_74, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_74, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_74, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_74_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_74 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_74 to i64
  %closure_tagged_tuple_addr_word_74 = add i64 %closure_addr_74, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_74
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_74, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_18

create_lambda_closure_18:                         ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_18 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_18, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_18, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_18, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_18_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_18 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_18 to i64
  %closure_tagged_tuple_addr_word_18 = add i64 %closure_addr_18, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_18
  store i64 %closure_tagged_tuple_addr_word_18, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_18, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %construct_tuple_15

construct_tuple_15:                               ; preds = %patch_let_rec_closures_4
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_15 = bitcast i8* %malloccall6 to { i64, i64, i64 }*
  %13 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 2
  store i64 4, i64* %13, align 4
  store i64 6, i64* %14, align 4
  store i64 8, i64* %15, align 4
  %tuple_addr_15 = ptrtoint { i64, i64, i64 }* %tuple_ptr_15 to i64
  %tuple_tagged_tuple_addr_word_15 = add i64 %tuple_addr_15, 1
  br label %let_5

let_5:                                            ; preds = %construct_tuple_15
  %tuple_80 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_15, i64* %tuple_80, align 4
  br label %construct_tuple_11

construct_tuple_11:                               ; preds = %let_5
  %tuple_807 = load i64, i64* %tuple_80, align 4
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_11 = bitcast i8* %malloccall8 to { i64, i64, i64, i64 }*
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_11, i32 0, i32 0
  %17 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_11, i32 0, i32 1
  %18 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_11, i32 0, i32 2
  %19 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_11, i32 0, i32 3
  store i64 6, i64* %16, align 4
  store i64 4, i64* %17, align 4
  store i64 %tuple_807, i64* %18, align 4
  store i64 10, i64* %19, align 4
  %tuple_addr_11 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_11 to i64
  %tuple_tagged_tuple_addr_word_11 = add i64 %tuple_addr_11, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_11
  %tuple_78 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_11, i64* %tuple_78, align 4
  br label %function_call

function_call:                                    ; preds = %let_6
  %f1_269 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_269, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_7, label %call_error_func

is_closure_7:                                     ; preds = %function_call
  %untagged_closure_addr10 = sub i64 %f1_269, 5
  %closure_ptr11 = inttoptr i64 %untagged_closure_addr10 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr11, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr11, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %20 = icmp eq i64 %arity, 4
  br i1 %20, label %is_correct_arity_7, label %call_error_func12

call_error_func:                                  ; preds = %function_call
  store i64 %f1_269, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_7:                               ; preds = %is_closure_7
  %tuple_7814 = load i64, i64* %tuple_78, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_269, i64 2, i64 %tuple_7814)
  br label %result

call_error_func12:                                ; preds = %is_closure_7
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val13 = call i64 @error_func(i64 17)
  unreachable

result:                                           ; preds = %is_correct_arity_7
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

define i64 @lambda_82_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_83

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_83 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_79_(i64 %0) {
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
  ret i64 %input_tail_call_result_80

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_80 = tail call i64 @input()
  br label %return
}

define i64 @lambda_74_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_75

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_75 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_18_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_71

return:                                           ; preds = %merge_then_else_26
  ret i64 %"if/else_snake_result_26"

get_item_71:                                      ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_71, label %call_error_func

it_not_nil_71:                                    ; preds = %get_item_71
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_71, label %call_error_func1

call_error_func:                                  ; preds = %get_item_71
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_71:                                   ; preds = %it_not_nil_71
  br i1 true, label %it_is_integer_71, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_71
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_71:                                 ; preds = %it_is_tuple_71
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_71, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_71
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_71:                           ; preds = %it_is_integer_71
  br i1 true, label %index_is_not_negative_71, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_71
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_71:                         ; preds = %index_is_less_tha_n_71
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_19

call_error_func7:                                 ; preds = %index_is_less_tha_n_71
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_19:                                           ; preds = %index_is_not_negative_71
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_68

get_item_68:                                      ; preds = %let_19
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_68, label %call_error_func10

it_not_nil_68:                                    ; preds = %get_item_68
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_68, label %call_error_func14

call_error_func10:                                ; preds = %get_item_68
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_68:                                   ; preds = %it_not_nil_68
  br i1 true, label %it_is_integer_68, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_68
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_68:                                 ; preds = %it_is_tuple_68
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_68, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_68
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_68:                           ; preds = %it_is_integer_68
  br i1 true, label %index_is_not_negative_68, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_68
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_68:                         ; preds = %index_is_less_tha_n_68
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_20

call_error_func25:                                ; preds = %index_is_less_tha_n_68
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_20:                                           ; preds = %index_is_not_negative_68
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_65

get_item_65:                                      ; preds = %let_20
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_65, label %call_error_func31

it_not_nil_65:                                    ; preds = %get_item_65
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_65, label %call_error_func35

call_error_func31:                                ; preds = %get_item_65
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_65:                                   ; preds = %it_not_nil_65
  br i1 true, label %it_is_integer_65, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_65
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_65:                                 ; preds = %it_is_tuple_65
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_65, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_65
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_65:                           ; preds = %it_is_integer_65
  br i1 true, label %index_is_not_negative_65, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_65
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_65:                         ; preds = %index_is_less_tha_n_65
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_21

call_error_func46:                                ; preds = %index_is_less_tha_n_65
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_21:                                           ; preds = %index_is_not_negative_65
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_62

get_item_62:                                      ; preds = %let_21
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_62, label %call_error_func51

it_not_nil_62:                                    ; preds = %get_item_62
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_62, label %call_error_func55

call_error_func51:                                ; preds = %get_item_62
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_62:                                   ; preds = %it_not_nil_62
  br i1 true, label %it_is_integer_62, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_62
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_62:                                 ; preds = %it_is_tuple_62
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_62, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_62
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_62:                           ; preds = %it_is_integer_62
  br i1 true, label %index_is_not_negative_62, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_62
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_62:                         ; preds = %index_is_less_tha_n_62
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_22

call_error_func66:                                ; preds = %index_is_less_tha_n_62
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_22:                                           ; preds = %index_is_not_negative_62
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_59

get_item_59:                                      ; preds = %let_22
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_59, label %call_error_func72

it_not_nil_59:                                    ; preds = %get_item_59
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_59, label %call_error_func76

call_error_func72:                                ; preds = %get_item_59
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_59:                                   ; preds = %it_not_nil_59
  br i1 true, label %it_is_integer_59, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_59
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_59:                                 ; preds = %it_is_tuple_59
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_59, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_59
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_59:                           ; preds = %it_is_integer_59
  br i1 true, label %index_is_not_negative_59, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_59
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_59:                         ; preds = %index_is_less_tha_n_59
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_23

call_error_func87:                                ; preds = %index_is_less_tha_n_59
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_23:                                           ; preds = %index_is_not_negative_59
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_56

get_item_56:                                      ; preds = %let_23
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_56, label %call_error_func92

it_not_nil_56:                                    ; preds = %get_item_56
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_56, label %call_error_func96

call_error_func92:                                ; preds = %get_item_56
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_56:                                   ; preds = %it_not_nil_56
  br i1 true, label %it_is_integer_56, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_56
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_56:                                 ; preds = %it_is_tuple_56
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_56, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_56
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_56:                           ; preds = %it_is_integer_56
  br i1 true, label %index_is_not_negative_56, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_56
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_56:                         ; preds = %index_is_less_tha_n_56
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_24

call_error_func107:                               ; preds = %index_is_less_tha_n_56
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_24:                                           ; preds = %index_is_not_negative_56
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %greater_eq_53

greater_eq_53:                                    ; preds = %let_24
  %x5_49111 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1 = and i64 %x5_49111, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_53, label %call_error_func112

arg1_type_check_passed_53:                        ; preds = %greater_eq_53
  br i1 true, label %arg2_type_check_passed_53, label %call_error_func114

call_error_func112:                               ; preds = %greater_eq_53
  store i64 %x5_49111, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_53:                        ; preds = %arg1_type_check_passed_53
  %greater_eq_llvm_result_53 = icmp sge i64 %x5_49111, 20
  br i1 %greater_eq_llvm_result_53, label %comp_is_true_53, label %comp_is_false_53

call_error_func114:                               ; preds = %arg1_type_check_passed_53
  store i64 20, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_53:                                  ; preds = %arg2_type_check_passed_53
  br label %merge_53

comp_is_false_53:                                 ; preds = %arg2_type_check_passed_53
  br label %merge_53

merge_53:                                         ; preds = %comp_is_false_53, %comp_is_true_53
  %greater_eq_snake_result_53 = phi i64 [ -1, %comp_is_true_53 ], [ 9223372036854775807, %comp_is_false_53 ]
  br label %let_25

let_25:                                           ; preds = %merge_53
  %binop_54 = alloca i64, align 8
  store i64 %greater_eq_snake_result_53, i64* %binop_54, align 4
  br label %if_else_26

if_else_26:                                       ; preds = %let_25
  %binop_54116 = load i64, i64* %binop_54, align 4
  %tag_bits_of_cond_val = and i64 %binop_54116, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_26, label %call_error_func117

continue_if_else_26:                              ; preds = %if_else_26
  %is_cond_true = icmp eq i64 %binop_54116, -1
  br i1 %is_cond_true, label %then_26, label %else_26

call_error_func117:                               ; preds = %if_else_26
  store i64 %binop_54116, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 4)
  unreachable

then_26:                                          ; preds = %continue_if_else_26
  br label %construct_tuple_49

else_26:                                          ; preds = %continue_if_else_26
  br label %construct_tuple_41

merge_then_else_26:                               ; preds = %is_correct_arity_30, %construct_tuple_45
  %"if/else_snake_result_26" = phi i64 [ %tuple_tagged_tuple_addr_word_45, %construct_tuple_45 ], [ %lambda_tail_call_result, %is_correct_arity_30 ]
  br label %return

construct_tuple_49:                               ; preds = %then_26
  %x3_35119 = load i64, i64* %x3_35, align 4
  %x4_42120 = load i64, i64* %x4_42, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_49 = bitcast i8* %malloccall to { i64, i64, i64 }*
  %3 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 0
  %4 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_49, i32 0, i32 2
  store i64 4, i64* %3, align 4
  store i64 %x3_35119, i64* %4, align 4
  store i64 %x4_42120, i64* %5, align 4
  %tuple_addr_49 = ptrtoint { i64, i64, i64 }* %tuple_ptr_49 to i64
  %tuple_tagged_tuple_addr_word_49 = add i64 %tuple_addr_49, 1
  br label %let_44

let_44:                                           ; preds = %construct_tuple_49
  %tuple_59 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_49, i64* %tuple_59, align 4
  br label %construct_tuple_45

construct_tuple_45:                               ; preds = %let_44
  %x2_30121 = load i64, i64* %x2_30, align 4
  %tuple_59122 = load i64, i64* %tuple_59, align 4
  %x5_49123 = load i64, i64* %x5_49, align 4
  %malloccall124 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_45 = bitcast i8* %malloccall124 to { i64, i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_45, i32 0, i32 0
  %7 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_45, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_45, i32 0, i32 2
  %9 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_45, i32 0, i32 3
  store i64 6, i64* %6, align 4
  store i64 %x2_30121, i64* %7, align 4
  store i64 %tuple_59122, i64* %8, align 4
  store i64 %x5_49123, i64* %9, align 4
  %tuple_addr_45 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_45 to i64
  %tuple_tagged_tuple_addr_word_45 = add i64 %tuple_addr_45, 1
  br label %merge_then_else_26

construct_tuple_41:                               ; preds = %else_26
  %x3_35125 = load i64, i64* %x3_35, align 4
  %x4_42126 = load i64, i64* %x4_42, align 4
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_41 = bitcast i8* %malloccall127 to { i64, i64, i64 }*
  %10 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_41, i32 0, i32 0
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_41, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_41, i32 0, i32 2
  store i64 4, i64* %10, align 4
  store i64 %x3_35125, i64* %11, align 4
  store i64 %x4_42126, i64* %12, align 4
  %tuple_addr_41 = ptrtoint { i64, i64, i64 }* %tuple_ptr_41 to i64
  %tuple_tagged_tuple_addr_word_41 = add i64 %tuple_addr_41, 1
  br label %let_27

let_27:                                           ; preds = %construct_tuple_41
  %tuple_67 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_41, i64* %tuple_67, align 4
  br label %plus_38

plus_38:                                          ; preds = %let_27
  %x5_49128 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1129 = and i64 %x5_49128, 1
  %is_arg1_int130 = icmp eq i64 %tag_bits_of_arg1129, 0
  br i1 %is_arg1_int130, label %arg1_type_check_passed_38, label %call_error_func131

arg1_type_check_passed_38:                        ; preds = %plus_38
  br i1 true, label %arg2_type_check_passed_38, label %call_error_func133

call_error_func131:                               ; preds = %plus_38
  store i64 %x5_49128, i64* @current_answer_ptr, align 4
  %error_call_return_val132 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_38:                        ; preds = %arg1_type_check_passed_38
  %plus_snake_result_38 = add i64 %x5_49128, 2
  %l_ge_0 = icmp sge i64 %x5_49128, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_38, %x5_49128
  %sum_lt_r = icmp slt i64 %plus_snake_result_38, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x5_49128, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_38, %x5_49128
  %sum_gt_r = icmp sgt i64 %plus_snake_result_38, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_38, label %call_error_func135

call_error_func133:                               ; preds = %arg1_type_check_passed_38
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val134 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_38:                          ; preds = %arg2_type_check_passed_38
  %plus_snake_result_38137 = phi i64 [ %plus_snake_result_38, %arg2_type_check_passed_38 ]
  br label %let_28

call_error_func135:                               ; preds = %arg2_type_check_passed_38
  store i64 %plus_snake_result_38, i64* @current_answer_ptr, align 4
  %error_call_return_val136 = call i64 @error_func(i64 5)
  unreachable

let_28:                                           ; preds = %continue_no_overflow_38
  %binop_70 = alloca i64, align 8
  store i64 %plus_snake_result_38137, i64* %binop_70, align 4
  br label %construct_tuple_34

construct_tuple_34:                               ; preds = %let_28
  %x2_30138 = load i64, i64* %x2_30, align 4
  %tuple_67139 = load i64, i64* %tuple_67, align 4
  %binop_70140 = load i64, i64* %binop_70, align 4
  %malloccall141 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_34 = bitcast i8* %malloccall141 to { i64, i64, i64, i64 }*
  %13 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_34, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_34, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_34, i32 0, i32 2
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_34, i32 0, i32 3
  store i64 6, i64* %13, align 4
  store i64 %x2_30138, i64* %14, align 4
  store i64 %tuple_67139, i64* %15, align 4
  store i64 %binop_70140, i64* %16, align 4
  %tuple_addr_34 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_34 to i64
  %tuple_tagged_tuple_addr_word_34 = add i64 %tuple_addr_34, 1
  br label %let_29

let_29:                                           ; preds = %construct_tuple_34
  %tuple_65 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_34, i64* %tuple_65, align 4
  br label %function_call

function_call:                                    ; preds = %let_29
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_30, label %call_error_func142

is_closure_30:                                    ; preds = %function_call
  %untagged_closure_addr144 = sub i64 %f1_26, 5
  %closure_ptr145 = inttoptr i64 %untagged_closure_addr144 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr145, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr145, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 4
  br i1 %17, label %is_correct_arity_30, label %call_error_func146

call_error_func142:                               ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val143 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_30:                              ; preds = %is_closure_30
  %tuple_65148 = load i64, i64* %tuple_65, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %tuple_65148)
  br label %merge_then_else_26

call_error_func146:                               ; preds = %is_closure_30
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val147 = call i64 @error_func(i64 17)
  unreachable
}
