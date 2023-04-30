; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_71

create_lambda_closure_71:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_71 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_71, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_71, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_71, i32 0, i32 2
  store i64 (i64, i64)* @lambda_71_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_71 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_71 to i64
  %closure_tagged_tuple_addr_word_71 = add i64 %closure_addr_71, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_71
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_71, i64* %print_4, align 4
  br label %create_lambda_closure_68

create_lambda_closure_68:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_68 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_68, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_68, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_68, i32 0, i32 2
  store i64 (i64)* @lambda_68_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_68 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_68 to i64
  %closure_tagged_tuple_addr_word_68 = add i64 %closure_addr_68, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_68
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_68, i64* %input_11, align 4
  br label %create_lambda_closure_63

create_lambda_closure_63:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_63 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_63, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_63, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_63, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_63_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_63 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_63 to i64
  %closure_tagged_tuple_addr_word_63 = add i64 %closure_addr_63, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_63
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_63, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_19

create_lambda_closure_19:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_19 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_19, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_19, i32 0, i32 1
  store i64 (i64, i64, i64, i64)* @lambda_19_, i64 (i64, i64, i64, i64)** %9, align 8
  store i64 6, i64* %10, align 4
  %closure_addr_19 = ptrtoint { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_19 to i64
  %closure_tagged_tuple_addr_word_19 = add i64 %closure_addr_19, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_19
  store i64 %closure_tagged_tuple_addr_word_19, i64* %f1_26, align 4
  br label %construct_tuple_16

construct_tuple_16:                               ; preds = %patch_let_rec_closures_4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_16 = bitcast i8* %malloccall4 to { i64, i64, i64 }*
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_16, i32 0, i32 0
  %12 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_16, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_16, i32 0, i32 2
  store i64 4, i64* %11, align 4
  store i64 6, i64* %12, align 4
  store i64 8, i64* %13, align 4
  %tuple_addr_16 = ptrtoint { i64, i64, i64 }* %tuple_ptr_16 to i64
  %tuple_tagged_tuple_addr_word_16 = add i64 %tuple_addr_16, 1
  br label %let_5

let_5:                                            ; preds = %construct_tuple_16
  %tuple_71 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_16, i64* %tuple_71, align 4
  br label %construct_tuple_12

construct_tuple_12:                               ; preds = %let_5
  %tuple_715 = load i64, i64* %tuple_71, align 4
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_12 = bitcast i8* %malloccall6 to { i64, i64, i64, i64 }*
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_12, i32 0, i32 0
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_12, i32 0, i32 1
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_12, i32 0, i32 2
  %17 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_12, i32 0, i32 3
  store i64 6, i64* %14, align 4
  store i64 4, i64* %15, align 4
  store i64 %tuple_715, i64* %16, align 4
  store i64 10, i64* %17, align 4
  %tuple_addr_12 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_12 to i64
  %tuple_tagged_tuple_addr_word_12 = add i64 %tuple_addr_12, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_12
  %tuple_69 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_12, i64* %tuple_69, align 4
  br label %function_call

function_call:                                    ; preds = %let_6
  %f1_267 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_267, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_7, label %call_error_func

is_closure_7:                                     ; preds = %function_call
  %untagged_closure_addr = sub i64 %f1_267, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %18 = icmp eq i64 %arity, 6
  br i1 %18, label %is_correct_arity_7, label %call_error_func8

call_error_func:                                  ; preds = %function_call
  store i64 %f1_267, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_7:                               ; preds = %is_closure_7
  %tuple_6910 = load i64, i64* %tuple_69, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_267, i64 2, i64 %tuple_6910, i64 12)
  br label %result

call_error_func8:                                 ; preds = %is_closure_7
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 17)
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

define i64 @lambda_71_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_72

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_72 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_68_(i64 %0) {
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
  ret i64 %input_tail_call_result_69

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_69 = tail call i64 @input()
  br label %return
}

define i64 @lambda_63_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_64

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_64 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_19_(i64 %0, i64 %1, i64 %2, i64 %3) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_60

return:                                           ; preds = %continue_no_overflow_30
  ret i64 %plus_snake_result_30234

get_item_60:                                      ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_60, label %call_error_func

it_not_nil_60:                                    ; preds = %get_item_60
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_60, label %call_error_func1

call_error_func:                                  ; preds = %get_item_60
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_60:                                   ; preds = %it_not_nil_60
  br i1 true, label %it_is_integer_60, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_60
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_60:                                 ; preds = %it_is_tuple_60
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_60, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_60
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_60:                           ; preds = %it_is_integer_60
  br i1 true, label %index_is_not_negative_60, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_60
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_60:                         ; preds = %index_is_less_tha_n_60
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_20

call_error_func7:                                 ; preds = %index_is_less_tha_n_60
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_20:                                           ; preds = %index_is_not_negative_60
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_57

get_item_57:                                      ; preds = %let_20
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_57, label %call_error_func10

it_not_nil_57:                                    ; preds = %get_item_57
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_57, label %call_error_func14

call_error_func10:                                ; preds = %get_item_57
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_57:                                   ; preds = %it_not_nil_57
  br i1 true, label %it_is_integer_57, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_57
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_57:                                 ; preds = %it_is_tuple_57
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_57, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_57
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_57:                           ; preds = %it_is_integer_57
  br i1 true, label %index_is_not_negative_57, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_57
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_57:                         ; preds = %index_is_less_tha_n_57
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_21

call_error_func25:                                ; preds = %index_is_less_tha_n_57
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_21:                                           ; preds = %index_is_not_negative_57
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_54

get_item_54:                                      ; preds = %let_21
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_54, label %call_error_func31

it_not_nil_54:                                    ; preds = %get_item_54
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_54, label %call_error_func35

call_error_func31:                                ; preds = %get_item_54
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_54:                                   ; preds = %it_not_nil_54
  br i1 true, label %it_is_integer_54, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_54
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_54:                                 ; preds = %it_is_tuple_54
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_54, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_54
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_54:                           ; preds = %it_is_integer_54
  br i1 true, label %index_is_not_negative_54, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_54
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_54:                         ; preds = %index_is_less_tha_n_54
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_22

call_error_func46:                                ; preds = %index_is_less_tha_n_54
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_22:                                           ; preds = %index_is_not_negative_54
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_51

get_item_51:                                      ; preds = %let_22
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_51, label %call_error_func51

it_not_nil_51:                                    ; preds = %get_item_51
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_51, label %call_error_func55

call_error_func51:                                ; preds = %get_item_51
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_51:                                   ; preds = %it_not_nil_51
  br i1 true, label %it_is_integer_51, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_51
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_51:                                 ; preds = %it_is_tuple_51
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_51, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_51
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_51:                           ; preds = %it_is_integer_51
  br i1 true, label %index_is_not_negative_51, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_51
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_51:                         ; preds = %index_is_less_tha_n_51
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_23

call_error_func66:                                ; preds = %index_is_less_tha_n_51
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_23:                                           ; preds = %index_is_not_negative_51
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_48

get_item_48:                                      ; preds = %let_23
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_48, label %call_error_func72

it_not_nil_48:                                    ; preds = %get_item_48
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_48, label %call_error_func76

call_error_func72:                                ; preds = %get_item_48
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_48:                                   ; preds = %it_not_nil_48
  br i1 true, label %it_is_integer_48, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_48
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_48:                                 ; preds = %it_is_tuple_48
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_48, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_48
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_48:                           ; preds = %it_is_integer_48
  br i1 true, label %index_is_not_negative_48, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_48
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_48:                         ; preds = %index_is_less_tha_n_48
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_24

call_error_func87:                                ; preds = %index_is_less_tha_n_48
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_24:                                           ; preds = %index_is_not_negative_48
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_45

get_item_45:                                      ; preds = %let_24
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_45, label %call_error_func92

it_not_nil_45:                                    ; preds = %get_item_45
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_45, label %call_error_func96

call_error_func92:                                ; preds = %get_item_45
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_45:                                   ; preds = %it_not_nil_45
  br i1 true, label %it_is_integer_45, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_45
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_45:                                 ; preds = %it_is_tuple_45
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_45, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_45
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_45:                           ; preds = %it_is_integer_45
  br i1 true, label %index_is_not_negative_45, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_45
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_45:                         ; preds = %index_is_less_tha_n_45
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_25

call_error_func107:                               ; preds = %index_is_less_tha_n_45
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_25:                                           ; preds = %index_is_not_negative_45
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %plus_42

plus_42:                                          ; preds = %let_25
  %x2_30111 = load i64, i64* %x2_30, align 4
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_42, label %call_error_func112

arg1_type_check_passed_42:                        ; preds = %plus_42
  %tag_bits_of_arg2 = and i64 %x2_30111, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_42, label %call_error_func114

call_error_func112:                               ; preds = %plus_42
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_42:                        ; preds = %arg1_type_check_passed_42
  %plus_snake_result_42 = add i64 %1, %x2_30111
  %r_ge_0 = icmp sge i64 %x2_30111, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_42, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_42, %x2_30111
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x2_30111, 0
  %l_lt_0116 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_0116, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_42, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_42, %x2_30111
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_42, label %call_error_func117

call_error_func114:                               ; preds = %arg1_type_check_passed_42
  store i64 %x2_30111, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_42:                          ; preds = %arg2_type_check_passed_42
  %plus_snake_result_42119 = phi i64 [ %plus_snake_result_42, %arg2_type_check_passed_42 ]
  br label %let_26

call_error_func117:                               ; preds = %arg2_type_check_passed_42
  store i64 %plus_snake_result_42, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 5)
  unreachable

let_26:                                           ; preds = %continue_no_overflow_42
  %binop_57 = alloca i64, align 8
  store i64 %plus_snake_result_42119, i64* %binop_57, align 4
  br label %plus_39

plus_39:                                          ; preds = %let_26
  %binop_57120 = load i64, i64* %binop_57, align 4
  %x3_35121 = load i64, i64* %x3_35, align 4
  %tag_bits_of_arg1122 = and i64 %binop_57120, 1
  %is_arg1_int123 = icmp eq i64 %tag_bits_of_arg1122, 0
  br i1 %is_arg1_int123, label %arg1_type_check_passed_39, label %call_error_func124

arg1_type_check_passed_39:                        ; preds = %plus_39
  %tag_bits_of_arg2126 = and i64 %x3_35121, 1
  %is_arg2_int127 = icmp eq i64 %tag_bits_of_arg2126, 0
  br i1 %is_arg2_int127, label %arg2_type_check_passed_39, label %call_error_func128

call_error_func124:                               ; preds = %plus_39
  store i64 %binop_57120, i64* @current_answer_ptr, align 4
  %error_call_return_val125 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_39:                        ; preds = %arg1_type_check_passed_39
  %plus_snake_result_39 = add i64 %binop_57120, %x3_35121
  %r_ge_0130 = icmp sge i64 %x3_35121, 0
  %l_ge_0131 = icmp sge i64 %binop_57120, 0
  %positive_overflow132 = and i1 %l_ge_0131, %r_ge_0130
  %sum_lt_l133 = icmp slt i64 %plus_snake_result_39, %binop_57120
  %sum_lt_r134 = icmp slt i64 %plus_snake_result_39, %x3_35121
  %overflow_on_positive135 = or i1 %sum_lt_l133, %sum_lt_r134
  %l_lt_0136 = icmp slt i64 %x3_35121, 0
  %l_lt_0137 = icmp slt i64 %binop_57120, 0
  %negative_overflow138 = and i1 %l_lt_0137, %l_lt_0136
  %sum_gt_l139 = icmp sgt i64 %plus_snake_result_39, %binop_57120
  %sum_gt_r140 = icmp sgt i64 %plus_snake_result_39, %x3_35121
  %overflow_on_negative141 = or i1 %sum_gt_l139, %sum_gt_r140
  %negative_check142 = and i1 %negative_overflow138, %overflow_on_negative141
  %positive_check143 = and i1 %positive_overflow132, %overflow_on_positive135
  %overflow144 = or i1 %positive_check143, %negative_check142
  %is_not_overflow145 = xor i1 %overflow144, true
  br i1 %is_not_overflow145, label %continue_no_overflow_39, label %call_error_func146

call_error_func128:                               ; preds = %arg1_type_check_passed_39
  store i64 %x3_35121, i64* @current_answer_ptr, align 4
  %error_call_return_val129 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_39:                          ; preds = %arg2_type_check_passed_39
  %plus_snake_result_39148 = phi i64 [ %plus_snake_result_39, %arg2_type_check_passed_39 ]
  br label %let_27

call_error_func146:                               ; preds = %arg2_type_check_passed_39
  store i64 %plus_snake_result_39, i64* @current_answer_ptr, align 4
  %error_call_return_val147 = call i64 @error_func(i64 5)
  unreachable

let_27:                                           ; preds = %continue_no_overflow_39
  %binop_56 = alloca i64, align 8
  store i64 %plus_snake_result_39148, i64* %binop_56, align 4
  br label %plus_36

plus_36:                                          ; preds = %let_27
  %binop_56149 = load i64, i64* %binop_56, align 4
  %x4_42150 = load i64, i64* %x4_42, align 4
  %tag_bits_of_arg1151 = and i64 %binop_56149, 1
  %is_arg1_int152 = icmp eq i64 %tag_bits_of_arg1151, 0
  br i1 %is_arg1_int152, label %arg1_type_check_passed_36, label %call_error_func153

arg1_type_check_passed_36:                        ; preds = %plus_36
  %tag_bits_of_arg2155 = and i64 %x4_42150, 1
  %is_arg2_int156 = icmp eq i64 %tag_bits_of_arg2155, 0
  br i1 %is_arg2_int156, label %arg2_type_check_passed_36, label %call_error_func157

call_error_func153:                               ; preds = %plus_36
  store i64 %binop_56149, i64* @current_answer_ptr, align 4
  %error_call_return_val154 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_36:                        ; preds = %arg1_type_check_passed_36
  %plus_snake_result_36 = add i64 %binop_56149, %x4_42150
  %r_ge_0159 = icmp sge i64 %x4_42150, 0
  %l_ge_0160 = icmp sge i64 %binop_56149, 0
  %positive_overflow161 = and i1 %l_ge_0160, %r_ge_0159
  %sum_lt_l162 = icmp slt i64 %plus_snake_result_36, %binop_56149
  %sum_lt_r163 = icmp slt i64 %plus_snake_result_36, %x4_42150
  %overflow_on_positive164 = or i1 %sum_lt_l162, %sum_lt_r163
  %l_lt_0165 = icmp slt i64 %x4_42150, 0
  %l_lt_0166 = icmp slt i64 %binop_56149, 0
  %negative_overflow167 = and i1 %l_lt_0166, %l_lt_0165
  %sum_gt_l168 = icmp sgt i64 %plus_snake_result_36, %binop_56149
  %sum_gt_r169 = icmp sgt i64 %plus_snake_result_36, %x4_42150
  %overflow_on_negative170 = or i1 %sum_gt_l168, %sum_gt_r169
  %negative_check171 = and i1 %negative_overflow167, %overflow_on_negative170
  %positive_check172 = and i1 %positive_overflow161, %overflow_on_positive164
  %overflow173 = or i1 %positive_check172, %negative_check171
  %is_not_overflow174 = xor i1 %overflow173, true
  br i1 %is_not_overflow174, label %continue_no_overflow_36, label %call_error_func175

call_error_func157:                               ; preds = %arg1_type_check_passed_36
  store i64 %x4_42150, i64* @current_answer_ptr, align 4
  %error_call_return_val158 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_36:                          ; preds = %arg2_type_check_passed_36
  %plus_snake_result_36177 = phi i64 [ %plus_snake_result_36, %arg2_type_check_passed_36 ]
  br label %let_28

call_error_func175:                               ; preds = %arg2_type_check_passed_36
  store i64 %plus_snake_result_36, i64* @current_answer_ptr, align 4
  %error_call_return_val176 = call i64 @error_func(i64 5)
  unreachable

let_28:                                           ; preds = %continue_no_overflow_36
  %binop_55 = alloca i64, align 8
  store i64 %plus_snake_result_36177, i64* %binop_55, align 4
  br label %plus_33

plus_33:                                          ; preds = %let_28
  %binop_55178 = load i64, i64* %binop_55, align 4
  %x5_49179 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1180 = and i64 %binop_55178, 1
  %is_arg1_int181 = icmp eq i64 %tag_bits_of_arg1180, 0
  br i1 %is_arg1_int181, label %arg1_type_check_passed_33, label %call_error_func182

arg1_type_check_passed_33:                        ; preds = %plus_33
  %tag_bits_of_arg2184 = and i64 %x5_49179, 1
  %is_arg2_int185 = icmp eq i64 %tag_bits_of_arg2184, 0
  br i1 %is_arg2_int185, label %arg2_type_check_passed_33, label %call_error_func186

call_error_func182:                               ; preds = %plus_33
  store i64 %binop_55178, i64* @current_answer_ptr, align 4
  %error_call_return_val183 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_33:                        ; preds = %arg1_type_check_passed_33
  %plus_snake_result_33 = add i64 %binop_55178, %x5_49179
  %r_ge_0188 = icmp sge i64 %x5_49179, 0
  %l_ge_0189 = icmp sge i64 %binop_55178, 0
  %positive_overflow190 = and i1 %l_ge_0189, %r_ge_0188
  %sum_lt_l191 = icmp slt i64 %plus_snake_result_33, %binop_55178
  %sum_lt_r192 = icmp slt i64 %plus_snake_result_33, %x5_49179
  %overflow_on_positive193 = or i1 %sum_lt_l191, %sum_lt_r192
  %l_lt_0194 = icmp slt i64 %x5_49179, 0
  %l_lt_0195 = icmp slt i64 %binop_55178, 0
  %negative_overflow196 = and i1 %l_lt_0195, %l_lt_0194
  %sum_gt_l197 = icmp sgt i64 %plus_snake_result_33, %binop_55178
  %sum_gt_r198 = icmp sgt i64 %plus_snake_result_33, %x5_49179
  %overflow_on_negative199 = or i1 %sum_gt_l197, %sum_gt_r198
  %negative_check200 = and i1 %negative_overflow196, %overflow_on_negative199
  %positive_check201 = and i1 %positive_overflow190, %overflow_on_positive193
  %overflow202 = or i1 %positive_check201, %negative_check200
  %is_not_overflow203 = xor i1 %overflow202, true
  br i1 %is_not_overflow203, label %continue_no_overflow_33, label %call_error_func204

call_error_func186:                               ; preds = %arg1_type_check_passed_33
  store i64 %x5_49179, i64* @current_answer_ptr, align 4
  %error_call_return_val187 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_33:                          ; preds = %arg2_type_check_passed_33
  %plus_snake_result_33206 = phi i64 [ %plus_snake_result_33, %arg2_type_check_passed_33 ]
  br label %let_29

call_error_func204:                               ; preds = %arg2_type_check_passed_33
  store i64 %plus_snake_result_33, i64* @current_answer_ptr, align 4
  %error_call_return_val205 = call i64 @error_func(i64 5)
  unreachable

let_29:                                           ; preds = %continue_no_overflow_33
  %binop_54 = alloca i64, align 8
  store i64 %plus_snake_result_33206, i64* %binop_54, align 4
  br label %plus_30

plus_30:                                          ; preds = %let_29
  %binop_54207 = load i64, i64* %binop_54, align 4
  %tag_bits_of_arg1208 = and i64 %binop_54207, 1
  %is_arg1_int209 = icmp eq i64 %tag_bits_of_arg1208, 0
  br i1 %is_arg1_int209, label %arg1_type_check_passed_30, label %call_error_func210

arg1_type_check_passed_30:                        ; preds = %plus_30
  %tag_bits_of_arg2212 = and i64 %3, 1
  %is_arg2_int213 = icmp eq i64 %tag_bits_of_arg2212, 0
  br i1 %is_arg2_int213, label %arg2_type_check_passed_30, label %call_error_func214

call_error_func210:                               ; preds = %plus_30
  store i64 %binop_54207, i64* @current_answer_ptr, align 4
  %error_call_return_val211 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_30:                        ; preds = %arg1_type_check_passed_30
  %plus_snake_result_30 = add i64 %binop_54207, %3
  %r_ge_0216 = icmp sge i64 %3, 0
  %l_ge_0217 = icmp sge i64 %binop_54207, 0
  %positive_overflow218 = and i1 %l_ge_0217, %r_ge_0216
  %sum_lt_l219 = icmp slt i64 %plus_snake_result_30, %binop_54207
  %sum_lt_r220 = icmp slt i64 %plus_snake_result_30, %3
  %overflow_on_positive221 = or i1 %sum_lt_l219, %sum_lt_r220
  %l_lt_0222 = icmp slt i64 %3, 0
  %l_lt_0223 = icmp slt i64 %binop_54207, 0
  %negative_overflow224 = and i1 %l_lt_0223, %l_lt_0222
  %sum_gt_l225 = icmp sgt i64 %plus_snake_result_30, %binop_54207
  %sum_gt_r226 = icmp sgt i64 %plus_snake_result_30, %3
  %overflow_on_negative227 = or i1 %sum_gt_l225, %sum_gt_r226
  %negative_check228 = and i1 %negative_overflow224, %overflow_on_negative227
  %positive_check229 = and i1 %positive_overflow218, %overflow_on_positive221
  %overflow230 = or i1 %positive_check229, %negative_check228
  %is_not_overflow231 = xor i1 %overflow230, true
  br i1 %is_not_overflow231, label %continue_no_overflow_30, label %call_error_func232

call_error_func214:                               ; preds = %arg1_type_check_passed_30
  store i64 %3, i64* @current_answer_ptr, align 4
  %error_call_return_val215 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_30:                          ; preds = %arg2_type_check_passed_30
  %plus_snake_result_30234 = phi i64 [ %plus_snake_result_30, %arg2_type_check_passed_30 ]
  br label %return

call_error_func232:                               ; preds = %arg2_type_check_passed_30
  store i64 %plus_snake_result_30, i64* @current_answer_ptr, align 4
  %error_call_return_val233 = call i64 @error_func(i64 5)
  unreachable
}
