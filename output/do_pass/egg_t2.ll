; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_70

create_lambda_closure_70:                         ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_70 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_70, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_70, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_70, i32 0, i32 2
  store i64 (i64, i64)* @lambda_70_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_70 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_70 to i64
  %closure_tagged_tuple_addr_word_70 = add i64 %closure_addr_70, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_70
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_70, i64* %print_4, align 4
  br label %create_lambda_closure_67

create_lambda_closure_67:                         ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_67 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_67, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_67, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_67, i32 0, i32 2
  store i64 (i64)* @lambda_67_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_67 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_67 to i64
  %closure_tagged_tuple_addr_word_67 = add i64 %closure_addr_67, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_67
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_67, i64* %input_11, align 4
  br label %create_lambda_closure_62

create_lambda_closure_62:                         ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_62 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_62, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_62, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_62, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_62_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_62 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_62 to i64
  %closure_tagged_tuple_addr_word_62 = add i64 %closure_addr_62, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_62
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_62, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_22

create_lambda_closure_22:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_22 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_22, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_22, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_22_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  %closure_addr_22 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_22 to i64
  %closure_tagged_tuple_addr_word_22 = add i64 %closure_addr_22, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_22
  store i64 %closure_tagged_tuple_addr_word_22, i64* %f1_26, align 4
  br label %construct_tuple_19

construct_tuple_19:                               ; preds = %patch_let_rec_closures_4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_19 = bitcast i8* %malloccall4 to { i64, i64, i64 }*
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 0
  %12 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_19, i32 0, i32 2
  store i64 4, i64* %11, align 4
  store i64 6, i64* %12, align 4
  store i64 8, i64* %13, align 4
  %tuple_addr_19 = ptrtoint { i64, i64, i64 }* %tuple_ptr_19 to i64
  %tuple_tagged_tuple_addr_word_19 = add i64 %tuple_addr_19, 1
  br label %let_5

let_5:                                            ; preds = %construct_tuple_19
  %tuple_71 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_19, i64* %tuple_71, align 4
  br label %construct_tuple_15

construct_tuple_15:                               ; preds = %let_5
  %tuple_715 = load i64, i64* %tuple_71, align 4
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_15 = bitcast i8* %malloccall6 to { i64, i64, i64, i64 }*
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 0
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 1
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 2
  %17 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_15, i32 0, i32 3
  store i64 6, i64* %14, align 4
  store i64 4, i64* %15, align 4
  store i64 %tuple_715, i64* %16, align 4
  store i64 10, i64* %17, align 4
  %tuple_addr_15 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_15 to i64
  %tuple_tagged_tuple_addr_word_15 = add i64 %tuple_addr_15, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_15
  %tuple_69 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_15, i64* %tuple_69, align 4
  br label %function_call

function_call:                                    ; preds = %let_6
  %f1_267 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_267, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_11, label %call_error_func

is_closure_11:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %f1_267, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %18 = icmp eq i64 %arity, 4
  br i1 %18, label %is_correct_arity_11, label %call_error_func8

call_error_func:                                  ; preds = %function_call
  store i64 %f1_267, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_11:                              ; preds = %is_closure_11
  %tuple_6910 = load i64, i64* %tuple_69, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_267, i64 2, i64 %tuple_6910)
  br label %let_7

call_error_func8:                                 ; preds = %is_closure_11
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 17)
  unreachable

let_7:                                            ; preds = %is_correct_arity_11
  %x_66 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %x_66, align 4
  br label %construct_tuple_8

construct_tuple_8:                                ; preds = %let_7
  %x_6611 = load i64, i64* %x_66, align 4
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_8 = bitcast i8* %malloccall12 to { i64, i64, i64 }*
  %19 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_8, i32 0, i32 0
  %20 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_8, i32 0, i32 1
  %21 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_8, i32 0, i32 2
  store i64 4, i64* %19, align 4
  store i64 %x_6611, i64* %20, align 4
  store i64 2, i64* %21, align 4
  %tuple_addr_8 = ptrtoint { i64, i64, i64 }* %tuple_ptr_8 to i64
  %tuple_tagged_tuple_addr_word_8 = add i64 %tuple_addr_8, 1
  br label %result

result:                                           ; preds = %construct_tuple_8
  ret i64 %tuple_tagged_tuple_addr_word_8
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

define i64 @lambda_70_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_71

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_71 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_67_(i64 %0) {
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
  ret i64 %input_tail_call_result_68

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_68 = tail call i64 @input()
  br label %return
}

define i64 @lambda_62_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_63

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_63 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_22_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_59

return:                                           ; preds = %continue_no_overflow_32
  ret i64 %plus_snake_result_32206

get_item_59:                                      ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_59, label %call_error_func

it_not_nil_59:                                    ; preds = %get_item_59
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_59, label %call_error_func1

call_error_func:                                  ; preds = %get_item_59
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_59:                                   ; preds = %it_not_nil_59
  br i1 true, label %it_is_integer_59, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_59
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_59:                                 ; preds = %it_is_tuple_59
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_59, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_59
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_59:                           ; preds = %it_is_integer_59
  br i1 true, label %index_is_not_negative_59, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_59
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_59:                         ; preds = %index_is_less_tha_n_59
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_23

call_error_func7:                                 ; preds = %index_is_less_tha_n_59
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_23:                                           ; preds = %index_is_not_negative_59
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_56

get_item_56:                                      ; preds = %let_23
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_56, label %call_error_func10

it_not_nil_56:                                    ; preds = %get_item_56
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_56, label %call_error_func14

call_error_func10:                                ; preds = %get_item_56
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_56:                                   ; preds = %it_not_nil_56
  br i1 true, label %it_is_integer_56, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_56
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_56:                                 ; preds = %it_is_tuple_56
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_56, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_56
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_56:                           ; preds = %it_is_integer_56
  br i1 true, label %index_is_not_negative_56, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_56
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_56:                         ; preds = %index_is_less_tha_n_56
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_24

call_error_func25:                                ; preds = %index_is_less_tha_n_56
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_24:                                           ; preds = %index_is_not_negative_56
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_53

get_item_53:                                      ; preds = %let_24
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_53, label %call_error_func31

it_not_nil_53:                                    ; preds = %get_item_53
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_53, label %call_error_func35

call_error_func31:                                ; preds = %get_item_53
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_53:                                   ; preds = %it_not_nil_53
  br i1 true, label %it_is_integer_53, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_53
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_53:                                 ; preds = %it_is_tuple_53
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_53, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_53
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_53:                           ; preds = %it_is_integer_53
  br i1 true, label %index_is_not_negative_53, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_53
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_53:                         ; preds = %index_is_less_tha_n_53
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_25

call_error_func46:                                ; preds = %index_is_less_tha_n_53
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_25:                                           ; preds = %index_is_not_negative_53
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_50

get_item_50:                                      ; preds = %let_25
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_50, label %call_error_func51

it_not_nil_50:                                    ; preds = %get_item_50
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_50, label %call_error_func55

call_error_func51:                                ; preds = %get_item_50
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_50:                                   ; preds = %it_not_nil_50
  br i1 true, label %it_is_integer_50, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_50
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_50:                                 ; preds = %it_is_tuple_50
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_50, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_50
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_50:                           ; preds = %it_is_integer_50
  br i1 true, label %index_is_not_negative_50, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_50
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_50:                         ; preds = %index_is_less_tha_n_50
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_26

call_error_func66:                                ; preds = %index_is_less_tha_n_50
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_26:                                           ; preds = %index_is_not_negative_50
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_47

get_item_47:                                      ; preds = %let_26
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_47, label %call_error_func72

it_not_nil_47:                                    ; preds = %get_item_47
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_47, label %call_error_func76

call_error_func72:                                ; preds = %get_item_47
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_47:                                   ; preds = %it_not_nil_47
  br i1 true, label %it_is_integer_47, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_47
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_47:                                 ; preds = %it_is_tuple_47
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_47, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_47
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_47:                           ; preds = %it_is_integer_47
  br i1 true, label %index_is_not_negative_47, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_47
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_47:                         ; preds = %index_is_less_tha_n_47
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_27

call_error_func87:                                ; preds = %index_is_less_tha_n_47
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_27:                                           ; preds = %index_is_not_negative_47
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_44

get_item_44:                                      ; preds = %let_27
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_44, label %call_error_func92

it_not_nil_44:                                    ; preds = %get_item_44
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_44, label %call_error_func96

call_error_func92:                                ; preds = %get_item_44
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_44:                                   ; preds = %it_not_nil_44
  br i1 true, label %it_is_integer_44, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_44
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_44:                                 ; preds = %it_is_tuple_44
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_44, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_44
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_44:                           ; preds = %it_is_integer_44
  br i1 true, label %index_is_not_negative_44, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_44
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_44:                         ; preds = %index_is_less_tha_n_44
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_28

call_error_func107:                               ; preds = %index_is_less_tha_n_44
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_28:                                           ; preds = %index_is_not_negative_44
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %plus_41

plus_41:                                          ; preds = %let_28
  %x2_30111 = load i64, i64* %x2_30, align 4
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_41, label %call_error_func112

arg1_type_check_passed_41:                        ; preds = %plus_41
  %tag_bits_of_arg2 = and i64 %x2_30111, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_41, label %call_error_func114

call_error_func112:                               ; preds = %plus_41
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_41:                        ; preds = %arg1_type_check_passed_41
  %plus_snake_result_41 = add i64 %1, %x2_30111
  %r_ge_0 = icmp sge i64 %x2_30111, 0
  %l_ge_0 = icmp sge i64 %1, 0
  %positive_overflow = and i1 %l_ge_0, %r_ge_0
  %sum_lt_l = icmp slt i64 %plus_snake_result_41, %1
  %sum_lt_r = icmp slt i64 %plus_snake_result_41, %x2_30111
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x2_30111, 0
  %l_lt_0116 = icmp slt i64 %1, 0
  %negative_overflow = and i1 %l_lt_0116, %l_lt_0
  %sum_gt_l = icmp sgt i64 %plus_snake_result_41, %1
  %sum_gt_r = icmp sgt i64 %plus_snake_result_41, %x2_30111
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_41, label %call_error_func117

call_error_func114:                               ; preds = %arg1_type_check_passed_41
  store i64 %x2_30111, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_41:                          ; preds = %arg2_type_check_passed_41
  %plus_snake_result_41119 = phi i64 [ %plus_snake_result_41, %arg2_type_check_passed_41 ]
  br label %let_29

call_error_func117:                               ; preds = %arg2_type_check_passed_41
  store i64 %plus_snake_result_41, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 5)
  unreachable

let_29:                                           ; preds = %continue_no_overflow_41
  %binop_56 = alloca i64, align 8
  store i64 %plus_snake_result_41119, i64* %binop_56, align 4
  br label %plus_38

plus_38:                                          ; preds = %let_29
  %binop_56120 = load i64, i64* %binop_56, align 4
  %x3_35121 = load i64, i64* %x3_35, align 4
  %tag_bits_of_arg1122 = and i64 %binop_56120, 1
  %is_arg1_int123 = icmp eq i64 %tag_bits_of_arg1122, 0
  br i1 %is_arg1_int123, label %arg1_type_check_passed_38, label %call_error_func124

arg1_type_check_passed_38:                        ; preds = %plus_38
  %tag_bits_of_arg2126 = and i64 %x3_35121, 1
  %is_arg2_int127 = icmp eq i64 %tag_bits_of_arg2126, 0
  br i1 %is_arg2_int127, label %arg2_type_check_passed_38, label %call_error_func128

call_error_func124:                               ; preds = %plus_38
  store i64 %binop_56120, i64* @current_answer_ptr, align 4
  %error_call_return_val125 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_38:                        ; preds = %arg1_type_check_passed_38
  %plus_snake_result_38 = add i64 %binop_56120, %x3_35121
  %r_ge_0130 = icmp sge i64 %x3_35121, 0
  %l_ge_0131 = icmp sge i64 %binop_56120, 0
  %positive_overflow132 = and i1 %l_ge_0131, %r_ge_0130
  %sum_lt_l133 = icmp slt i64 %plus_snake_result_38, %binop_56120
  %sum_lt_r134 = icmp slt i64 %plus_snake_result_38, %x3_35121
  %overflow_on_positive135 = or i1 %sum_lt_l133, %sum_lt_r134
  %l_lt_0136 = icmp slt i64 %x3_35121, 0
  %l_lt_0137 = icmp slt i64 %binop_56120, 0
  %negative_overflow138 = and i1 %l_lt_0137, %l_lt_0136
  %sum_gt_l139 = icmp sgt i64 %plus_snake_result_38, %binop_56120
  %sum_gt_r140 = icmp sgt i64 %plus_snake_result_38, %x3_35121
  %overflow_on_negative141 = or i1 %sum_gt_l139, %sum_gt_r140
  %negative_check142 = and i1 %negative_overflow138, %overflow_on_negative141
  %positive_check143 = and i1 %positive_overflow132, %overflow_on_positive135
  %overflow144 = or i1 %positive_check143, %negative_check142
  %is_not_overflow145 = xor i1 %overflow144, true
  br i1 %is_not_overflow145, label %continue_no_overflow_38, label %call_error_func146

call_error_func128:                               ; preds = %arg1_type_check_passed_38
  store i64 %x3_35121, i64* @current_answer_ptr, align 4
  %error_call_return_val129 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_38:                          ; preds = %arg2_type_check_passed_38
  %plus_snake_result_38148 = phi i64 [ %plus_snake_result_38, %arg2_type_check_passed_38 ]
  br label %let_30

call_error_func146:                               ; preds = %arg2_type_check_passed_38
  store i64 %plus_snake_result_38, i64* @current_answer_ptr, align 4
  %error_call_return_val147 = call i64 @error_func(i64 5)
  unreachable

let_30:                                           ; preds = %continue_no_overflow_38
  %binop_55 = alloca i64, align 8
  store i64 %plus_snake_result_38148, i64* %binop_55, align 4
  br label %plus_35

plus_35:                                          ; preds = %let_30
  %binop_55149 = load i64, i64* %binop_55, align 4
  %x4_42150 = load i64, i64* %x4_42, align 4
  %tag_bits_of_arg1151 = and i64 %binop_55149, 1
  %is_arg1_int152 = icmp eq i64 %tag_bits_of_arg1151, 0
  br i1 %is_arg1_int152, label %arg1_type_check_passed_35, label %call_error_func153

arg1_type_check_passed_35:                        ; preds = %plus_35
  %tag_bits_of_arg2155 = and i64 %x4_42150, 1
  %is_arg2_int156 = icmp eq i64 %tag_bits_of_arg2155, 0
  br i1 %is_arg2_int156, label %arg2_type_check_passed_35, label %call_error_func157

call_error_func153:                               ; preds = %plus_35
  store i64 %binop_55149, i64* @current_answer_ptr, align 4
  %error_call_return_val154 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_35:                        ; preds = %arg1_type_check_passed_35
  %plus_snake_result_35 = add i64 %binop_55149, %x4_42150
  %r_ge_0159 = icmp sge i64 %x4_42150, 0
  %l_ge_0160 = icmp sge i64 %binop_55149, 0
  %positive_overflow161 = and i1 %l_ge_0160, %r_ge_0159
  %sum_lt_l162 = icmp slt i64 %plus_snake_result_35, %binop_55149
  %sum_lt_r163 = icmp slt i64 %plus_snake_result_35, %x4_42150
  %overflow_on_positive164 = or i1 %sum_lt_l162, %sum_lt_r163
  %l_lt_0165 = icmp slt i64 %x4_42150, 0
  %l_lt_0166 = icmp slt i64 %binop_55149, 0
  %negative_overflow167 = and i1 %l_lt_0166, %l_lt_0165
  %sum_gt_l168 = icmp sgt i64 %plus_snake_result_35, %binop_55149
  %sum_gt_r169 = icmp sgt i64 %plus_snake_result_35, %x4_42150
  %overflow_on_negative170 = or i1 %sum_gt_l168, %sum_gt_r169
  %negative_check171 = and i1 %negative_overflow167, %overflow_on_negative170
  %positive_check172 = and i1 %positive_overflow161, %overflow_on_positive164
  %overflow173 = or i1 %positive_check172, %negative_check171
  %is_not_overflow174 = xor i1 %overflow173, true
  br i1 %is_not_overflow174, label %continue_no_overflow_35, label %call_error_func175

call_error_func157:                               ; preds = %arg1_type_check_passed_35
  store i64 %x4_42150, i64* @current_answer_ptr, align 4
  %error_call_return_val158 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_35:                          ; preds = %arg2_type_check_passed_35
  %plus_snake_result_35177 = phi i64 [ %plus_snake_result_35, %arg2_type_check_passed_35 ]
  br label %let_31

call_error_func175:                               ; preds = %arg2_type_check_passed_35
  store i64 %plus_snake_result_35, i64* @current_answer_ptr, align 4
  %error_call_return_val176 = call i64 @error_func(i64 5)
  unreachable

let_31:                                           ; preds = %continue_no_overflow_35
  %binop_54 = alloca i64, align 8
  store i64 %plus_snake_result_35177, i64* %binop_54, align 4
  br label %plus_32

plus_32:                                          ; preds = %let_31
  %binop_54178 = load i64, i64* %binop_54, align 4
  %x5_49179 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1180 = and i64 %binop_54178, 1
  %is_arg1_int181 = icmp eq i64 %tag_bits_of_arg1180, 0
  br i1 %is_arg1_int181, label %arg1_type_check_passed_32, label %call_error_func182

arg1_type_check_passed_32:                        ; preds = %plus_32
  %tag_bits_of_arg2184 = and i64 %x5_49179, 1
  %is_arg2_int185 = icmp eq i64 %tag_bits_of_arg2184, 0
  br i1 %is_arg2_int185, label %arg2_type_check_passed_32, label %call_error_func186

call_error_func182:                               ; preds = %plus_32
  store i64 %binop_54178, i64* @current_answer_ptr, align 4
  %error_call_return_val183 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_32:                        ; preds = %arg1_type_check_passed_32
  %plus_snake_result_32 = add i64 %binop_54178, %x5_49179
  %r_ge_0188 = icmp sge i64 %x5_49179, 0
  %l_ge_0189 = icmp sge i64 %binop_54178, 0
  %positive_overflow190 = and i1 %l_ge_0189, %r_ge_0188
  %sum_lt_l191 = icmp slt i64 %plus_snake_result_32, %binop_54178
  %sum_lt_r192 = icmp slt i64 %plus_snake_result_32, %x5_49179
  %overflow_on_positive193 = or i1 %sum_lt_l191, %sum_lt_r192
  %l_lt_0194 = icmp slt i64 %x5_49179, 0
  %l_lt_0195 = icmp slt i64 %binop_54178, 0
  %negative_overflow196 = and i1 %l_lt_0195, %l_lt_0194
  %sum_gt_l197 = icmp sgt i64 %plus_snake_result_32, %binop_54178
  %sum_gt_r198 = icmp sgt i64 %plus_snake_result_32, %x5_49179
  %overflow_on_negative199 = or i1 %sum_gt_l197, %sum_gt_r198
  %negative_check200 = and i1 %negative_overflow196, %overflow_on_negative199
  %positive_check201 = and i1 %positive_overflow190, %overflow_on_positive193
  %overflow202 = or i1 %positive_check201, %negative_check200
  %is_not_overflow203 = xor i1 %overflow202, true
  br i1 %is_not_overflow203, label %continue_no_overflow_32, label %call_error_func204

call_error_func186:                               ; preds = %arg1_type_check_passed_32
  store i64 %x5_49179, i64* @current_answer_ptr, align 4
  %error_call_return_val187 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_32:                          ; preds = %arg2_type_check_passed_32
  %plus_snake_result_32206 = phi i64 [ %plus_snake_result_32, %arg2_type_check_passed_32 ]
  br label %return

call_error_func204:                               ; preds = %arg2_type_check_passed_32
  store i64 %plus_snake_result_32, i64* @current_answer_ptr, align 4
  %error_call_return_val205 = call i64 @error_func(i64 5)
  unreachable
}
