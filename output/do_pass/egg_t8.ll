; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_128

create_lambda_closure_128:                        ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_128 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_128, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_128, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_128, i32 0, i32 2
  store i64 (i64, i64)* @lambda_128_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_128 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_128 to i64
  %closure_tagged_tuple_addr_word_128 = add i64 %closure_addr_128, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_128
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_128, i64* %print_4, align 4
  br label %create_lambda_closure_125

create_lambda_closure_125:                        ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_125 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_125, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_125, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_125, i32 0, i32 2
  store i64 (i64)* @lambda_125_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_125 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_125 to i64
  %closure_tagged_tuple_addr_word_125 = add i64 %closure_addr_125, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_125
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_125, i64* %input_11, align 4
  br label %create_lambda_closure_120

create_lambda_closure_120:                        ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_120 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_120, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_120, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_120, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_120_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_120 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_120 to i64
  %closure_tagged_tuple_addr_word_120 = add i64 %closure_addr_120, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_120
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_120, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_64

create_lambda_closure_64:                         ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_64 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_64, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_64, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_64, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_64_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_64 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_64 to i64
  %closure_tagged_tuple_addr_word_64 = add i64 %closure_addr_64, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_64
  store i64 %closure_tagged_tuple_addr_word_64, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_64, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_78 = alloca i64, align 8
  br label %create_lambda_closure_47

create_lambda_closure_47:                         ; preds = %let_rec_5
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_47 = bitcast i8* %malloccall6 to { i64 (i64, i64, i64)*, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_47, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_47, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_47_, i64 (i64, i64, i64)** %13, align 8
  store i64 4, i64* %14, align 4
  %closure_addr_47 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_47 to i64
  %closure_tagged_tuple_addr_word_47 = add i64 %closure_addr_47, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_47
  store i64 %closure_tagged_tuple_addr_word_47, i64* %f2_78, align 4
  br label %construct_tuple_44

construct_tuple_44:                               ; preds = %patch_let_rec_closures_5
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_44 = bitcast i8* %malloccall7 to { i64, i64, i64 }*
  %15 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_44, i32 0, i32 0
  %16 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_44, i32 0, i32 1
  %17 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_44, i32 0, i32 2
  store i64 4, i64* %15, align 4
  store i64 2, i64* %16, align 4
  store i64 2, i64* %17, align 4
  %tuple_addr_44 = ptrtoint { i64, i64, i64 }* %tuple_ptr_44 to i64
  %tuple_tagged_tuple_addr_word_44 = add i64 %tuple_addr_44, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_44
  %tuple_114 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_44, i64* %tuple_114, align 4
  br label %construct_tuple_40

construct_tuple_40:                               ; preds = %let_6
  %tuple_1148 = load i64, i64* %tuple_114, align 4
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_40 = bitcast i8* %malloccall9 to { i64, i64, i64, i64 }*
  %18 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_40, i32 0, i32 0
  %19 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_40, i32 0, i32 1
  %20 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_40, i32 0, i32 2
  %21 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_40, i32 0, i32 3
  store i64 6, i64* %18, align 4
  store i64 2, i64* %19, align 4
  store i64 %tuple_1148, i64* %20, align 4
  store i64 2, i64* %21, align 4
  %tuple_addr_40 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_40 to i64
  %tuple_tagged_tuple_addr_word_40 = add i64 %tuple_addr_40, 1
  br label %let_7

let_7:                                            ; preds = %construct_tuple_40
  %tuple_112 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_40, i64* %tuple_112, align 4
  br label %function_call

function_call:                                    ; preds = %let_7
  %f1_2610 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_2610, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_36, label %call_error_func

is_closure_36:                                    ; preds = %function_call
  %untagged_closure_addr11 = sub i64 %f1_2610, 5
  %closure_ptr12 = inttoptr i64 %untagged_closure_addr11 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr12, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr12, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %22 = icmp eq i64 %arity, 4
  br i1 %22, label %is_correct_arity_36, label %call_error_func13

call_error_func:                                  ; preds = %function_call
  store i64 %f1_2610, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_36:                              ; preds = %is_closure_36
  %tuple_11215 = load i64, i64* %tuple_112, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_2610, i64 2, i64 %tuple_11215)
  br label %let_8

call_error_func13:                                ; preds = %is_closure_36
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val14 = call i64 @error_func(i64 17)
  unreachable

let_8:                                            ; preds = %is_correct_arity_36
  %app_110 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_110, align 4
  br label %let_9

let_9:                                            ; preds = %let_8
  %x_122 = alloca i64, align 8
  store i64 4, i64* %x_122, align 4
  br label %construct_tuple_32

construct_tuple_32:                               ; preds = %let_9
  %x_12216 = load i64, i64* %x_122, align 4
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_32 = bitcast i8* %malloccall17 to { i64, i64, i64 }*
  %23 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_32, i32 0, i32 0
  %24 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_32, i32 0, i32 1
  %25 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_32, i32 0, i32 2
  store i64 4, i64* %23, align 4
  store i64 %x_12216, i64* %24, align 4
  store i64 6, i64* %25, align 4
  %tuple_addr_32 = ptrtoint { i64, i64, i64 }* %tuple_ptr_32 to i64
  %tuple_tagged_tuple_addr_word_32 = add i64 %tuple_addr_32, 1
  br label %let_10

let_10:                                           ; preds = %construct_tuple_32
  %tuple_127 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_32, i64* %tuple_127, align 4
  br label %plus_29

plus_29:                                          ; preds = %let_10
  br i1 true, label %arg1_type_check_passed_29, label %call_error_func18

arg1_type_check_passed_29:                        ; preds = %plus_29
  br i1 true, label %arg2_type_check_passed_29, label %call_error_func20

call_error_func18:                                ; preds = %plus_29
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val19 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_29:                        ; preds = %arg1_type_check_passed_29
  br i1 true, label %continue_no_overflow_29, label %call_error_func22

call_error_func20:                                ; preds = %arg1_type_check_passed_29
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_29:                          ; preds = %arg2_type_check_passed_29
  %plus_snake_result_29 = phi i64 [ 6, %arg2_type_check_passed_29 ]
  br label %let_11

call_error_func22:                                ; preds = %arg2_type_check_passed_29
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val23 = call i64 @error_func(i64 5)
  unreachable

let_11:                                           ; preds = %continue_no_overflow_29
  %b1_101 = alloca i64, align 8
  store i64 %plus_snake_result_29, i64* %b1_101, align 4
  br label %construct_tuple_26

construct_tuple_26:                               ; preds = %let_11
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_26 = bitcast i8* %malloccall24 to { i64, i64, i64 }*
  %26 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_26, i32 0, i32 0
  %27 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_26, i32 0, i32 1
  %28 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_26, i32 0, i32 2
  store i64 4, i64* %26, align 4
  store i64 4, i64* %27, align 4
  store i64 6, i64* %28, align 4
  %tuple_addr_26 = ptrtoint { i64, i64, i64 }* %tuple_ptr_26 to i64
  %tuple_tagged_tuple_addr_word_26 = add i64 %tuple_addr_26, 1
  br label %let_12

let_12:                                           ; preds = %construct_tuple_26
  %tuple_137 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_26, i64* %tuple_137, align 4
  br label %construct_tuple_22

construct_tuple_22:                               ; preds = %let_12
  %tuple_13725 = load i64, i64* %tuple_137, align 4
  %malloccall26 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_22 = bitcast i8* %malloccall26 to { i64, i64, i64, i64 }*
  %29 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_22, i32 0, i32 0
  %30 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_22, i32 0, i32 1
  %31 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_22, i32 0, i32 2
  %32 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_22, i32 0, i32 3
  store i64 6, i64* %29, align 4
  store i64 -1, i64* %30, align 4
  store i64 2, i64* %31, align 4
  store i64 %tuple_13725, i64* %32, align 4
  %tuple_addr_22 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_22 to i64
  %tuple_tagged_tuple_addr_word_22 = add i64 %tuple_addr_22, 1
  br label %let_13

let_13:                                           ; preds = %construct_tuple_22
  %t1_133 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_22, i64* %t1_133, align 4
  br label %get_item_19

get_item_19:                                      ; preds = %let_13
  %t1_13327 = load i64, i64* %t1_133, align 4
  %is_not_nil = icmp ne i64 %t1_13327, 1
  br i1 %is_not_nil, label %it_not_nil_19, label %call_error_func28

it_not_nil_19:                                    ; preds = %get_item_19
  %tag_bits_of_tup_val = and i64 %t1_13327, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_19, label %call_error_func30

call_error_func28:                                ; preds = %get_item_19
  store i64 %t1_13327, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_19:                                   ; preds = %it_not_nil_19
  br i1 true, label %it_is_integer_19, label %call_error_func32

call_error_func30:                                ; preds = %it_not_nil_19
  store i64 %t1_13327, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_19:                                 ; preds = %it_is_tuple_19
  %untagged_tuple_addr = sub i64 %t1_13327, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_19, label %call_error_func34

call_error_func32:                                ; preds = %it_is_tuple_19
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_19:                           ; preds = %it_is_integer_19
  br i1 true, label %index_is_not_negative_19, label %call_error_func36

call_error_func34:                                ; preds = %it_is_integer_19
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val35 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_19:                         ; preds = %index_is_less_tha_n_19
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_14

call_error_func36:                                ; preds = %index_is_less_tha_n_19
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val37 = call i64 @error_func(i64 7)
  unreachable

let_14:                                           ; preds = %index_is_not_negative_19
  %getitem_141 = alloca i64, align 8
  store i64 %accessed_element, i64* %getitem_141, align 4
  br label %if_else_15

if_else_15:                                       ; preds = %let_14
  %getitem_14138 = load i64, i64* %getitem_141, align 4
  %tag_bits_of_cond_val = and i64 %getitem_14138, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_15, label %call_error_func39

continue_if_else_15:                              ; preds = %if_else_15
  %is_cond_true = icmp eq i64 %getitem_14138, -1
  br i1 %is_cond_true, label %then_15, label %else_15

call_error_func39:                                ; preds = %if_else_15
  store i64 %getitem_14138, i64* @current_answer_ptr, align 4
  %error_call_return_val40 = call i64 @error_func(i64 4)
  unreachable

then_15:                                          ; preds = %continue_if_else_15
  br label %merge_then_else_15

else_15:                                          ; preds = %continue_if_else_15
  br label %merge_then_else_15

merge_then_else_15:                               ; preds = %else_15, %then_15
  %"if/else_snake_result_15" = phi i64 [ 2, %then_15 ], [ 4, %else_15 ]
  br label %result

result:                                           ; preds = %merge_then_else_15
  ret i64 %"if/else_snake_result_15"
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

define i64 @lambda_128_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_129

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_129 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_125_(i64 %0) {
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
  ret i64 %input_tail_call_result_126

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_126 = tail call i64 @input()
  br label %return
}

define i64 @lambda_120_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_121

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_121 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_64_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_117

return:                                           ; preds = %merge_then_else_72
  ret i64 %"if/else_snake_result_72"

get_item_117:                                     ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_117, label %call_error_func

it_not_nil_117:                                   ; preds = %get_item_117
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_117, label %call_error_func1

call_error_func:                                  ; preds = %get_item_117
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_117:                                  ; preds = %it_not_nil_117
  br i1 true, label %it_is_integer_117, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_117
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_117:                                ; preds = %it_is_tuple_117
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_117, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_117
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_117:                          ; preds = %it_is_integer_117
  br i1 true, label %index_is_not_negative_117, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_117
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_117:                        ; preds = %index_is_less_tha_n_117
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_65

call_error_func7:                                 ; preds = %index_is_less_tha_n_117
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_65:                                           ; preds = %index_is_not_negative_117
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_114

get_item_114:                                     ; preds = %let_65
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_114, label %call_error_func10

it_not_nil_114:                                   ; preds = %get_item_114
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_114, label %call_error_func14

call_error_func10:                                ; preds = %get_item_114
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_114:                                  ; preds = %it_not_nil_114
  br i1 true, label %it_is_integer_114, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_114
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_114:                                ; preds = %it_is_tuple_114
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_114, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_114
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_114:                          ; preds = %it_is_integer_114
  br i1 true, label %index_is_not_negative_114, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_114
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_114:                        ; preds = %index_is_less_tha_n_114
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_66

call_error_func25:                                ; preds = %index_is_less_tha_n_114
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_66:                                           ; preds = %index_is_not_negative_114
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_111

get_item_111:                                     ; preds = %let_66
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_111, label %call_error_func31

it_not_nil_111:                                   ; preds = %get_item_111
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_111, label %call_error_func35

call_error_func31:                                ; preds = %get_item_111
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_111:                                  ; preds = %it_not_nil_111
  br i1 true, label %it_is_integer_111, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_111
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_111:                                ; preds = %it_is_tuple_111
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_111, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_111
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_111:                          ; preds = %it_is_integer_111
  br i1 true, label %index_is_not_negative_111, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_111
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_111:                        ; preds = %index_is_less_tha_n_111
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_67

call_error_func46:                                ; preds = %index_is_less_tha_n_111
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_67:                                           ; preds = %index_is_not_negative_111
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_108

get_item_108:                                     ; preds = %let_67
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_108, label %call_error_func51

it_not_nil_108:                                   ; preds = %get_item_108
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_108, label %call_error_func55

call_error_func51:                                ; preds = %get_item_108
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_108:                                  ; preds = %it_not_nil_108
  br i1 true, label %it_is_integer_108, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_108
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_108:                                ; preds = %it_is_tuple_108
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_108, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_108
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_108:                          ; preds = %it_is_integer_108
  br i1 true, label %index_is_not_negative_108, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_108
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_108:                        ; preds = %index_is_less_tha_n_108
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_68

call_error_func66:                                ; preds = %index_is_less_tha_n_108
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_68:                                           ; preds = %index_is_not_negative_108
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_105

get_item_105:                                     ; preds = %let_68
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_105, label %call_error_func72

it_not_nil_105:                                   ; preds = %get_item_105
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_105, label %call_error_func76

call_error_func72:                                ; preds = %get_item_105
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_105:                                  ; preds = %it_not_nil_105
  br i1 true, label %it_is_integer_105, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_105
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_105:                                ; preds = %it_is_tuple_105
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_105, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_105
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_105:                          ; preds = %it_is_integer_105
  br i1 true, label %index_is_not_negative_105, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_105
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_105:                        ; preds = %index_is_less_tha_n_105
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_69

call_error_func87:                                ; preds = %index_is_less_tha_n_105
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_69:                                           ; preds = %index_is_not_negative_105
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_102

get_item_102:                                     ; preds = %let_69
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_102, label %call_error_func92

it_not_nil_102:                                   ; preds = %get_item_102
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_102, label %call_error_func96

call_error_func92:                                ; preds = %get_item_102
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_102:                                  ; preds = %it_not_nil_102
  br i1 true, label %it_is_integer_102, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_102
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_102:                                ; preds = %it_is_tuple_102
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_102, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_102
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_102:                          ; preds = %it_is_integer_102
  br i1 true, label %index_is_not_negative_102, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_102
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_102:                        ; preds = %index_is_less_tha_n_102
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_70

call_error_func107:                               ; preds = %index_is_less_tha_n_102
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_70:                                           ; preds = %index_is_not_negative_102
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %greater_eq_99

greater_eq_99:                                    ; preds = %let_70
  %x5_49111 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1 = and i64 %x5_49111, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_99, label %call_error_func112

arg1_type_check_passed_99:                        ; preds = %greater_eq_99
  br i1 true, label %arg2_type_check_passed_99, label %call_error_func114

call_error_func112:                               ; preds = %greater_eq_99
  store i64 %x5_49111, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_99:                        ; preds = %arg1_type_check_passed_99
  %greater_eq_llvm_result_99 = icmp sge i64 %x5_49111, 20
  br i1 %greater_eq_llvm_result_99, label %comp_is_true_99, label %comp_is_false_99

call_error_func114:                               ; preds = %arg1_type_check_passed_99
  store i64 20, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_99:                                  ; preds = %arg2_type_check_passed_99
  br label %merge_99

comp_is_false_99:                                 ; preds = %arg2_type_check_passed_99
  br label %merge_99

merge_99:                                         ; preds = %comp_is_false_99, %comp_is_true_99
  %greater_eq_snake_result_99 = phi i64 [ -1, %comp_is_true_99 ], [ 9223372036854775807, %comp_is_false_99 ]
  br label %let_71

let_71:                                           ; preds = %merge_99
  %binop_54 = alloca i64, align 8
  store i64 %greater_eq_snake_result_99, i64* %binop_54, align 4
  br label %if_else_72

if_else_72:                                       ; preds = %let_71
  %binop_54116 = load i64, i64* %binop_54, align 4
  %tag_bits_of_cond_val = and i64 %binop_54116, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_72, label %call_error_func117

continue_if_else_72:                              ; preds = %if_else_72
  %is_cond_true = icmp eq i64 %binop_54116, -1
  br i1 %is_cond_true, label %then_72, label %else_72

call_error_func117:                               ; preds = %if_else_72
  store i64 %binop_54116, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 4)
  unreachable

then_72:                                          ; preds = %continue_if_else_72
  br label %construct_tuple_95

else_72:                                          ; preds = %continue_if_else_72
  br label %construct_tuple_87

merge_then_else_72:                               ; preds = %is_correct_arity_76, %construct_tuple_91
  %"if/else_snake_result_72" = phi i64 [ %tuple_tagged_tuple_addr_word_91, %construct_tuple_91 ], [ %lambda_tail_call_result, %is_correct_arity_76 ]
  br label %return

construct_tuple_95:                               ; preds = %then_72
  %x3_35119 = load i64, i64* %x3_35, align 4
  %x4_42120 = load i64, i64* %x4_42, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_95 = bitcast i8* %malloccall to { i64, i64, i64 }*
  %3 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_95, i32 0, i32 0
  %4 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_95, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_95, i32 0, i32 2
  store i64 4, i64* %3, align 4
  store i64 %x3_35119, i64* %4, align 4
  store i64 %x4_42120, i64* %5, align 4
  %tuple_addr_95 = ptrtoint { i64, i64, i64 }* %tuple_ptr_95 to i64
  %tuple_tagged_tuple_addr_word_95 = add i64 %tuple_addr_95, 1
  br label %let_90

let_90:                                           ; preds = %construct_tuple_95
  %tuple_59 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_95, i64* %tuple_59, align 4
  br label %construct_tuple_91

construct_tuple_91:                               ; preds = %let_90
  %x2_30121 = load i64, i64* %x2_30, align 4
  %tuple_59122 = load i64, i64* %tuple_59, align 4
  %x5_49123 = load i64, i64* %x5_49, align 4
  %malloccall124 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_91 = bitcast i8* %malloccall124 to { i64, i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_91, i32 0, i32 0
  %7 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_91, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_91, i32 0, i32 2
  %9 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_91, i32 0, i32 3
  store i64 6, i64* %6, align 4
  store i64 %x2_30121, i64* %7, align 4
  store i64 %tuple_59122, i64* %8, align 4
  store i64 %x5_49123, i64* %9, align 4
  %tuple_addr_91 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_91 to i64
  %tuple_tagged_tuple_addr_word_91 = add i64 %tuple_addr_91, 1
  br label %merge_then_else_72

construct_tuple_87:                               ; preds = %else_72
  %x3_35125 = load i64, i64* %x3_35, align 4
  %x4_42126 = load i64, i64* %x4_42, align 4
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_87 = bitcast i8* %malloccall127 to { i64, i64, i64 }*
  %10 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_87, i32 0, i32 0
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_87, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_87, i32 0, i32 2
  store i64 4, i64* %10, align 4
  store i64 %x3_35125, i64* %11, align 4
  store i64 %x4_42126, i64* %12, align 4
  %tuple_addr_87 = ptrtoint { i64, i64, i64 }* %tuple_ptr_87 to i64
  %tuple_tagged_tuple_addr_word_87 = add i64 %tuple_addr_87, 1
  br label %let_73

let_73:                                           ; preds = %construct_tuple_87
  %tuple_67 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_87, i64* %tuple_67, align 4
  br label %plus_84

plus_84:                                          ; preds = %let_73
  %x5_49128 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1129 = and i64 %x5_49128, 1
  %is_arg1_int130 = icmp eq i64 %tag_bits_of_arg1129, 0
  br i1 %is_arg1_int130, label %arg1_type_check_passed_84, label %call_error_func131

arg1_type_check_passed_84:                        ; preds = %plus_84
  br i1 true, label %arg2_type_check_passed_84, label %call_error_func133

call_error_func131:                               ; preds = %plus_84
  store i64 %x5_49128, i64* @current_answer_ptr, align 4
  %error_call_return_val132 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_84:                        ; preds = %arg1_type_check_passed_84
  %plus_snake_result_84 = add i64 %x5_49128, 2
  %l_ge_0 = icmp sge i64 %x5_49128, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_84, %x5_49128
  %sum_lt_r = icmp slt i64 %plus_snake_result_84, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x5_49128, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_84, %x5_49128
  %sum_gt_r = icmp sgt i64 %plus_snake_result_84, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_84, label %call_error_func135

call_error_func133:                               ; preds = %arg1_type_check_passed_84
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val134 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_84:                          ; preds = %arg2_type_check_passed_84
  %plus_snake_result_84137 = phi i64 [ %plus_snake_result_84, %arg2_type_check_passed_84 ]
  br label %let_74

call_error_func135:                               ; preds = %arg2_type_check_passed_84
  store i64 %plus_snake_result_84, i64* @current_answer_ptr, align 4
  %error_call_return_val136 = call i64 @error_func(i64 5)
  unreachable

let_74:                                           ; preds = %continue_no_overflow_84
  %binop_70 = alloca i64, align 8
  store i64 %plus_snake_result_84137, i64* %binop_70, align 4
  br label %construct_tuple_80

construct_tuple_80:                               ; preds = %let_74
  %x2_30138 = load i64, i64* %x2_30, align 4
  %tuple_67139 = load i64, i64* %tuple_67, align 4
  %binop_70140 = load i64, i64* %binop_70, align 4
  %malloccall141 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_80 = bitcast i8* %malloccall141 to { i64, i64, i64, i64 }*
  %13 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_80, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_80, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_80, i32 0, i32 2
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_80, i32 0, i32 3
  store i64 6, i64* %13, align 4
  store i64 %x2_30138, i64* %14, align 4
  store i64 %tuple_67139, i64* %15, align 4
  store i64 %binop_70140, i64* %16, align 4
  %tuple_addr_80 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_80 to i64
  %tuple_tagged_tuple_addr_word_80 = add i64 %tuple_addr_80, 1
  br label %let_75

let_75:                                           ; preds = %construct_tuple_80
  %tuple_65 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_80, i64* %tuple_65, align 4
  br label %function_call

function_call:                                    ; preds = %let_75
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_76, label %call_error_func142

is_closure_76:                                    ; preds = %function_call
  %untagged_closure_addr144 = sub i64 %f1_26, 5
  %closure_ptr145 = inttoptr i64 %untagged_closure_addr144 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr145, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr145, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 4
  br i1 %17, label %is_correct_arity_76, label %call_error_func146

call_error_func142:                               ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val143 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_76:                              ; preds = %is_closure_76
  %tuple_65148 = load i64, i64* %tuple_65, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %tuple_65148)
  br label %merge_then_else_72

call_error_func146:                               ; preds = %is_closure_76
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val147 = call i64 @error_func(i64 17)
  unreachable
}

define i64 @lambda_47_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_61

return:                                           ; preds = %merge_then_else_51
  ret i64 %"if/else_snake_result_51"

get_item_61:                                      ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_61, label %call_error_func

it_not_nil_61:                                    ; preds = %get_item_61
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_61, label %call_error_func1

call_error_func:                                  ; preds = %get_item_61
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_61:                                   ; preds = %it_not_nil_61
  br i1 true, label %it_is_integer_61, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_61
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_61:                                 ; preds = %it_is_tuple_61
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_61, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_61
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_61:                           ; preds = %it_is_integer_61
  br i1 true, label %index_is_not_negative_61, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_61
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_61:                         ; preds = %index_is_less_tha_n_61
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_48

call_error_func7:                                 ; preds = %index_is_less_tha_n_61
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_48:                                           ; preds = %index_is_not_negative_61
  %y2_82 = alloca i64, align 8
  store i64 %accessed_element, i64* %y2_82, align 4
  br label %get_item_58

get_item_58:                                      ; preds = %let_48
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_58, label %call_error_func10

it_not_nil_58:                                    ; preds = %get_item_58
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_58, label %call_error_func14

call_error_func10:                                ; preds = %get_item_58
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_58:                                   ; preds = %it_not_nil_58
  br i1 true, label %it_is_integer_58, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_58
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_58:                                 ; preds = %it_is_tuple_58
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_58, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_58
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_58:                           ; preds = %it_is_integer_58
  br i1 true, label %index_is_not_negative_58, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_58
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_58:                         ; preds = %index_is_less_tha_n_58
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_49

call_error_func25:                                ; preds = %index_is_less_tha_n_58
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_49:                                           ; preds = %index_is_not_negative_58
  %y3_87 = alloca i64, align 8
  store i64 %accessed_element28, i64* %y3_87, align 4
  br label %greater_55

greater_55:                                       ; preds = %let_49
  %y2_8229 = load i64, i64* %y2_82, align 4
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_55, label %call_error_func30

arg1_type_check_passed_55:                        ; preds = %greater_55
  %tag_bits_of_arg2 = and i64 %y2_8229, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_55, label %call_error_func32

call_error_func30:                                ; preds = %greater_55
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_55:                        ; preds = %arg1_type_check_passed_55
  %greater_llvm_result_55 = icmp sgt i64 %1, %y2_8229
  br i1 %greater_llvm_result_55, label %comp_is_true_55, label %comp_is_false_55

call_error_func32:                                ; preds = %arg1_type_check_passed_55
  store i64 %y2_8229, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_55:                                  ; preds = %arg2_type_check_passed_55
  br label %merge_55

comp_is_false_55:                                 ; preds = %arg2_type_check_passed_55
  br label %merge_55

merge_55:                                         ; preds = %comp_is_false_55, %comp_is_true_55
  %greater_snake_result_55 = phi i64 [ -1, %comp_is_true_55 ], [ 9223372036854775807, %comp_is_false_55 ]
  br label %let_50

let_50:                                           ; preds = %merge_55
  %binop_92 = alloca i64, align 8
  store i64 %greater_snake_result_55, i64* %binop_92, align 4
  br label %if_else_51

if_else_51:                                       ; preds = %let_50
  %binop_9234 = load i64, i64* %binop_92, align 4
  %tag_bits_of_cond_val = and i64 %binop_9234, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_51, label %call_error_func35

continue_if_else_51:                              ; preds = %if_else_51
  %is_cond_true = icmp eq i64 %binop_9234, -1
  br i1 %is_cond_true, label %then_51, label %else_51

call_error_func35:                                ; preds = %if_else_51
  store i64 %binop_9234, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 4)
  unreachable

then_51:                                          ; preds = %continue_if_else_51
  %y3_8737 = load i64, i64* %y3_87, align 4
  br label %merge_then_else_51

else_51:                                          ; preds = %continue_if_else_51
  br label %merge_then_else_51

merge_then_else_51:                               ; preds = %else_51, %then_51
  %"if/else_snake_result_51" = phi i64 [ %y3_8737, %then_51 ], [ 9223372036854775807, %else_51 ]
  br label %return
}
