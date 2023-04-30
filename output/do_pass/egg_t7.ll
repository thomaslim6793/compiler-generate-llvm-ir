; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_136

create_lambda_closure_136:                        ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_136 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_136, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_136, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_136, i32 0, i32 2
  store i64 (i64, i64)* @lambda_136_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_136 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_136 to i64
  %closure_tagged_tuple_addr_word_136 = add i64 %closure_addr_136, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_136
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_136, i64* %print_4, align 4
  br label %create_lambda_closure_133

create_lambda_closure_133:                        ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_133 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_133, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_133, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_133, i32 0, i32 2
  store i64 (i64)* @lambda_133_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_133 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_133 to i64
  %closure_tagged_tuple_addr_word_133 = add i64 %closure_addr_133, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_133
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_133, i64* %input_11, align 4
  br label %create_lambda_closure_128

create_lambda_closure_128:                        ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_128 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_128, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_128, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_128, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_128_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_128 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_128 to i64
  %closure_tagged_tuple_addr_word_128 = add i64 %closure_addr_128, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_128
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_128, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_72

create_lambda_closure_72:                         ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_72 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_72, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_72, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_72, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_72_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_72 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_72 to i64
  %closure_tagged_tuple_addr_word_72 = add i64 %closure_addr_72, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_72
  store i64 %closure_tagged_tuple_addr_word_72, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_72, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_78 = alloca i64, align 8
  br label %create_lambda_closure_55

create_lambda_closure_55:                         ; preds = %let_rec_5
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_55 = bitcast i8* %malloccall6 to { i64 (i64, i64, i64)*, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_55, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_55, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_55_, i64 (i64, i64, i64)** %13, align 8
  store i64 4, i64* %14, align 4
  %closure_addr_55 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_55 to i64
  %closure_tagged_tuple_addr_word_55 = add i64 %closure_addr_55, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_55
  store i64 %closure_tagged_tuple_addr_word_55, i64* %f2_78, align 4
  br label %construct_tuple_52

construct_tuple_52:                               ; preds = %patch_let_rec_closures_5
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_52 = bitcast i8* %malloccall7 to { i64, i64, i64 }*
  %15 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_52, i32 0, i32 0
  %16 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_52, i32 0, i32 1
  %17 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_52, i32 0, i32 2
  store i64 4, i64* %15, align 4
  store i64 2, i64* %16, align 4
  store i64 2, i64* %17, align 4
  %tuple_addr_52 = ptrtoint { i64, i64, i64 }* %tuple_ptr_52 to i64
  %tuple_tagged_tuple_addr_word_52 = add i64 %tuple_addr_52, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_52
  %tuple_114 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_52, i64* %tuple_114, align 4
  br label %construct_tuple_48

construct_tuple_48:                               ; preds = %let_6
  %tuple_1148 = load i64, i64* %tuple_114, align 4
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_48 = bitcast i8* %malloccall9 to { i64, i64, i64, i64 }*
  %18 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_48, i32 0, i32 0
  %19 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_48, i32 0, i32 1
  %20 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_48, i32 0, i32 2
  %21 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_48, i32 0, i32 3
  store i64 6, i64* %18, align 4
  store i64 2, i64* %19, align 4
  store i64 %tuple_1148, i64* %20, align 4
  store i64 2, i64* %21, align 4
  %tuple_addr_48 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_48 to i64
  %tuple_tagged_tuple_addr_word_48 = add i64 %tuple_addr_48, 1
  br label %let_7

let_7:                                            ; preds = %construct_tuple_48
  %tuple_112 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_48, i64* %tuple_112, align 4
  br label %function_call

function_call:                                    ; preds = %let_7
  %f1_2610 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_2610, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_44, label %call_error_func

is_closure_44:                                    ; preds = %function_call
  %untagged_closure_addr11 = sub i64 %f1_2610, 5
  %closure_ptr12 = inttoptr i64 %untagged_closure_addr11 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr12, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr12, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %22 = icmp eq i64 %arity, 4
  br i1 %22, label %is_correct_arity_44, label %call_error_func13

call_error_func:                                  ; preds = %function_call
  store i64 %f1_2610, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_44:                              ; preds = %is_closure_44
  %tuple_11215 = load i64, i64* %tuple_112, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_2610, i64 2, i64 %tuple_11215)
  br label %let_8

call_error_func13:                                ; preds = %is_closure_44
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val14 = call i64 @error_func(i64 17)
  unreachable

let_8:                                            ; preds = %is_correct_arity_44
  %app_110 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_110, align 4
  br label %let_9

let_9:                                            ; preds = %let_8
  %x_122 = alloca i64, align 8
  store i64 4, i64* %x_122, align 4
  br label %construct_tuple_40

construct_tuple_40:                               ; preds = %let_9
  %x_12216 = load i64, i64* %x_122, align 4
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_40 = bitcast i8* %malloccall17 to { i64, i64, i64 }*
  %23 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_40, i32 0, i32 0
  %24 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_40, i32 0, i32 1
  %25 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_40, i32 0, i32 2
  store i64 4, i64* %23, align 4
  store i64 %x_12216, i64* %24, align 4
  store i64 6, i64* %25, align 4
  %tuple_addr_40 = ptrtoint { i64, i64, i64 }* %tuple_ptr_40 to i64
  %tuple_tagged_tuple_addr_word_40 = add i64 %tuple_addr_40, 1
  br label %let_10

let_10:                                           ; preds = %construct_tuple_40
  %tuple_127 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_40, i64* %tuple_127, align 4
  br label %plus_37

plus_37:                                          ; preds = %let_10
  br i1 true, label %arg1_type_check_passed_37, label %call_error_func18

arg1_type_check_passed_37:                        ; preds = %plus_37
  br i1 true, label %arg2_type_check_passed_37, label %call_error_func20

call_error_func18:                                ; preds = %plus_37
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val19 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_37:                        ; preds = %arg1_type_check_passed_37
  br i1 true, label %continue_no_overflow_37, label %call_error_func22

call_error_func20:                                ; preds = %arg1_type_check_passed_37
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_37:                          ; preds = %arg2_type_check_passed_37
  %plus_snake_result_37 = phi i64 [ 6, %arg2_type_check_passed_37 ]
  br label %let_11

call_error_func22:                                ; preds = %arg2_type_check_passed_37
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val23 = call i64 @error_func(i64 5)
  unreachable

let_11:                                           ; preds = %continue_no_overflow_37
  %b1_101 = alloca i64, align 8
  store i64 %plus_snake_result_37, i64* %b1_101, align 4
  br label %function_call24

function_call24:                                  ; preds = %let_11
  %print_425 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call26 = and i64 %print_425, 7
  %is_closure_of_func_to_call_closure27 = icmp eq i64 %tag_bits_of_closure_of_func_to_call26, 5
  br i1 %is_closure_of_func_to_call_closure27, label %is_closure_34, label %call_error_func28

is_closure_34:                                    ; preds = %function_call24
  %untagged_closure_addr30 = sub i64 %print_425, 5
  %closure_ptr31 = inttoptr i64 %untagged_closure_addr30 to i64*
  %function_code_ptr_as_i6432 = load i64, i64* %closure_ptr31, align 4
  %function33 = inttoptr i64 %function_code_ptr_as_i6432 to i64 (i64, i64)*
  %arity_ptr34 = getelementptr i64, i64* %closure_ptr31, i64 1
  %arity35 = load i64, i64* %arity_ptr34, align 4
  %26 = icmp eq i64 %arity35, 2
  br i1 %26, label %is_correct_arity_34, label %call_error_func36

call_error_func28:                                ; preds = %function_call24
  store i64 %print_425, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_34:                              ; preds = %is_closure_34
  %lambda_non_tail_call_result38 = call i64 %function33(i64 %print_425, i64 2)
  br label %let_12

call_error_func36:                                ; preds = %is_closure_34
  store i64 %arity35, i64* @current_answer_ptr, align 4
  %error_call_return_val37 = call i64 @error_func(i64 17)
  unreachable

let_12:                                           ; preds = %is_correct_arity_34
  %app_132 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result38, i64* %app_132, align 4
  br label %function_call39

function_call39:                                  ; preds = %let_12
  %print_440 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call41 = and i64 %print_440, 7
  %is_closure_of_func_to_call_closure42 = icmp eq i64 %tag_bits_of_closure_of_func_to_call41, 5
  br i1 %is_closure_of_func_to_call_closure42, label %is_closure_31, label %call_error_func43

is_closure_31:                                    ; preds = %function_call39
  %untagged_closure_addr45 = sub i64 %print_440, 5
  %closure_ptr46 = inttoptr i64 %untagged_closure_addr45 to i64*
  %function_code_ptr_as_i6447 = load i64, i64* %closure_ptr46, align 4
  %function48 = inttoptr i64 %function_code_ptr_as_i6447 to i64 (i64, i64)*
  %arity_ptr49 = getelementptr i64, i64* %closure_ptr46, i64 1
  %arity50 = load i64, i64* %arity_ptr49, align 4
  %27 = icmp eq i64 %arity50, 2
  br i1 %27, label %is_correct_arity_31, label %call_error_func51

call_error_func43:                                ; preds = %function_call39
  store i64 %print_440, i64* @current_answer_ptr, align 4
  %error_call_return_val44 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_31:                              ; preds = %is_closure_31
  %lambda_non_tail_call_result53 = call i64 %function48(i64 %print_440, i64 4)
  br label %let_13

call_error_func51:                                ; preds = %is_closure_31
  store i64 %arity50, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 17)
  unreachable

let_13:                                           ; preds = %is_correct_arity_31
  %app_135 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result53, i64* %app_135, align 4
  br label %construct_tuple_28

construct_tuple_28:                               ; preds = %let_13
  %malloccall54 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_28 = bitcast i8* %malloccall54 to { i64, i64, i64 }*
  %28 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_28, i32 0, i32 0
  %29 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_28, i32 0, i32 1
  %30 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_28, i32 0, i32 2
  store i64 4, i64* %28, align 4
  store i64 6, i64* %29, align 4
  store i64 8, i64* %30, align 4
  %tuple_addr_28 = ptrtoint { i64, i64, i64 }* %tuple_ptr_28 to i64
  %tuple_tagged_tuple_addr_word_28 = add i64 %tuple_addr_28, 1
  br label %let_14

let_14:                                           ; preds = %construct_tuple_28
  %tuple_139 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_28, i64* %tuple_139, align 4
  br label %function_call55

function_call55:                                  ; preds = %let_14
  %print_456 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call57 = and i64 %print_456, 7
  %is_closure_of_func_to_call_closure58 = icmp eq i64 %tag_bits_of_closure_of_func_to_call57, 5
  br i1 %is_closure_of_func_to_call_closure58, label %is_closure_25, label %call_error_func59

is_closure_25:                                    ; preds = %function_call55
  %untagged_closure_addr61 = sub i64 %print_456, 5
  %closure_ptr62 = inttoptr i64 %untagged_closure_addr61 to i64*
  %function_code_ptr_as_i6463 = load i64, i64* %closure_ptr62, align 4
  %function64 = inttoptr i64 %function_code_ptr_as_i6463 to i64 (i64, i64)*
  %arity_ptr65 = getelementptr i64, i64* %closure_ptr62, i64 1
  %arity66 = load i64, i64* %arity_ptr65, align 4
  %31 = icmp eq i64 %arity66, 2
  br i1 %31, label %is_correct_arity_25, label %call_error_func67

call_error_func59:                                ; preds = %function_call55
  store i64 %print_456, i64* @current_answer_ptr, align 4
  %error_call_return_val60 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_25:                              ; preds = %is_closure_25
  %tuple_13969 = load i64, i64* %tuple_139, align 4
  %lambda_non_tail_call_result70 = call i64 %function64(i64 %print_456, i64 %tuple_13969)
  br label %let_15

call_error_func67:                                ; preds = %is_closure_25
  store i64 %arity66, i64* @current_answer_ptr, align 4
  %error_call_return_val68 = call i64 @error_func(i64 17)
  unreachable

let_15:                                           ; preds = %is_correct_arity_25
  %app_138 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result70, i64* %app_138, align 4
  br label %function_call71

function_call71:                                  ; preds = %let_15
  %print_472 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call73 = and i64 %print_472, 7
  %is_closure_of_func_to_call_closure74 = icmp eq i64 %tag_bits_of_closure_of_func_to_call73, 5
  br i1 %is_closure_of_func_to_call_closure74, label %is_closure_22, label %call_error_func75

is_closure_22:                                    ; preds = %function_call71
  %untagged_closure_addr77 = sub i64 %print_472, 5
  %closure_ptr78 = inttoptr i64 %untagged_closure_addr77 to i64*
  %function_code_ptr_as_i6479 = load i64, i64* %closure_ptr78, align 4
  %function80 = inttoptr i64 %function_code_ptr_as_i6479 to i64 (i64, i64)*
  %arity_ptr81 = getelementptr i64, i64* %closure_ptr78, i64 1
  %arity82 = load i64, i64* %arity_ptr81, align 4
  %32 = icmp eq i64 %arity82, 2
  br i1 %32, label %is_correct_arity_22, label %call_error_func83

call_error_func75:                                ; preds = %function_call71
  store i64 %print_472, i64* @current_answer_ptr, align 4
  %error_call_return_val76 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_22:                              ; preds = %is_closure_22
  %lambda_non_tail_call_result85 = call i64 %function80(i64 %print_472, i64 10)
  br label %let_16

call_error_func83:                                ; preds = %is_closure_22
  store i64 %arity82, i64* @current_answer_ptr, align 4
  %error_call_return_val84 = call i64 @error_func(i64 17)
  unreachable

let_16:                                           ; preds = %is_correct_arity_22
  %app_143 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result85, i64* %app_143, align 4
  br label %construct_tuple_17

construct_tuple_17:                               ; preds = %let_16
  %app_13286 = load i64, i64* %app_132, align 4
  %app_13587 = load i64, i64* %app_135, align 4
  %app_13888 = load i64, i64* %app_138, align 4
  %app_14389 = load i64, i64* %app_143, align 4
  %malloccall90 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_17 = bitcast i8* %malloccall90 to { i64, i64, i64, i64, i64 }*
  %33 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_17, i32 0, i32 0
  %34 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_17, i32 0, i32 1
  %35 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_17, i32 0, i32 2
  %36 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_17, i32 0, i32 3
  %37 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_17, i32 0, i32 4
  store i64 8, i64* %33, align 4
  store i64 %app_13286, i64* %34, align 4
  store i64 %app_13587, i64* %35, align 4
  store i64 %app_13888, i64* %36, align 4
  store i64 %app_14389, i64* %37, align 4
  %tuple_addr_17 = ptrtoint { i64, i64, i64, i64, i64 }* %tuple_ptr_17 to i64
  %tuple_tagged_tuple_addr_word_17 = add i64 %tuple_addr_17, 1
  br label %result

result:                                           ; preds = %construct_tuple_17
  ret i64 %tuple_tagged_tuple_addr_word_17
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

define i64 @lambda_136_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_137

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_137 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_133_(i64 %0) {
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
  ret i64 %input_tail_call_result_134

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_134 = tail call i64 @input()
  br label %return
}

define i64 @lambda_128_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_129

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_129 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_72_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_125

return:                                           ; preds = %merge_then_else_80
  ret i64 %"if/else_snake_result_80"

get_item_125:                                     ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_125, label %call_error_func

it_not_nil_125:                                   ; preds = %get_item_125
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_125, label %call_error_func1

call_error_func:                                  ; preds = %get_item_125
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_125:                                  ; preds = %it_not_nil_125
  br i1 true, label %it_is_integer_125, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_125
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_125:                                ; preds = %it_is_tuple_125
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_125, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_125
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_125:                          ; preds = %it_is_integer_125
  br i1 true, label %index_is_not_negative_125, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_125
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_125:                        ; preds = %index_is_less_tha_n_125
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_73

call_error_func7:                                 ; preds = %index_is_less_tha_n_125
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_73:                                           ; preds = %index_is_not_negative_125
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_122

get_item_122:                                     ; preds = %let_73
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_122, label %call_error_func10

it_not_nil_122:                                   ; preds = %get_item_122
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_122, label %call_error_func14

call_error_func10:                                ; preds = %get_item_122
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_122:                                  ; preds = %it_not_nil_122
  br i1 true, label %it_is_integer_122, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_122
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_122:                                ; preds = %it_is_tuple_122
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_122, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_122
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_122:                          ; preds = %it_is_integer_122
  br i1 true, label %index_is_not_negative_122, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_122
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_122:                        ; preds = %index_is_less_tha_n_122
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_74

call_error_func25:                                ; preds = %index_is_less_tha_n_122
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_74:                                           ; preds = %index_is_not_negative_122
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_119

get_item_119:                                     ; preds = %let_74
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_119, label %call_error_func31

it_not_nil_119:                                   ; preds = %get_item_119
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_119, label %call_error_func35

call_error_func31:                                ; preds = %get_item_119
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_119:                                  ; preds = %it_not_nil_119
  br i1 true, label %it_is_integer_119, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_119
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_119:                                ; preds = %it_is_tuple_119
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_119, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_119
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_119:                          ; preds = %it_is_integer_119
  br i1 true, label %index_is_not_negative_119, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_119
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_119:                        ; preds = %index_is_less_tha_n_119
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_75

call_error_func46:                                ; preds = %index_is_less_tha_n_119
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_75:                                           ; preds = %index_is_not_negative_119
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_116

get_item_116:                                     ; preds = %let_75
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_116, label %call_error_func51

it_not_nil_116:                                   ; preds = %get_item_116
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_116, label %call_error_func55

call_error_func51:                                ; preds = %get_item_116
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_116:                                  ; preds = %it_not_nil_116
  br i1 true, label %it_is_integer_116, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_116
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_116:                                ; preds = %it_is_tuple_116
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_116, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_116
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_116:                          ; preds = %it_is_integer_116
  br i1 true, label %index_is_not_negative_116, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_116
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_116:                        ; preds = %index_is_less_tha_n_116
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_76

call_error_func66:                                ; preds = %index_is_less_tha_n_116
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_76:                                           ; preds = %index_is_not_negative_116
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_113

get_item_113:                                     ; preds = %let_76
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_113, label %call_error_func72

it_not_nil_113:                                   ; preds = %get_item_113
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_113, label %call_error_func76

call_error_func72:                                ; preds = %get_item_113
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_113:                                  ; preds = %it_not_nil_113
  br i1 true, label %it_is_integer_113, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_113
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_113:                                ; preds = %it_is_tuple_113
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_113, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_113
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_113:                          ; preds = %it_is_integer_113
  br i1 true, label %index_is_not_negative_113, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_113
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_113:                        ; preds = %index_is_less_tha_n_113
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_77

call_error_func87:                                ; preds = %index_is_less_tha_n_113
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_77:                                           ; preds = %index_is_not_negative_113
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_110

get_item_110:                                     ; preds = %let_77
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_110, label %call_error_func92

it_not_nil_110:                                   ; preds = %get_item_110
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_110, label %call_error_func96

call_error_func92:                                ; preds = %get_item_110
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_110:                                  ; preds = %it_not_nil_110
  br i1 true, label %it_is_integer_110, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_110
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_110:                                ; preds = %it_is_tuple_110
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_110, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_110
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_110:                          ; preds = %it_is_integer_110
  br i1 true, label %index_is_not_negative_110, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_110
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_110:                        ; preds = %index_is_less_tha_n_110
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_78

call_error_func107:                               ; preds = %index_is_less_tha_n_110
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_78:                                           ; preds = %index_is_not_negative_110
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %greater_eq_107

greater_eq_107:                                   ; preds = %let_78
  %x5_49111 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1 = and i64 %x5_49111, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_107, label %call_error_func112

arg1_type_check_passed_107:                       ; preds = %greater_eq_107
  br i1 true, label %arg2_type_check_passed_107, label %call_error_func114

call_error_func112:                               ; preds = %greater_eq_107
  store i64 %x5_49111, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_107:                       ; preds = %arg1_type_check_passed_107
  %greater_eq_llvm_result_107 = icmp sge i64 %x5_49111, 20
  br i1 %greater_eq_llvm_result_107, label %comp_is_true_107, label %comp_is_false_107

call_error_func114:                               ; preds = %arg1_type_check_passed_107
  store i64 20, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_107:                                 ; preds = %arg2_type_check_passed_107
  br label %merge_107

comp_is_false_107:                                ; preds = %arg2_type_check_passed_107
  br label %merge_107

merge_107:                                        ; preds = %comp_is_false_107, %comp_is_true_107
  %greater_eq_snake_result_107 = phi i64 [ -1, %comp_is_true_107 ], [ 9223372036854775807, %comp_is_false_107 ]
  br label %let_79

let_79:                                           ; preds = %merge_107
  %binop_54 = alloca i64, align 8
  store i64 %greater_eq_snake_result_107, i64* %binop_54, align 4
  br label %if_else_80

if_else_80:                                       ; preds = %let_79
  %binop_54116 = load i64, i64* %binop_54, align 4
  %tag_bits_of_cond_val = and i64 %binop_54116, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_80, label %call_error_func117

continue_if_else_80:                              ; preds = %if_else_80
  %is_cond_true = icmp eq i64 %binop_54116, -1
  br i1 %is_cond_true, label %then_80, label %else_80

call_error_func117:                               ; preds = %if_else_80
  store i64 %binop_54116, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 4)
  unreachable

then_80:                                          ; preds = %continue_if_else_80
  br label %construct_tuple_103

else_80:                                          ; preds = %continue_if_else_80
  br label %construct_tuple_95

merge_then_else_80:                               ; preds = %is_correct_arity_84, %construct_tuple_99
  %"if/else_snake_result_80" = phi i64 [ %tuple_tagged_tuple_addr_word_99, %construct_tuple_99 ], [ %lambda_tail_call_result, %is_correct_arity_84 ]
  br label %return

construct_tuple_103:                              ; preds = %then_80
  %x3_35119 = load i64, i64* %x3_35, align 4
  %x4_42120 = load i64, i64* %x4_42, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_103 = bitcast i8* %malloccall to { i64, i64, i64 }*
  %3 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_103, i32 0, i32 0
  %4 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_103, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_103, i32 0, i32 2
  store i64 4, i64* %3, align 4
  store i64 %x3_35119, i64* %4, align 4
  store i64 %x4_42120, i64* %5, align 4
  %tuple_addr_103 = ptrtoint { i64, i64, i64 }* %tuple_ptr_103 to i64
  %tuple_tagged_tuple_addr_word_103 = add i64 %tuple_addr_103, 1
  br label %let_98

let_98:                                           ; preds = %construct_tuple_103
  %tuple_59 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_103, i64* %tuple_59, align 4
  br label %construct_tuple_99

construct_tuple_99:                               ; preds = %let_98
  %x2_30121 = load i64, i64* %x2_30, align 4
  %tuple_59122 = load i64, i64* %tuple_59, align 4
  %x5_49123 = load i64, i64* %x5_49, align 4
  %malloccall124 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_99 = bitcast i8* %malloccall124 to { i64, i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_99, i32 0, i32 0
  %7 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_99, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_99, i32 0, i32 2
  %9 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_99, i32 0, i32 3
  store i64 6, i64* %6, align 4
  store i64 %x2_30121, i64* %7, align 4
  store i64 %tuple_59122, i64* %8, align 4
  store i64 %x5_49123, i64* %9, align 4
  %tuple_addr_99 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_99 to i64
  %tuple_tagged_tuple_addr_word_99 = add i64 %tuple_addr_99, 1
  br label %merge_then_else_80

construct_tuple_95:                               ; preds = %else_80
  %x3_35125 = load i64, i64* %x3_35, align 4
  %x4_42126 = load i64, i64* %x4_42, align 4
  %malloccall127 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_95 = bitcast i8* %malloccall127 to { i64, i64, i64 }*
  %10 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_95, i32 0, i32 0
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_95, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_95, i32 0, i32 2
  store i64 4, i64* %10, align 4
  store i64 %x3_35125, i64* %11, align 4
  store i64 %x4_42126, i64* %12, align 4
  %tuple_addr_95 = ptrtoint { i64, i64, i64 }* %tuple_ptr_95 to i64
  %tuple_tagged_tuple_addr_word_95 = add i64 %tuple_addr_95, 1
  br label %let_81

let_81:                                           ; preds = %construct_tuple_95
  %tuple_67 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_95, i64* %tuple_67, align 4
  br label %plus_92

plus_92:                                          ; preds = %let_81
  %x5_49128 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1129 = and i64 %x5_49128, 1
  %is_arg1_int130 = icmp eq i64 %tag_bits_of_arg1129, 0
  br i1 %is_arg1_int130, label %arg1_type_check_passed_92, label %call_error_func131

arg1_type_check_passed_92:                        ; preds = %plus_92
  br i1 true, label %arg2_type_check_passed_92, label %call_error_func133

call_error_func131:                               ; preds = %plus_92
  store i64 %x5_49128, i64* @current_answer_ptr, align 4
  %error_call_return_val132 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_92:                        ; preds = %arg1_type_check_passed_92
  %plus_snake_result_92 = add i64 %x5_49128, 2
  %l_ge_0 = icmp sge i64 %x5_49128, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_92, %x5_49128
  %sum_lt_r = icmp slt i64 %plus_snake_result_92, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x5_49128, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_92, %x5_49128
  %sum_gt_r = icmp sgt i64 %plus_snake_result_92, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_92, label %call_error_func135

call_error_func133:                               ; preds = %arg1_type_check_passed_92
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val134 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_92:                          ; preds = %arg2_type_check_passed_92
  %plus_snake_result_92137 = phi i64 [ %plus_snake_result_92, %arg2_type_check_passed_92 ]
  br label %let_82

call_error_func135:                               ; preds = %arg2_type_check_passed_92
  store i64 %plus_snake_result_92, i64* @current_answer_ptr, align 4
  %error_call_return_val136 = call i64 @error_func(i64 5)
  unreachable

let_82:                                           ; preds = %continue_no_overflow_92
  %binop_70 = alloca i64, align 8
  store i64 %plus_snake_result_92137, i64* %binop_70, align 4
  br label %construct_tuple_88

construct_tuple_88:                               ; preds = %let_82
  %x2_30138 = load i64, i64* %x2_30, align 4
  %tuple_67139 = load i64, i64* %tuple_67, align 4
  %binop_70140 = load i64, i64* %binop_70, align 4
  %malloccall141 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_88 = bitcast i8* %malloccall141 to { i64, i64, i64, i64 }*
  %13 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_88, i32 0, i32 0
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_88, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_88, i32 0, i32 2
  %16 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_88, i32 0, i32 3
  store i64 6, i64* %13, align 4
  store i64 %x2_30138, i64* %14, align 4
  store i64 %tuple_67139, i64* %15, align 4
  store i64 %binop_70140, i64* %16, align 4
  %tuple_addr_88 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_88 to i64
  %tuple_tagged_tuple_addr_word_88 = add i64 %tuple_addr_88, 1
  br label %let_83

let_83:                                           ; preds = %construct_tuple_88
  %tuple_65 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_88, i64* %tuple_65, align 4
  br label %function_call

function_call:                                    ; preds = %let_83
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_84, label %call_error_func142

is_closure_84:                                    ; preds = %function_call
  %untagged_closure_addr144 = sub i64 %f1_26, 5
  %closure_ptr145 = inttoptr i64 %untagged_closure_addr144 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr145, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr145, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %17 = icmp eq i64 %arity, 4
  br i1 %17, label %is_correct_arity_84, label %call_error_func146

call_error_func142:                               ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val143 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_84:                              ; preds = %is_closure_84
  %tuple_65148 = load i64, i64* %tuple_65, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %tuple_65148)
  br label %merge_then_else_80

call_error_func146:                               ; preds = %is_closure_84
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val147 = call i64 @error_func(i64 17)
  unreachable
}

define i64 @lambda_55_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_69

return:                                           ; preds = %merge_then_else_59
  ret i64 %"if/else_snake_result_59"

get_item_69:                                      ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_69, label %call_error_func

it_not_nil_69:                                    ; preds = %get_item_69
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_69, label %call_error_func1

call_error_func:                                  ; preds = %get_item_69
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_69:                                   ; preds = %it_not_nil_69
  br i1 true, label %it_is_integer_69, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_69
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_69:                                 ; preds = %it_is_tuple_69
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_69, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_69
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_69:                           ; preds = %it_is_integer_69
  br i1 true, label %index_is_not_negative_69, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_69
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_69:                         ; preds = %index_is_less_tha_n_69
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_56

call_error_func7:                                 ; preds = %index_is_less_tha_n_69
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_56:                                           ; preds = %index_is_not_negative_69
  %y2_82 = alloca i64, align 8
  store i64 %accessed_element, i64* %y2_82, align 4
  br label %get_item_66

get_item_66:                                      ; preds = %let_56
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_66, label %call_error_func10

it_not_nil_66:                                    ; preds = %get_item_66
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_66, label %call_error_func14

call_error_func10:                                ; preds = %get_item_66
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_66:                                   ; preds = %it_not_nil_66
  br i1 true, label %it_is_integer_66, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_66
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_66:                                 ; preds = %it_is_tuple_66
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_66, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_66
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_66:                           ; preds = %it_is_integer_66
  br i1 true, label %index_is_not_negative_66, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_66
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_66:                         ; preds = %index_is_less_tha_n_66
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_57

call_error_func25:                                ; preds = %index_is_less_tha_n_66
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_57:                                           ; preds = %index_is_not_negative_66
  %y3_87 = alloca i64, align 8
  store i64 %accessed_element28, i64* %y3_87, align 4
  br label %greater_63

greater_63:                                       ; preds = %let_57
  %y2_8229 = load i64, i64* %y2_82, align 4
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_63, label %call_error_func30

arg1_type_check_passed_63:                        ; preds = %greater_63
  %tag_bits_of_arg2 = and i64 %y2_8229, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_63, label %call_error_func32

call_error_func30:                                ; preds = %greater_63
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_63:                        ; preds = %arg1_type_check_passed_63
  %greater_llvm_result_63 = icmp sgt i64 %1, %y2_8229
  br i1 %greater_llvm_result_63, label %comp_is_true_63, label %comp_is_false_63

call_error_func32:                                ; preds = %arg1_type_check_passed_63
  store i64 %y2_8229, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_63:                                  ; preds = %arg2_type_check_passed_63
  br label %merge_63

comp_is_false_63:                                 ; preds = %arg2_type_check_passed_63
  br label %merge_63

merge_63:                                         ; preds = %comp_is_false_63, %comp_is_true_63
  %greater_snake_result_63 = phi i64 [ -1, %comp_is_true_63 ], [ 9223372036854775807, %comp_is_false_63 ]
  br label %let_58

let_58:                                           ; preds = %merge_63
  %binop_92 = alloca i64, align 8
  store i64 %greater_snake_result_63, i64* %binop_92, align 4
  br label %if_else_59

if_else_59:                                       ; preds = %let_58
  %binop_9234 = load i64, i64* %binop_92, align 4
  %tag_bits_of_cond_val = and i64 %binop_9234, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_59, label %call_error_func35

continue_if_else_59:                              ; preds = %if_else_59
  %is_cond_true = icmp eq i64 %binop_9234, -1
  br i1 %is_cond_true, label %then_59, label %else_59

call_error_func35:                                ; preds = %if_else_59
  store i64 %binop_9234, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 4)
  unreachable

then_59:                                          ; preds = %continue_if_else_59
  %y3_8737 = load i64, i64* %y3_87, align 4
  br label %merge_then_else_59

else_59:                                          ; preds = %continue_if_else_59
  br label %merge_then_else_59

merge_then_else_59:                               ; preds = %else_59, %then_59
  %"if/else_snake_result_59" = phi i64 [ %y3_8737, %then_59 ], [ 9223372036854775807, %else_59 ]
  br label %return
}
