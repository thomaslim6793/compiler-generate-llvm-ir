; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_221

create_lambda_closure_221:                        ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_221 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_221, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_221, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_221, i32 0, i32 2
  store i64 (i64, i64)* @lambda_221_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1000, i64* %2, align 4
  %closure_addr_221 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_221 to i64
  %closure_tagged_tuple_addr_word_221 = add i64 %closure_addr_221, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_221
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_221, i64* %print_4, align 4
  br label %create_lambda_closure_218

create_lambda_closure_218:                        ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_218 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_218, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_218, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_218, i32 0, i32 2
  store i64 (i64)* @lambda_218_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1000, i64* %5, align 4
  %closure_addr_218 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_218 to i64
  %closure_tagged_tuple_addr_word_218 = add i64 %closure_addr_218, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_218
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_218, i64* %input_11, align 4
  br label %create_lambda_closure_213

create_lambda_closure_213:                        ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_213 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_213, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_213, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_213, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_213_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1000, i64* %8, align 4
  %closure_addr_213 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_213 to i64
  %closure_tagged_tuple_addr_word_213 = add i64 %closure_addr_213, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_213
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_213, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_158

create_lambda_closure_158:                        ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_158 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_158, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_158, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_158, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_158_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_158 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_158 to i64
  %closure_tagged_tuple_addr_word_158 = add i64 %closure_addr_158, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_158
  store i64 %closure_tagged_tuple_addr_word_158, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_158, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_77 = alloca i64, align 8
  br label %create_lambda_closure_141

create_lambda_closure_141:                        ; preds = %let_rec_5
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_141 = bitcast i8* %malloccall6 to { i64 (i64, i64, i64)*, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_141, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_141, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_141_, i64 (i64, i64, i64)** %13, align 8
  store i64 4, i64* %14, align 4
  %closure_addr_141 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_141 to i64
  %closure_tagged_tuple_addr_word_141 = add i64 %closure_addr_141, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_141
  store i64 %closure_tagged_tuple_addr_word_141, i64* %f2_77, align 4
  br label %construct_tuple_138

construct_tuple_138:                              ; preds = %patch_let_rec_closures_5
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_138 = bitcast i8* %malloccall7 to { i64, i64, i64 }*
  %15 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_138, i32 0, i32 0
  %16 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_138, i32 0, i32 1
  %17 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_138, i32 0, i32 2
  store i64 4, i64* %15, align 4
  store i64 2, i64* %16, align 4
  store i64 2, i64* %17, align 4
  %tuple_addr_138 = ptrtoint { i64, i64, i64 }* %tuple_ptr_138 to i64
  %tuple_tagged_tuple_addr_word_138 = add i64 %tuple_addr_138, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_138
  %tuple_113 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_138, i64* %tuple_113, align 4
  br label %construct_tuple_134

construct_tuple_134:                              ; preds = %let_6
  %tuple_1138 = load i64, i64* %tuple_113, align 4
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_134 = bitcast i8* %malloccall9 to { i64, i64, i64, i64 }*
  %18 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_134, i32 0, i32 0
  %19 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_134, i32 0, i32 1
  %20 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_134, i32 0, i32 2
  %21 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_134, i32 0, i32 3
  store i64 6, i64* %18, align 4
  store i64 2, i64* %19, align 4
  store i64 %tuple_1138, i64* %20, align 4
  store i64 2, i64* %21, align 4
  %tuple_addr_134 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_134 to i64
  %tuple_tagged_tuple_addr_word_134 = add i64 %tuple_addr_134, 1
  br label %let_7

let_7:                                            ; preds = %construct_tuple_134
  %tuple_111 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_134, i64* %tuple_111, align 4
  br label %function_call

function_call:                                    ; preds = %let_7
  %f1_2610 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_2610, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_130, label %call_error_func

is_closure_130:                                   ; preds = %function_call
  %untagged_closure_addr11 = sub i64 %f1_2610, 5
  %closure_ptr12 = inttoptr i64 %untagged_closure_addr11 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr12, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr12, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %22 = icmp eq i64 %arity, 4
  br i1 %22, label %is_correct_arity_130, label %call_error_func13

call_error_func:                                  ; preds = %function_call
  store i64 %f1_2610, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_130:                             ; preds = %is_closure_130
  %tuple_11115 = load i64, i64* %tuple_111, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_2610, i64 2, i64 %tuple_11115)
  br label %let_8

call_error_func13:                                ; preds = %is_closure_130
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val14 = call i64 @error_func(i64 17)
  unreachable

let_8:                                            ; preds = %is_correct_arity_130
  %app_109 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_109, align 4
  br label %let_9

let_9:                                            ; preds = %let_8
  %x_121 = alloca i64, align 8
  store i64 4, i64* %x_121, align 4
  br label %construct_tuple_126

construct_tuple_126:                              ; preds = %let_9
  %x_12116 = load i64, i64* %x_121, align 4
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_126 = bitcast i8* %malloccall17 to { i64, i64, i64 }*
  %23 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_126, i32 0, i32 0
  %24 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_126, i32 0, i32 1
  %25 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_126, i32 0, i32 2
  store i64 4, i64* %23, align 4
  store i64 %x_12116, i64* %24, align 4
  store i64 6, i64* %25, align 4
  %tuple_addr_126 = ptrtoint { i64, i64, i64 }* %tuple_ptr_126 to i64
  %tuple_tagged_tuple_addr_word_126 = add i64 %tuple_addr_126, 1
  br label %let_10

let_10:                                           ; preds = %construct_tuple_126
  %tuple_126 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_126, i64* %tuple_126, align 4
  br label %plus_123

plus_123:                                         ; preds = %let_10
  br i1 true, label %arg1_type_check_passed_123, label %call_error_func18

arg1_type_check_passed_123:                       ; preds = %plus_123
  br i1 true, label %arg2_type_check_passed_123, label %call_error_func20

call_error_func18:                                ; preds = %plus_123
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val19 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_123:                       ; preds = %arg1_type_check_passed_123
  br i1 true, label %continue_no_overflow_123, label %call_error_func22

call_error_func20:                                ; preds = %arg1_type_check_passed_123
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_123:                         ; preds = %arg2_type_check_passed_123
  %plus_snake_result_123 = phi i64 [ 6, %arg2_type_check_passed_123 ]
  br label %let_11

call_error_func22:                                ; preds = %arg2_type_check_passed_123
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val23 = call i64 @error_func(i64 5)
  unreachable

let_11:                                           ; preds = %continue_no_overflow_123
  %b1_100 = alloca i64, align 8
  store i64 %plus_snake_result_123, i64* %b1_100, align 4
  br label %construct_tuple_120

construct_tuple_120:                              ; preds = %let_11
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_120 = bitcast i8* %malloccall24 to { i64, i64, i64 }*
  %26 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_120, i32 0, i32 0
  %27 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_120, i32 0, i32 1
  %28 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_120, i32 0, i32 2
  store i64 4, i64* %26, align 4
  store i64 4, i64* %27, align 4
  store i64 6, i64* %28, align 4
  %tuple_addr_120 = ptrtoint { i64, i64, i64 }* %tuple_ptr_120 to i64
  %tuple_tagged_tuple_addr_word_120 = add i64 %tuple_addr_120, 1
  br label %let_12

let_12:                                           ; preds = %construct_tuple_120
  %tuple_136 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_120, i64* %tuple_136, align 4
  br label %construct_tuple_116

construct_tuple_116:                              ; preds = %let_12
  %tuple_13625 = load i64, i64* %tuple_136, align 4
  %malloccall26 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_116 = bitcast i8* %malloccall26 to { i64, i64, i64, i64 }*
  %29 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_116, i32 0, i32 0
  %30 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_116, i32 0, i32 1
  %31 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_116, i32 0, i32 2
  %32 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_116, i32 0, i32 3
  store i64 6, i64* %29, align 4
  store i64 -1, i64* %30, align 4
  store i64 2, i64* %31, align 4
  store i64 %tuple_13625, i64* %32, align 4
  %tuple_addr_116 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_116 to i64
  %tuple_tagged_tuple_addr_word_116 = add i64 %tuple_addr_116, 1
  br label %let_13

let_13:                                           ; preds = %construct_tuple_116
  %t1_132 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_116, i64* %t1_132, align 4
  br label %get_item_113

get_item_113:                                     ; preds = %let_13
  %t1_13227 = load i64, i64* %t1_132, align 4
  %is_not_nil = icmp ne i64 %t1_13227, 1
  br i1 %is_not_nil, label %it_not_nil_113, label %call_error_func28

it_not_nil_113:                                   ; preds = %get_item_113
  %tag_bits_of_tup_val = and i64 %t1_13227, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_113, label %call_error_func30

call_error_func28:                                ; preds = %get_item_113
  store i64 %t1_13227, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_113:                                  ; preds = %it_not_nil_113
  br i1 true, label %it_is_integer_113, label %call_error_func32

call_error_func30:                                ; preds = %it_not_nil_113
  store i64 %t1_13227, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_113:                                ; preds = %it_is_tuple_113
  %untagged_tuple_addr = sub i64 %t1_13227, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_113, label %call_error_func34

call_error_func32:                                ; preds = %it_is_tuple_113
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_113:                          ; preds = %it_is_integer_113
  br i1 true, label %index_is_not_negative_113, label %call_error_func36

call_error_func34:                                ; preds = %it_is_integer_113
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val35 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_113:                        ; preds = %index_is_less_tha_n_113
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_14

call_error_func36:                                ; preds = %index_is_less_tha_n_113
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val37 = call i64 @error_func(i64 7)
  unreachable

let_14:                                           ; preds = %index_is_not_negative_113
  %getitem_143 = alloca i64, align 8
  store i64 %accessed_element, i64* %getitem_143, align 4
  br label %if_else_109

if_else_109:                                      ; preds = %let_14
  %getitem_14338 = load i64, i64* %getitem_143, align 4
  %tag_bits_of_cond_val = and i64 %getitem_14338, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_109, label %call_error_func39

continue_if_else_109:                             ; preds = %if_else_109
  %is_cond_true = icmp eq i64 %getitem_14338, -1
  br i1 %is_cond_true, label %then_109, label %else_109

call_error_func39:                                ; preds = %if_else_109
  store i64 %getitem_14338, i64* @current_answer_ptr, align 4
  %error_call_return_val40 = call i64 @error_func(i64 4)
  unreachable

then_109:                                         ; preds = %continue_if_else_109
  br label %merge_then_else_109

else_109:                                         ; preds = %continue_if_else_109
  br label %merge_then_else_109

merge_then_else_109:                              ; preds = %else_109, %then_109
  %"if/else_snake_result_109" = phi i64 [ 2, %then_109 ], [ 4, %else_109 ]
  br label %let_15

let_15:                                           ; preds = %merge_then_else_109
  %b2_141 = alloca i64, align 8
  store i64 %"if/else_snake_result_109", i64* %b2_141, align 4
  br label %construct_tuple_106

construct_tuple_106:                              ; preds = %let_15
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_106 = bitcast i8* %malloccall41 to { i64, i64, i64 }*
  %33 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_106, i32 0, i32 0
  %34 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_106, i32 0, i32 1
  %35 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_106, i32 0, i32 2
  store i64 4, i64* %33, align 4
  store i64 6, i64* %34, align 4
  store i64 8, i64* %35, align 4
  %tuple_addr_106 = ptrtoint { i64, i64, i64 }* %tuple_ptr_106 to i64
  %tuple_tagged_tuple_addr_word_106 = add i64 %tuple_addr_106, 1
  br label %let_16

let_16:                                           ; preds = %construct_tuple_106
  %tuple_156 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_106, i64* %tuple_156, align 4
  br label %construct_tuple_102

construct_tuple_102:                              ; preds = %let_16
  %tuple_15642 = load i64, i64* %tuple_156, align 4
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_102 = bitcast i8* %malloccall43 to { i64, i64, i64, i64 }*
  %36 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_102, i32 0, i32 0
  %37 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_102, i32 0, i32 1
  %38 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_102, i32 0, i32 2
  %39 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_102, i32 0, i32 3
  store i64 6, i64* %36, align 4
  store i64 4, i64* %37, align 4
  store i64 %tuple_15642, i64* %38, align 4
  store i64 10, i64* %39, align 4
  %tuple_addr_102 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_102 to i64
  %tuple_tagged_tuple_addr_word_102 = add i64 %tuple_addr_102, 1
  br label %let_17

let_17:                                           ; preds = %construct_tuple_102
  %tuple_154 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_102, i64* %tuple_154, align 4
  br label %function_call44

function_call44:                                  ; preds = %let_17
  %f1_2645 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call46 = and i64 %f1_2645, 7
  %is_closure_of_func_to_call_closure47 = icmp eq i64 %tag_bits_of_closure_of_func_to_call46, 5
  br i1 %is_closure_of_func_to_call_closure47, label %is_closure_98, label %call_error_func48

is_closure_98:                                    ; preds = %function_call44
  %untagged_closure_addr50 = sub i64 %f1_2645, 5
  %closure_ptr51 = inttoptr i64 %untagged_closure_addr50 to i64*
  %function_code_ptr_as_i6452 = load i64, i64* %closure_ptr51, align 4
  %function53 = inttoptr i64 %function_code_ptr_as_i6452 to i64 (i64, i64, i64)*
  %arity_ptr54 = getelementptr i64, i64* %closure_ptr51, i64 1
  %arity55 = load i64, i64* %arity_ptr54, align 4
  %40 = icmp eq i64 %arity55, 4
  br i1 %40, label %is_correct_arity_98, label %call_error_func56

call_error_func48:                                ; preds = %function_call44
  store i64 %f1_2645, i64* @current_answer_ptr, align 4
  %error_call_return_val49 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_98:                              ; preds = %is_closure_98
  %tuple_15458 = load i64, i64* %tuple_154, align 4
  %lambda_non_tail_call_result59 = call i64 %function53(i64 %f1_2645, i64 2, i64 %tuple_15458)
  br label %let_18

call_error_func56:                                ; preds = %is_closure_98
  store i64 %arity55, i64* @current_answer_ptr, align 4
  %error_call_return_val57 = call i64 @error_func(i64 17)
  unreachable

let_18:                                           ; preds = %is_correct_arity_98
  %app_152 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result59, i64* %app_152, align 4
  br label %check_size_95

check_size_95:                                    ; preds = %let_18
  %app_15260 = load i64, i64* %app_152, align 4
  %tag_bits_of_e1_val = and i64 %app_15260, 7
  %is_e1_val_tuple = icmp eq i64 %tag_bits_of_e1_val, 1
  br i1 %is_e1_val_tuple, label %e1_is_tuple_95, label %call_error_func61

e1_is_tuple_95:                                   ; preds = %check_size_95
  %untagged_tuple_addr63 = sub i64 %app_15260, 1
  %tuple_ptr64 = inttoptr i64 %untagged_tuple_addr63 to i64*
  %num_elements_ptr65 = getelementptr i64, i64* %tuple_ptr64, i64 0
  %num_elements66 = load i64, i64* %num_elements_ptr65, align 4
  %41 = icmp eq i64 %num_elements66, 6
  br i1 %41, label %arity_is_matching_95, label %call_error_func67

call_error_func61:                                ; preds = %check_size_95
  store i64 %app_15260, i64* @current_answer_ptr, align 4
  %error_call_return_val62 = call i64 @error_func(i64 6)
  unreachable

arity_is_matching_95:                             ; preds = %e1_is_tuple_95
  %result = phi i64 [ %app_15260, %e1_is_tuple_95 ]
  br label %let_19

call_error_func67:                                ; preds = %e1_is_tuple_95
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val68 = call i64 @error_func(i64 19)
  unreachable

let_19:                                           ; preds = %arity_is_matching_95
  %let_tuple_1_150 = alloca i64, align 8
  store i64 %result, i64* %let_tuple_1_150, align 4
  br label %get_item_92

get_item_92:                                      ; preds = %let_19
  %let_tuple_1_15069 = load i64, i64* %let_tuple_1_150, align 4
  %is_not_nil70 = icmp ne i64 %let_tuple_1_15069, 1
  br i1 %is_not_nil70, label %it_not_nil_92, label %call_error_func71

it_not_nil_92:                                    ; preds = %get_item_92
  %tag_bits_of_tup_val73 = and i64 %let_tuple_1_15069, 7
  %is_tup_val_tuple74 = icmp eq i64 %tag_bits_of_tup_val73, 1
  br i1 %is_tup_val_tuple74, label %it_is_tuple_92, label %call_error_func75

call_error_func71:                                ; preds = %get_item_92
  store i64 %let_tuple_1_15069, i64* @current_answer_ptr, align 4
  %error_call_return_val72 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_92:                                   ; preds = %it_not_nil_92
  br i1 true, label %it_is_integer_92, label %call_error_func77

call_error_func75:                                ; preds = %it_not_nil_92
  store i64 %let_tuple_1_15069, i64* @current_answer_ptr, align 4
  %error_call_return_val76 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_92:                                 ; preds = %it_is_tuple_92
  %untagged_tuple_addr79 = sub i64 %let_tuple_1_15069, 1
  %tuple_ptr80 = inttoptr i64 %untagged_tuple_addr79 to i64*
  %num_elements_ptr81 = getelementptr i64, i64* %tuple_ptr80, i64 0
  %num_elements82 = load i64, i64* %num_elements_ptr81, align 4
  %index_is_less_than_n83 = icmp slt i64 0, %num_elements82
  br i1 %index_is_less_than_n83, label %index_is_less_tha_n_92, label %call_error_func84

call_error_func77:                                ; preds = %it_is_tuple_92
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val78 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_92:                           ; preds = %it_is_integer_92
  br i1 true, label %index_is_not_negative_92, label %call_error_func86

call_error_func84:                                ; preds = %it_is_integer_92
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val85 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_92:                         ; preds = %index_is_less_tha_n_92
  %index_element_ptr88 = getelementptr i64, i64* %tuple_ptr80, i64 1
  %accessed_element89 = load i64, i64* %index_element_ptr88, align 4
  br label %let_20

call_error_func86:                                ; preds = %index_is_less_tha_n_92
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val87 = call i64 @error_func(i64 7)
  unreachable

let_20:                                           ; preds = %index_is_not_negative_92
  %a1_163 = alloca i64, align 8
  store i64 %accessed_element89, i64* %a1_163, align 4
  br label %get_item_89

get_item_89:                                      ; preds = %let_20
  %let_tuple_1_15090 = load i64, i64* %let_tuple_1_150, align 4
  %is_not_nil91 = icmp ne i64 %let_tuple_1_15090, 1
  br i1 %is_not_nil91, label %it_not_nil_89, label %call_error_func92

it_not_nil_89:                                    ; preds = %get_item_89
  %tag_bits_of_tup_val94 = and i64 %let_tuple_1_15090, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_89, label %call_error_func96

call_error_func92:                                ; preds = %get_item_89
  store i64 %let_tuple_1_15090, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_89:                                   ; preds = %it_not_nil_89
  br i1 true, label %it_is_integer_89, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_89
  store i64 %let_tuple_1_15090, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_89:                                 ; preds = %it_is_tuple_89
  %untagged_tuple_addr100 = sub i64 %let_tuple_1_15090, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 2, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_89, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_89
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_89:                           ; preds = %it_is_integer_89
  br i1 true, label %index_is_not_negative_89, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_89
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_89:                         ; preds = %index_is_less_tha_n_89
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 2
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_21

call_error_func107:                               ; preds = %index_is_less_tha_n_89
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_21:                                           ; preds = %index_is_not_negative_89
  %getitem_171 = alloca i64, align 8
  store i64 %accessed_element110, i64* %getitem_171, align 4
  br label %get_item_86

get_item_86:                                      ; preds = %let_21
  %getitem_171111 = load i64, i64* %getitem_171, align 4
  %is_not_nil112 = icmp ne i64 %getitem_171111, 1
  br i1 %is_not_nil112, label %it_not_nil_86, label %call_error_func113

it_not_nil_86:                                    ; preds = %get_item_86
  %tag_bits_of_tup_val115 = and i64 %getitem_171111, 7
  %is_tup_val_tuple116 = icmp eq i64 %tag_bits_of_tup_val115, 1
  br i1 %is_tup_val_tuple116, label %it_is_tuple_86, label %call_error_func117

call_error_func113:                               ; preds = %get_item_86
  store i64 %getitem_171111, i64* @current_answer_ptr, align 4
  %error_call_return_val114 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_86:                                   ; preds = %it_not_nil_86
  br i1 true, label %it_is_integer_86, label %call_error_func119

call_error_func117:                               ; preds = %it_not_nil_86
  store i64 %getitem_171111, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_86:                                 ; preds = %it_is_tuple_86
  %untagged_tuple_addr121 = sub i64 %getitem_171111, 1
  %tuple_ptr122 = inttoptr i64 %untagged_tuple_addr121 to i64*
  %num_elements_ptr123 = getelementptr i64, i64* %tuple_ptr122, i64 0
  %num_elements124 = load i64, i64* %num_elements_ptr123, align 4
  %index_is_less_than_n125 = icmp slt i64 0, %num_elements124
  br i1 %index_is_less_than_n125, label %index_is_less_tha_n_86, label %call_error_func126

call_error_func119:                               ; preds = %it_is_tuple_86
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val120 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_86:                           ; preds = %it_is_integer_86
  br i1 true, label %index_is_not_negative_86, label %call_error_func128

call_error_func126:                               ; preds = %it_is_integer_86
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val127 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_86:                         ; preds = %index_is_less_tha_n_86
  %index_element_ptr130 = getelementptr i64, i64* %tuple_ptr122, i64 1
  %accessed_element131 = load i64, i64* %index_element_ptr130, align 4
  br label %let_22

call_error_func128:                               ; preds = %index_is_less_tha_n_86
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val129 = call i64 @error_func(i64 7)
  unreachable

let_22:                                           ; preds = %index_is_not_negative_86
  %a2_168 = alloca i64, align 8
  store i64 %accessed_element131, i64* %a2_168, align 4
  br label %get_item_83

get_item_83:                                      ; preds = %let_22
  %let_tuple_1_150132 = load i64, i64* %let_tuple_1_150, align 4
  %is_not_nil133 = icmp ne i64 %let_tuple_1_150132, 1
  br i1 %is_not_nil133, label %it_not_nil_83, label %call_error_func134

it_not_nil_83:                                    ; preds = %get_item_83
  %tag_bits_of_tup_val136 = and i64 %let_tuple_1_150132, 7
  %is_tup_val_tuple137 = icmp eq i64 %tag_bits_of_tup_val136, 1
  br i1 %is_tup_val_tuple137, label %it_is_tuple_83, label %call_error_func138

call_error_func134:                               ; preds = %get_item_83
  store i64 %let_tuple_1_150132, i64* @current_answer_ptr, align 4
  %error_call_return_val135 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_83:                                   ; preds = %it_not_nil_83
  br i1 true, label %it_is_integer_83, label %call_error_func140

call_error_func138:                               ; preds = %it_not_nil_83
  store i64 %let_tuple_1_150132, i64* @current_answer_ptr, align 4
  %error_call_return_val139 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_83:                                 ; preds = %it_is_tuple_83
  %untagged_tuple_addr142 = sub i64 %let_tuple_1_150132, 1
  %tuple_ptr143 = inttoptr i64 %untagged_tuple_addr142 to i64*
  %num_elements_ptr144 = getelementptr i64, i64* %tuple_ptr143, i64 0
  %num_elements145 = load i64, i64* %num_elements_ptr144, align 4
  %index_is_less_than_n146 = icmp slt i64 2, %num_elements145
  br i1 %index_is_less_than_n146, label %index_is_less_tha_n_83, label %call_error_func147

call_error_func140:                               ; preds = %it_is_tuple_83
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val141 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_83:                           ; preds = %it_is_integer_83
  br i1 true, label %index_is_not_negative_83, label %call_error_func149

call_error_func147:                               ; preds = %it_is_integer_83
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val148 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_83:                         ; preds = %index_is_less_tha_n_83
  %index_element_ptr151 = getelementptr i64, i64* %tuple_ptr143, i64 2
  %accessed_element152 = load i64, i64* %index_element_ptr151, align 4
  br label %let_23

call_error_func149:                               ; preds = %index_is_less_tha_n_83
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val150 = call i64 @error_func(i64 7)
  unreachable

let_23:                                           ; preds = %index_is_not_negative_83
  %getitem_178 = alloca i64, align 8
  store i64 %accessed_element152, i64* %getitem_178, align 4
  br label %get_item_80

get_item_80:                                      ; preds = %let_23
  %getitem_178153 = load i64, i64* %getitem_178, align 4
  %is_not_nil154 = icmp ne i64 %getitem_178153, 1
  br i1 %is_not_nil154, label %it_not_nil_80, label %call_error_func155

it_not_nil_80:                                    ; preds = %get_item_80
  %tag_bits_of_tup_val157 = and i64 %getitem_178153, 7
  %is_tup_val_tuple158 = icmp eq i64 %tag_bits_of_tup_val157, 1
  br i1 %is_tup_val_tuple158, label %it_is_tuple_80, label %call_error_func159

call_error_func155:                               ; preds = %get_item_80
  store i64 %getitem_178153, i64* @current_answer_ptr, align 4
  %error_call_return_val156 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_80:                                   ; preds = %it_not_nil_80
  br i1 true, label %it_is_integer_80, label %call_error_func161

call_error_func159:                               ; preds = %it_not_nil_80
  store i64 %getitem_178153, i64* @current_answer_ptr, align 4
  %error_call_return_val160 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_80:                                 ; preds = %it_is_tuple_80
  %untagged_tuple_addr163 = sub i64 %getitem_178153, 1
  %tuple_ptr164 = inttoptr i64 %untagged_tuple_addr163 to i64*
  %num_elements_ptr165 = getelementptr i64, i64* %tuple_ptr164, i64 0
  %num_elements166 = load i64, i64* %num_elements_ptr165, align 4
  %index_is_less_than_n167 = icmp slt i64 2, %num_elements166
  br i1 %index_is_less_than_n167, label %index_is_less_tha_n_80, label %call_error_func168

call_error_func161:                               ; preds = %it_is_tuple_80
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val162 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_80:                           ; preds = %it_is_integer_80
  br i1 true, label %index_is_not_negative_80, label %call_error_func170

call_error_func168:                               ; preds = %it_is_integer_80
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val169 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_80:                         ; preds = %index_is_less_tha_n_80
  %index_element_ptr172 = getelementptr i64, i64* %tuple_ptr164, i64 2
  %accessed_element173 = load i64, i64* %index_element_ptr172, align 4
  br label %let_24

call_error_func170:                               ; preds = %index_is_less_tha_n_80
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val171 = call i64 @error_func(i64 7)
  unreachable

let_24:                                           ; preds = %index_is_not_negative_80
  %a3_175 = alloca i64, align 8
  store i64 %accessed_element173, i64* %a3_175, align 4
  br label %construct_tuple_77

construct_tuple_77:                               ; preds = %let_24
  %a2_168174 = load i64, i64* %a2_168, align 4
  %a3_175175 = load i64, i64* %a3_175, align 4
  %malloccall176 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_77 = bitcast i8* %malloccall176 to { i64, i64, i64 }*
  %42 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_77, i32 0, i32 0
  %43 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_77, i32 0, i32 1
  %44 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_77, i32 0, i32 2
  store i64 4, i64* %42, align 4
  store i64 %a2_168174, i64* %43, align 4
  store i64 %a3_175175, i64* %44, align 4
  %tuple_addr_77 = ptrtoint { i64, i64, i64 }* %tuple_ptr_77 to i64
  %tuple_tagged_tuple_addr_word_77 = add i64 %tuple_addr_77, 1
  br label %let_25

let_25:                                           ; preds = %construct_tuple_77
  %tuple_186 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_77, i64* %tuple_186, align 4
  br label %construct_tuple_74

construct_tuple_74:                               ; preds = %let_25
  %a1_163177 = load i64, i64* %a1_163, align 4
  %tuple_186178 = load i64, i64* %tuple_186, align 4
  %malloccall179 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_74 = bitcast i8* %malloccall179 to { i64, i64, i64 }*
  %45 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_74, i32 0, i32 0
  %46 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_74, i32 0, i32 1
  %47 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_74, i32 0, i32 2
  store i64 4, i64* %45, align 4
  store i64 %a1_163177, i64* %46, align 4
  store i64 %tuple_186178, i64* %47, align 4
  %tuple_addr_74 = ptrtoint { i64, i64, i64 }* %tuple_ptr_74 to i64
  %tuple_tagged_tuple_addr_word_74 = add i64 %tuple_addr_74, 1
  br label %get_item_71

get_item_71:                                      ; preds = %construct_tuple_74
  %t1_132180 = load i64, i64* %t1_132, align 4
  %is_not_nil181 = icmp ne i64 %t1_132180, 1
  br i1 %is_not_nil181, label %it_not_nil_71, label %call_error_func182

it_not_nil_71:                                    ; preds = %get_item_71
  %tag_bits_of_tup_val184 = and i64 %t1_132180, 7
  %is_tup_val_tuple185 = icmp eq i64 %tag_bits_of_tup_val184, 1
  br i1 %is_tup_val_tuple185, label %it_is_tuple_71, label %call_error_func186

call_error_func182:                               ; preds = %get_item_71
  store i64 %t1_132180, i64* @current_answer_ptr, align 4
  %error_call_return_val183 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_71:                                   ; preds = %it_not_nil_71
  br i1 true, label %it_is_integer_71, label %call_error_func188

call_error_func186:                               ; preds = %it_not_nil_71
  store i64 %t1_132180, i64* @current_answer_ptr, align 4
  %error_call_return_val187 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_71:                                 ; preds = %it_is_tuple_71
  %untagged_tuple_addr190 = sub i64 %t1_132180, 1
  %tuple_ptr191 = inttoptr i64 %untagged_tuple_addr190 to i64*
  %num_elements_ptr192 = getelementptr i64, i64* %tuple_ptr191, i64 0
  %num_elements193 = load i64, i64* %num_elements_ptr192, align 4
  %index_is_less_than_n194 = icmp slt i64 0, %num_elements193
  br i1 %index_is_less_than_n194, label %index_is_less_tha_n_71, label %call_error_func195

call_error_func188:                               ; preds = %it_is_tuple_71
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val189 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_71:                           ; preds = %it_is_integer_71
  br i1 true, label %index_is_not_negative_71, label %call_error_func197

call_error_func195:                               ; preds = %it_is_integer_71
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val196 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_71:                         ; preds = %index_is_less_tha_n_71
  %index_element_ptr199 = getelementptr i64, i64* %tuple_ptr191, i64 1
  %accessed_element200 = load i64, i64* %index_element_ptr199, align 4
  br label %let_27

call_error_func197:                               ; preds = %index_is_less_tha_n_71
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val198 = call i64 @error_func(i64 7)
  unreachable

let_27:                                           ; preds = %index_is_not_negative_71
  %getitem_193 = alloca i64, align 8
  store i64 %accessed_element200, i64* %getitem_193, align 4
  br label %function_call201

function_call201:                                 ; preds = %let_27
  %print_4202 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call203 = and i64 %print_4202, 7
  %is_closure_of_func_to_call_closure204 = icmp eq i64 %tag_bits_of_closure_of_func_to_call203, 5
  br i1 %is_closure_of_func_to_call_closure204, label %is_closure_68, label %call_error_func205

is_closure_68:                                    ; preds = %function_call201
  %untagged_closure_addr207 = sub i64 %print_4202, 5
  %closure_ptr208 = inttoptr i64 %untagged_closure_addr207 to i64*
  %function_code_ptr_as_i64209 = load i64, i64* %closure_ptr208, align 4
  %function210 = inttoptr i64 %function_code_ptr_as_i64209 to i64 (i64, i64)*
  %arity_ptr211 = getelementptr i64, i64* %closure_ptr208, i64 1
  %arity212 = load i64, i64* %arity_ptr211, align 4
  %48 = icmp eq i64 %arity212, 2
  br i1 %48, label %is_correct_arity_68, label %call_error_func213

call_error_func205:                               ; preds = %function_call201
  store i64 %print_4202, i64* @current_answer_ptr, align 4
  %error_call_return_val206 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_68:                              ; preds = %is_closure_68
  %getitem_193215 = load i64, i64* %getitem_193, align 4
  %lambda_non_tail_call_result216 = call i64 %function210(i64 %print_4202, i64 %getitem_193215)
  br label %get_item_65

call_error_func213:                               ; preds = %is_closure_68
  store i64 %arity212, i64* @current_answer_ptr, align 4
  %error_call_return_val214 = call i64 @error_func(i64 17)
  unreachable

get_item_65:                                      ; preds = %is_correct_arity_68
  %t1_132217 = load i64, i64* %t1_132, align 4
  %is_not_nil218 = icmp ne i64 %t1_132217, 1
  br i1 %is_not_nil218, label %it_not_nil_65, label %call_error_func219

it_not_nil_65:                                    ; preds = %get_item_65
  %tag_bits_of_tup_val221 = and i64 %t1_132217, 7
  %is_tup_val_tuple222 = icmp eq i64 %tag_bits_of_tup_val221, 1
  br i1 %is_tup_val_tuple222, label %it_is_tuple_65, label %call_error_func223

call_error_func219:                               ; preds = %get_item_65
  store i64 %t1_132217, i64* @current_answer_ptr, align 4
  %error_call_return_val220 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_65:                                   ; preds = %it_not_nil_65
  br i1 true, label %it_is_integer_65, label %call_error_func225

call_error_func223:                               ; preds = %it_not_nil_65
  store i64 %t1_132217, i64* @current_answer_ptr, align 4
  %error_call_return_val224 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_65:                                 ; preds = %it_is_tuple_65
  %untagged_tuple_addr227 = sub i64 %t1_132217, 1
  %tuple_ptr228 = inttoptr i64 %untagged_tuple_addr227 to i64*
  %num_elements_ptr229 = getelementptr i64, i64* %tuple_ptr228, i64 0
  %num_elements230 = load i64, i64* %num_elements_ptr229, align 4
  %index_is_less_than_n231 = icmp slt i64 2, %num_elements230
  br i1 %index_is_less_than_n231, label %index_is_less_tha_n_65, label %call_error_func232

call_error_func225:                               ; preds = %it_is_tuple_65
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val226 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_65:                           ; preds = %it_is_integer_65
  br i1 true, label %index_is_not_negative_65, label %call_error_func234

call_error_func232:                               ; preds = %it_is_integer_65
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val233 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_65:                         ; preds = %index_is_less_tha_n_65
  %index_element_ptr236 = getelementptr i64, i64* %tuple_ptr228, i64 2
  %accessed_element237 = load i64, i64* %index_element_ptr236, align 4
  br label %let_29

call_error_func234:                               ; preds = %index_is_less_tha_n_65
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val235 = call i64 @error_func(i64 7)
  unreachable

let_29:                                           ; preds = %index_is_not_negative_65
  %getitem_201 = alloca i64, align 8
  store i64 %accessed_element237, i64* %getitem_201, align 4
  br label %function_call238

function_call238:                                 ; preds = %let_29
  %print_4239 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call240 = and i64 %print_4239, 7
  %is_closure_of_func_to_call_closure241 = icmp eq i64 %tag_bits_of_closure_of_func_to_call240, 5
  br i1 %is_closure_of_func_to_call_closure241, label %is_closure_62, label %call_error_func242

is_closure_62:                                    ; preds = %function_call238
  %untagged_closure_addr244 = sub i64 %print_4239, 5
  %closure_ptr245 = inttoptr i64 %untagged_closure_addr244 to i64*
  %function_code_ptr_as_i64246 = load i64, i64* %closure_ptr245, align 4
  %function247 = inttoptr i64 %function_code_ptr_as_i64246 to i64 (i64, i64)*
  %arity_ptr248 = getelementptr i64, i64* %closure_ptr245, i64 1
  %arity249 = load i64, i64* %arity_ptr248, align 4
  %49 = icmp eq i64 %arity249, 2
  br i1 %49, label %is_correct_arity_62, label %call_error_func250

call_error_func242:                               ; preds = %function_call238
  store i64 %print_4239, i64* @current_answer_ptr, align 4
  %error_call_return_val243 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_62:                              ; preds = %is_closure_62
  %getitem_201252 = load i64, i64* %getitem_201, align 4
  %lambda_non_tail_call_result253 = call i64 %function247(i64 %print_4239, i64 %getitem_201252)
  br label %get_item_59

call_error_func250:                               ; preds = %is_closure_62
  store i64 %arity249, i64* @current_answer_ptr, align 4
  %error_call_return_val251 = call i64 @error_func(i64 17)
  unreachable

get_item_59:                                      ; preds = %is_correct_arity_62
  %t1_132254 = load i64, i64* %t1_132, align 4
  %is_not_nil255 = icmp ne i64 %t1_132254, 1
  br i1 %is_not_nil255, label %it_not_nil_59, label %call_error_func256

it_not_nil_59:                                    ; preds = %get_item_59
  %tag_bits_of_tup_val258 = and i64 %t1_132254, 7
  %is_tup_val_tuple259 = icmp eq i64 %tag_bits_of_tup_val258, 1
  br i1 %is_tup_val_tuple259, label %it_is_tuple_59, label %call_error_func260

call_error_func256:                               ; preds = %get_item_59
  store i64 %t1_132254, i64* @current_answer_ptr, align 4
  %error_call_return_val257 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_59:                                   ; preds = %it_not_nil_59
  br i1 true, label %it_is_integer_59, label %call_error_func262

call_error_func260:                               ; preds = %it_not_nil_59
  store i64 %t1_132254, i64* @current_answer_ptr, align 4
  %error_call_return_val261 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_59:                                 ; preds = %it_is_tuple_59
  %untagged_tuple_addr264 = sub i64 %t1_132254, 1
  %tuple_ptr265 = inttoptr i64 %untagged_tuple_addr264 to i64*
  %num_elements_ptr266 = getelementptr i64, i64* %tuple_ptr265, i64 0
  %num_elements267 = load i64, i64* %num_elements_ptr266, align 4
  %index_is_less_than_n268 = icmp slt i64 4, %num_elements267
  br i1 %index_is_less_than_n268, label %index_is_less_tha_n_59, label %call_error_func269

call_error_func262:                               ; preds = %it_is_tuple_59
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val263 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_59:                           ; preds = %it_is_integer_59
  br i1 true, label %index_is_not_negative_59, label %call_error_func271

call_error_func269:                               ; preds = %it_is_integer_59
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val270 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_59:                         ; preds = %index_is_less_tha_n_59
  %index_element_ptr273 = getelementptr i64, i64* %tuple_ptr265, i64 3
  %accessed_element274 = load i64, i64* %index_element_ptr273, align 4
  br label %let_31

call_error_func271:                               ; preds = %index_is_less_tha_n_59
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val272 = call i64 @error_func(i64 7)
  unreachable

let_31:                                           ; preds = %index_is_not_negative_59
  %getitem_209 = alloca i64, align 8
  store i64 %accessed_element274, i64* %getitem_209, align 4
  br label %function_call275

function_call275:                                 ; preds = %let_31
  %print_4276 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call277 = and i64 %print_4276, 7
  %is_closure_of_func_to_call_closure278 = icmp eq i64 %tag_bits_of_closure_of_func_to_call277, 5
  br i1 %is_closure_of_func_to_call_closure278, label %is_closure_56, label %call_error_func279

is_closure_56:                                    ; preds = %function_call275
  %untagged_closure_addr281 = sub i64 %print_4276, 5
  %closure_ptr282 = inttoptr i64 %untagged_closure_addr281 to i64*
  %function_code_ptr_as_i64283 = load i64, i64* %closure_ptr282, align 4
  %function284 = inttoptr i64 %function_code_ptr_as_i64283 to i64 (i64, i64)*
  %arity_ptr285 = getelementptr i64, i64* %closure_ptr282, i64 1
  %arity286 = load i64, i64* %arity_ptr285, align 4
  %50 = icmp eq i64 %arity286, 2
  br i1 %50, label %is_correct_arity_56, label %call_error_func287

call_error_func279:                               ; preds = %function_call275
  store i64 %print_4276, i64* @current_answer_ptr, align 4
  %error_call_return_val280 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_56:                              ; preds = %is_closure_56
  %getitem_209289 = load i64, i64* %getitem_209, align 4
  %lambda_non_tail_call_result290 = call i64 %function284(i64 %print_4276, i64 %getitem_209289)
  br label %get_item_53

call_error_func287:                               ; preds = %is_closure_56
  store i64 %arity286, i64* @current_answer_ptr, align 4
  %error_call_return_val288 = call i64 @error_func(i64 17)
  unreachable

get_item_53:                                      ; preds = %is_correct_arity_56
  %t1_132291 = load i64, i64* %t1_132, align 4
  %is_not_nil292 = icmp ne i64 %t1_132291, 1
  br i1 %is_not_nil292, label %it_not_nil_53, label %call_error_func293

it_not_nil_53:                                    ; preds = %get_item_53
  %tag_bits_of_tup_val295 = and i64 %t1_132291, 7
  %is_tup_val_tuple296 = icmp eq i64 %tag_bits_of_tup_val295, 1
  br i1 %is_tup_val_tuple296, label %it_is_tuple_53, label %call_error_func297

call_error_func293:                               ; preds = %get_item_53
  store i64 %t1_132291, i64* @current_answer_ptr, align 4
  %error_call_return_val294 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_53:                                   ; preds = %it_not_nil_53
  br i1 true, label %it_is_integer_53, label %call_error_func299

call_error_func297:                               ; preds = %it_not_nil_53
  store i64 %t1_132291, i64* @current_answer_ptr, align 4
  %error_call_return_val298 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_53:                                 ; preds = %it_is_tuple_53
  %untagged_tuple_addr301 = sub i64 %t1_132291, 1
  %tuple_ptr302 = inttoptr i64 %untagged_tuple_addr301 to i64*
  %num_elements_ptr303 = getelementptr i64, i64* %tuple_ptr302, i64 0
  %num_elements304 = load i64, i64* %num_elements_ptr303, align 4
  %index_is_less_than_n305 = icmp slt i64 4, %num_elements304
  br i1 %index_is_less_than_n305, label %index_is_less_tha_n_53, label %call_error_func306

call_error_func299:                               ; preds = %it_is_tuple_53
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val300 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_53:                           ; preds = %it_is_integer_53
  br i1 true, label %index_is_not_negative_53, label %call_error_func308

call_error_func306:                               ; preds = %it_is_integer_53
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val307 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_53:                         ; preds = %index_is_less_tha_n_53
  %index_element_ptr310 = getelementptr i64, i64* %tuple_ptr302, i64 3
  %accessed_element311 = load i64, i64* %index_element_ptr310, align 4
  br label %let_33

call_error_func308:                               ; preds = %index_is_less_tha_n_53
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val309 = call i64 @error_func(i64 7)
  unreachable

let_33:                                           ; preds = %index_is_not_negative_53
  %getitem_219 = alloca i64, align 8
  store i64 %accessed_element311, i64* %getitem_219, align 4
  br label %get_item_50

get_item_50:                                      ; preds = %let_33
  %getitem_219312 = load i64, i64* %getitem_219, align 4
  %is_not_nil313 = icmp ne i64 %getitem_219312, 1
  br i1 %is_not_nil313, label %it_not_nil_50, label %call_error_func314

it_not_nil_50:                                    ; preds = %get_item_50
  %tag_bits_of_tup_val316 = and i64 %getitem_219312, 7
  %is_tup_val_tuple317 = icmp eq i64 %tag_bits_of_tup_val316, 1
  br i1 %is_tup_val_tuple317, label %it_is_tuple_50, label %call_error_func318

call_error_func314:                               ; preds = %get_item_50
  store i64 %getitem_219312, i64* @current_answer_ptr, align 4
  %error_call_return_val315 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_50:                                   ; preds = %it_not_nil_50
  br i1 true, label %it_is_integer_50, label %call_error_func320

call_error_func318:                               ; preds = %it_not_nil_50
  store i64 %getitem_219312, i64* @current_answer_ptr, align 4
  %error_call_return_val319 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_50:                                 ; preds = %it_is_tuple_50
  %untagged_tuple_addr322 = sub i64 %getitem_219312, 1
  %tuple_ptr323 = inttoptr i64 %untagged_tuple_addr322 to i64*
  %num_elements_ptr324 = getelementptr i64, i64* %tuple_ptr323, i64 0
  %num_elements325 = load i64, i64* %num_elements_ptr324, align 4
  %index_is_less_than_n326 = icmp slt i64 0, %num_elements325
  br i1 %index_is_less_than_n326, label %index_is_less_tha_n_50, label %call_error_func327

call_error_func320:                               ; preds = %it_is_tuple_50
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val321 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_50:                           ; preds = %it_is_integer_50
  br i1 true, label %index_is_not_negative_50, label %call_error_func329

call_error_func327:                               ; preds = %it_is_integer_50
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val328 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_50:                         ; preds = %index_is_less_tha_n_50
  %index_element_ptr331 = getelementptr i64, i64* %tuple_ptr323, i64 1
  %accessed_element332 = load i64, i64* %index_element_ptr331, align 4
  br label %let_34

call_error_func329:                               ; preds = %index_is_less_tha_n_50
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val330 = call i64 @error_func(i64 7)
  unreachable

let_34:                                           ; preds = %index_is_not_negative_50
  %getitem_217 = alloca i64, align 8
  store i64 %accessed_element332, i64* %getitem_217, align 4
  br label %function_call333

function_call333:                                 ; preds = %let_34
  %print_4334 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call335 = and i64 %print_4334, 7
  %is_closure_of_func_to_call_closure336 = icmp eq i64 %tag_bits_of_closure_of_func_to_call335, 5
  br i1 %is_closure_of_func_to_call_closure336, label %is_closure_47, label %call_error_func337

is_closure_47:                                    ; preds = %function_call333
  %untagged_closure_addr339 = sub i64 %print_4334, 5
  %closure_ptr340 = inttoptr i64 %untagged_closure_addr339 to i64*
  %function_code_ptr_as_i64341 = load i64, i64* %closure_ptr340, align 4
  %function342 = inttoptr i64 %function_code_ptr_as_i64341 to i64 (i64, i64)*
  %arity_ptr343 = getelementptr i64, i64* %closure_ptr340, i64 1
  %arity344 = load i64, i64* %arity_ptr343, align 4
  %51 = icmp eq i64 %arity344, 2
  br i1 %51, label %is_correct_arity_47, label %call_error_func345

call_error_func337:                               ; preds = %function_call333
  store i64 %print_4334, i64* @current_answer_ptr, align 4
  %error_call_return_val338 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_47:                              ; preds = %is_closure_47
  %getitem_217347 = load i64, i64* %getitem_217, align 4
  %lambda_non_tail_call_result348 = call i64 %function342(i64 %print_4334, i64 %getitem_217347)
  br label %get_item_44

call_error_func345:                               ; preds = %is_closure_47
  store i64 %arity344, i64* @current_answer_ptr, align 4
  %error_call_return_val346 = call i64 @error_func(i64 17)
  unreachable

get_item_44:                                      ; preds = %is_correct_arity_47
  %t1_132349 = load i64, i64* %t1_132, align 4
  %is_not_nil350 = icmp ne i64 %t1_132349, 1
  br i1 %is_not_nil350, label %it_not_nil_44, label %call_error_func351

it_not_nil_44:                                    ; preds = %get_item_44
  %tag_bits_of_tup_val353 = and i64 %t1_132349, 7
  %is_tup_val_tuple354 = icmp eq i64 %tag_bits_of_tup_val353, 1
  br i1 %is_tup_val_tuple354, label %it_is_tuple_44, label %call_error_func355

call_error_func351:                               ; preds = %get_item_44
  store i64 %t1_132349, i64* @current_answer_ptr, align 4
  %error_call_return_val352 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_44:                                   ; preds = %it_not_nil_44
  br i1 true, label %it_is_integer_44, label %call_error_func357

call_error_func355:                               ; preds = %it_not_nil_44
  store i64 %t1_132349, i64* @current_answer_ptr, align 4
  %error_call_return_val356 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_44:                                 ; preds = %it_is_tuple_44
  %untagged_tuple_addr359 = sub i64 %t1_132349, 1
  %tuple_ptr360 = inttoptr i64 %untagged_tuple_addr359 to i64*
  %num_elements_ptr361 = getelementptr i64, i64* %tuple_ptr360, i64 0
  %num_elements362 = load i64, i64* %num_elements_ptr361, align 4
  %index_is_less_than_n363 = icmp slt i64 4, %num_elements362
  br i1 %index_is_less_than_n363, label %index_is_less_tha_n_44, label %call_error_func364

call_error_func357:                               ; preds = %it_is_tuple_44
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val358 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_44:                           ; preds = %it_is_integer_44
  br i1 true, label %index_is_not_negative_44, label %call_error_func366

call_error_func364:                               ; preds = %it_is_integer_44
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val365 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_44:                         ; preds = %index_is_less_tha_n_44
  %index_element_ptr368 = getelementptr i64, i64* %tuple_ptr360, i64 3
  %accessed_element369 = load i64, i64* %index_element_ptr368, align 4
  br label %let_36

call_error_func366:                               ; preds = %index_is_less_tha_n_44
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val367 = call i64 @error_func(i64 7)
  unreachable

let_36:                                           ; preds = %index_is_not_negative_44
  %getitem_226 = alloca i64, align 8
  store i64 %accessed_element369, i64* %getitem_226, align 4
  br label %get_item_41

get_item_41:                                      ; preds = %let_36
  %getitem_226370 = load i64, i64* %getitem_226, align 4
  %is_not_nil371 = icmp ne i64 %getitem_226370, 1
  br i1 %is_not_nil371, label %it_not_nil_41, label %call_error_func372

it_not_nil_41:                                    ; preds = %get_item_41
  %tag_bits_of_tup_val374 = and i64 %getitem_226370, 7
  %is_tup_val_tuple375 = icmp eq i64 %tag_bits_of_tup_val374, 1
  br i1 %is_tup_val_tuple375, label %it_is_tuple_41, label %call_error_func376

call_error_func372:                               ; preds = %get_item_41
  store i64 %getitem_226370, i64* @current_answer_ptr, align 4
  %error_call_return_val373 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_41:                                   ; preds = %it_not_nil_41
  br i1 true, label %it_is_integer_41, label %call_error_func378

call_error_func376:                               ; preds = %it_not_nil_41
  store i64 %getitem_226370, i64* @current_answer_ptr, align 4
  %error_call_return_val377 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_41:                                 ; preds = %it_is_tuple_41
  %untagged_tuple_addr380 = sub i64 %getitem_226370, 1
  %tuple_ptr381 = inttoptr i64 %untagged_tuple_addr380 to i64*
  %num_elements_ptr382 = getelementptr i64, i64* %tuple_ptr381, i64 0
  %num_elements383 = load i64, i64* %num_elements_ptr382, align 4
  %index_is_less_than_n384 = icmp slt i64 2, %num_elements383
  br i1 %index_is_less_than_n384, label %index_is_less_tha_n_41, label %call_error_func385

call_error_func378:                               ; preds = %it_is_tuple_41
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val379 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_41:                           ; preds = %it_is_integer_41
  br i1 true, label %index_is_not_negative_41, label %call_error_func387

call_error_func385:                               ; preds = %it_is_integer_41
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val386 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_41:                         ; preds = %index_is_less_tha_n_41
  %index_element_ptr389 = getelementptr i64, i64* %tuple_ptr381, i64 2
  %accessed_element390 = load i64, i64* %index_element_ptr389, align 4
  br label %let_37

call_error_func387:                               ; preds = %index_is_less_tha_n_41
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val388 = call i64 @error_func(i64 7)
  unreachable

let_37:                                           ; preds = %index_is_not_negative_41
  %getitem_224 = alloca i64, align 8
  store i64 %accessed_element390, i64* %getitem_224, align 4
  br label %function_call391

function_call391:                                 ; preds = %let_37
  %print_4392 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call393 = and i64 %print_4392, 7
  %is_closure_of_func_to_call_closure394 = icmp eq i64 %tag_bits_of_closure_of_func_to_call393, 5
  br i1 %is_closure_of_func_to_call_closure394, label %is_closure_38, label %call_error_func395

is_closure_38:                                    ; preds = %function_call391
  %untagged_closure_addr397 = sub i64 %print_4392, 5
  %closure_ptr398 = inttoptr i64 %untagged_closure_addr397 to i64*
  %function_code_ptr_as_i64399 = load i64, i64* %closure_ptr398, align 4
  %function400 = inttoptr i64 %function_code_ptr_as_i64399 to i64 (i64, i64)*
  %arity_ptr401 = getelementptr i64, i64* %closure_ptr398, i64 1
  %arity402 = load i64, i64* %arity_ptr401, align 4
  %52 = icmp eq i64 %arity402, 2
  br i1 %52, label %is_correct_arity_38, label %call_error_func403

call_error_func395:                               ; preds = %function_call391
  store i64 %print_4392, i64* @current_answer_ptr, align 4
  %error_call_return_val396 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_38:                              ; preds = %is_closure_38
  %getitem_224405 = load i64, i64* %getitem_224, align 4
  %lambda_tail_call_result = tail call i64 %function400(i64 %print_4392, i64 %getitem_224405)
  br label %result406

call_error_func403:                               ; preds = %is_closure_38
  store i64 %arity402, i64* @current_answer_ptr, align 4
  %error_call_return_val404 = call i64 @error_func(i64 17)
  unreachable

result406:                                        ; preds = %is_correct_arity_38
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

define i64 @lambda_221_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_222

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_222 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_218_(i64 %0) {
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
  ret i64 %input_tail_call_result_219

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_219 = tail call i64 @input()
  br label %return
}

define i64 @lambda_213_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_214

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_214 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_158_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_210

return:                                           ; preds = %merge_then_else_166
  ret i64 %"if/else_snake_result_166"

get_item_210:                                     ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_210, label %call_error_func

it_not_nil_210:                                   ; preds = %get_item_210
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_210, label %call_error_func1

call_error_func:                                  ; preds = %get_item_210
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_210:                                  ; preds = %it_not_nil_210
  br i1 true, label %it_is_integer_210, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_210
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_210:                                ; preds = %it_is_tuple_210
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_210, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_210
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_210:                          ; preds = %it_is_integer_210
  br i1 true, label %index_is_not_negative_210, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_210
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_210:                        ; preds = %index_is_less_tha_n_210
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_159

call_error_func7:                                 ; preds = %index_is_less_tha_n_210
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_159:                                          ; preds = %index_is_not_negative_210
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_207

get_item_207:                                     ; preds = %let_159
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_207, label %call_error_func10

it_not_nil_207:                                   ; preds = %get_item_207
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_207, label %call_error_func14

call_error_func10:                                ; preds = %get_item_207
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_207:                                  ; preds = %it_not_nil_207
  br i1 true, label %it_is_integer_207, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_207
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_207:                                ; preds = %it_is_tuple_207
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_207, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_207
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_207:                          ; preds = %it_is_integer_207
  br i1 true, label %index_is_not_negative_207, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_207
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_207:                        ; preds = %index_is_less_tha_n_207
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_160

call_error_func25:                                ; preds = %index_is_less_tha_n_207
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_160:                                          ; preds = %index_is_not_negative_207
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_204

get_item_204:                                     ; preds = %let_160
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_204, label %call_error_func31

it_not_nil_204:                                   ; preds = %get_item_204
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_204, label %call_error_func35

call_error_func31:                                ; preds = %get_item_204
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_204:                                  ; preds = %it_not_nil_204
  br i1 true, label %it_is_integer_204, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_204
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_204:                                ; preds = %it_is_tuple_204
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_204, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_204
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_204:                          ; preds = %it_is_integer_204
  br i1 true, label %index_is_not_negative_204, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_204
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_204:                        ; preds = %index_is_less_tha_n_204
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_161

call_error_func46:                                ; preds = %index_is_less_tha_n_204
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_161:                                          ; preds = %index_is_not_negative_204
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_201

get_item_201:                                     ; preds = %let_161
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_201, label %call_error_func51

it_not_nil_201:                                   ; preds = %get_item_201
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_201, label %call_error_func55

call_error_func51:                                ; preds = %get_item_201
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_201:                                  ; preds = %it_not_nil_201
  br i1 true, label %it_is_integer_201, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_201
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_201:                                ; preds = %it_is_tuple_201
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_201, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_201
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_201:                          ; preds = %it_is_integer_201
  br i1 true, label %index_is_not_negative_201, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_201
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_201:                        ; preds = %index_is_less_tha_n_201
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_162

call_error_func66:                                ; preds = %index_is_less_tha_n_201
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_162:                                          ; preds = %index_is_not_negative_201
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_198

get_item_198:                                     ; preds = %let_162
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_198, label %call_error_func72

it_not_nil_198:                                   ; preds = %get_item_198
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_198, label %call_error_func76

call_error_func72:                                ; preds = %get_item_198
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_198:                                  ; preds = %it_not_nil_198
  br i1 true, label %it_is_integer_198, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_198
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_198:                                ; preds = %it_is_tuple_198
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_198, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_198
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_198:                          ; preds = %it_is_integer_198
  br i1 true, label %index_is_not_negative_198, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_198
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_198:                        ; preds = %index_is_less_tha_n_198
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_163

call_error_func87:                                ; preds = %index_is_less_tha_n_198
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_163:                                          ; preds = %index_is_not_negative_198
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_195

get_item_195:                                     ; preds = %let_163
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_195, label %call_error_func92

it_not_nil_195:                                   ; preds = %get_item_195
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_195, label %call_error_func96

call_error_func92:                                ; preds = %get_item_195
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_195:                                  ; preds = %it_not_nil_195
  br i1 true, label %it_is_integer_195, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_195
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_195:                                ; preds = %it_is_tuple_195
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_195, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_195
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_195:                          ; preds = %it_is_integer_195
  br i1 true, label %index_is_not_negative_195, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_195
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_195:                        ; preds = %index_is_less_tha_n_195
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_164

call_error_func107:                               ; preds = %index_is_less_tha_n_195
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_164:                                          ; preds = %index_is_not_negative_195
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %greater_eq_192

greater_eq_192:                                   ; preds = %let_164
  %x5_49111 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1 = and i64 %x5_49111, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_192, label %call_error_func112

arg1_type_check_passed_192:                       ; preds = %greater_eq_192
  br i1 true, label %arg2_type_check_passed_192, label %call_error_func114

call_error_func112:                               ; preds = %greater_eq_192
  store i64 %x5_49111, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_192:                       ; preds = %arg1_type_check_passed_192
  %greater_eq_llvm_result_192 = icmp sge i64 %x5_49111, 20
  br i1 %greater_eq_llvm_result_192, label %comp_is_true_192, label %comp_is_false_192

call_error_func114:                               ; preds = %arg1_type_check_passed_192
  store i64 20, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_192:                                 ; preds = %arg2_type_check_passed_192
  br label %merge_192

comp_is_false_192:                                ; preds = %arg2_type_check_passed_192
  br label %merge_192

merge_192:                                        ; preds = %comp_is_false_192, %comp_is_true_192
  %greater_eq_snake_result_192 = phi i64 [ -1, %comp_is_true_192 ], [ 9223372036854775807, %comp_is_false_192 ]
  br label %let_165

let_165:                                          ; preds = %merge_192
  %binop_54 = alloca i64, align 8
  store i64 %greater_eq_snake_result_192, i64* %binop_54, align 4
  br label %if_else_166

if_else_166:                                      ; preds = %let_165
  %binop_54116 = load i64, i64* %binop_54, align 4
  %tag_bits_of_cond_val = and i64 %binop_54116, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_166, label %call_error_func117

continue_if_else_166:                             ; preds = %if_else_166
  %is_cond_true = icmp eq i64 %binop_54116, -1
  br i1 %is_cond_true, label %then_166, label %else_166

call_error_func117:                               ; preds = %if_else_166
  store i64 %binop_54116, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 4)
  unreachable

then_166:                                         ; preds = %continue_if_else_166
  br label %construct_tuple_188

else_166:                                         ; preds = %continue_if_else_166
  br label %construct_tuple_181

merge_then_else_166:                              ; preds = %is_correct_arity_170, %construct_tuple_185
  %"if/else_snake_result_166" = phi i64 [ %tuple_tagged_tuple_addr_word_185, %construct_tuple_185 ], [ %lambda_tail_call_result, %is_correct_arity_170 ]
  br label %return

construct_tuple_188:                              ; preds = %then_166
  %x3_35119 = load i64, i64* %x3_35, align 4
  %x4_42120 = load i64, i64* %x4_42, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_188 = bitcast i8* %malloccall to { i64, i64, i64 }*
  %3 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_188, i32 0, i32 0
  %4 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_188, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_188, i32 0, i32 2
  store i64 4, i64* %3, align 4
  store i64 %x3_35119, i64* %4, align 4
  store i64 %x4_42120, i64* %5, align 4
  %tuple_addr_188 = ptrtoint { i64, i64, i64 }* %tuple_ptr_188 to i64
  %tuple_tagged_tuple_addr_word_188 = add i64 %tuple_addr_188, 1
  br label %let_184

let_184:                                          ; preds = %construct_tuple_188
  %tuple_59 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_188, i64* %tuple_59, align 4
  br label %construct_tuple_185

construct_tuple_185:                              ; preds = %let_184
  %x2_30121 = load i64, i64* %x2_30, align 4
  %tuple_59122 = load i64, i64* %tuple_59, align 4
  %malloccall123 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_185 = bitcast i8* %malloccall123 to { i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_185, i32 0, i32 0
  %7 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_185, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_185, i32 0, i32 2
  store i64 4, i64* %6, align 4
  store i64 %x2_30121, i64* %7, align 4
  store i64 %tuple_59122, i64* %8, align 4
  %tuple_addr_185 = ptrtoint { i64, i64, i64 }* %tuple_ptr_185 to i64
  %tuple_tagged_tuple_addr_word_185 = add i64 %tuple_addr_185, 1
  br label %merge_then_else_166

construct_tuple_181:                              ; preds = %else_166
  %x3_35124 = load i64, i64* %x3_35, align 4
  %x4_42125 = load i64, i64* %x4_42, align 4
  %malloccall126 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_181 = bitcast i8* %malloccall126 to { i64, i64, i64 }*
  %9 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_181, i32 0, i32 0
  %10 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_181, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_181, i32 0, i32 2
  store i64 4, i64* %9, align 4
  store i64 %x3_35124, i64* %10, align 4
  store i64 %x4_42125, i64* %11, align 4
  %tuple_addr_181 = ptrtoint { i64, i64, i64 }* %tuple_ptr_181 to i64
  %tuple_tagged_tuple_addr_word_181 = add i64 %tuple_addr_181, 1
  br label %let_167

let_167:                                          ; preds = %construct_tuple_181
  %tuple_66 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_181, i64* %tuple_66, align 4
  br label %plus_178

plus_178:                                         ; preds = %let_167
  %x5_49127 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1128 = and i64 %x5_49127, 1
  %is_arg1_int129 = icmp eq i64 %tag_bits_of_arg1128, 0
  br i1 %is_arg1_int129, label %arg1_type_check_passed_178, label %call_error_func130

arg1_type_check_passed_178:                       ; preds = %plus_178
  br i1 true, label %arg2_type_check_passed_178, label %call_error_func132

call_error_func130:                               ; preds = %plus_178
  store i64 %x5_49127, i64* @current_answer_ptr, align 4
  %error_call_return_val131 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_178:                       ; preds = %arg1_type_check_passed_178
  %plus_snake_result_178 = add i64 %x5_49127, 2
  %l_ge_0 = icmp sge i64 %x5_49127, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_178, %x5_49127
  %sum_lt_r = icmp slt i64 %plus_snake_result_178, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x5_49127, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_178, %x5_49127
  %sum_gt_r = icmp sgt i64 %plus_snake_result_178, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_178, label %call_error_func134

call_error_func132:                               ; preds = %arg1_type_check_passed_178
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val133 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_178:                         ; preds = %arg2_type_check_passed_178
  %plus_snake_result_178136 = phi i64 [ %plus_snake_result_178, %arg2_type_check_passed_178 ]
  br label %let_168

call_error_func134:                               ; preds = %arg2_type_check_passed_178
  store i64 %plus_snake_result_178, i64* @current_answer_ptr, align 4
  %error_call_return_val135 = call i64 @error_func(i64 5)
  unreachable

let_168:                                          ; preds = %continue_no_overflow_178
  %binop_69 = alloca i64, align 8
  store i64 %plus_snake_result_178136, i64* %binop_69, align 4
  br label %construct_tuple_174

construct_tuple_174:                              ; preds = %let_168
  %x2_30137 = load i64, i64* %x2_30, align 4
  %tuple_66138 = load i64, i64* %tuple_66, align 4
  %binop_69139 = load i64, i64* %binop_69, align 4
  %malloccall140 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_174 = bitcast i8* %malloccall140 to { i64, i64, i64, i64 }*
  %12 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_174, i32 0, i32 0
  %13 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_174, i32 0, i32 1
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_174, i32 0, i32 2
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_174, i32 0, i32 3
  store i64 6, i64* %12, align 4
  store i64 %x2_30137, i64* %13, align 4
  store i64 %tuple_66138, i64* %14, align 4
  store i64 %binop_69139, i64* %15, align 4
  %tuple_addr_174 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_174 to i64
  %tuple_tagged_tuple_addr_word_174 = add i64 %tuple_addr_174, 1
  br label %let_169

let_169:                                          ; preds = %construct_tuple_174
  %tuple_64 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_174, i64* %tuple_64, align 4
  br label %function_call

function_call:                                    ; preds = %let_169
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_170, label %call_error_func141

is_closure_170:                                   ; preds = %function_call
  %untagged_closure_addr143 = sub i64 %f1_26, 5
  %closure_ptr144 = inttoptr i64 %untagged_closure_addr143 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr144, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr144, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %16 = icmp eq i64 %arity, 4
  br i1 %16, label %is_correct_arity_170, label %call_error_func145

call_error_func141:                               ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val142 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_170:                             ; preds = %is_closure_170
  %tuple_64147 = load i64, i64* %tuple_64, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %tuple_64147)
  br label %merge_then_else_166

call_error_func145:                               ; preds = %is_closure_170
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val146 = call i64 @error_func(i64 17)
  unreachable
}

define i64 @lambda_141_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_155

return:                                           ; preds = %merge_then_else_145
  ret i64 %"if/else_snake_result_145"

get_item_155:                                     ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_155, label %call_error_func

it_not_nil_155:                                   ; preds = %get_item_155
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_155, label %call_error_func1

call_error_func:                                  ; preds = %get_item_155
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_155:                                  ; preds = %it_not_nil_155
  br i1 true, label %it_is_integer_155, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_155
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_155:                                ; preds = %it_is_tuple_155
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_155, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_155
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_155:                          ; preds = %it_is_integer_155
  br i1 true, label %index_is_not_negative_155, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_155
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_155:                        ; preds = %index_is_less_tha_n_155
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_142

call_error_func7:                                 ; preds = %index_is_less_tha_n_155
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_142:                                          ; preds = %index_is_not_negative_155
  %y2_81 = alloca i64, align 8
  store i64 %accessed_element, i64* %y2_81, align 4
  br label %get_item_152

get_item_152:                                     ; preds = %let_142
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_152, label %call_error_func10

it_not_nil_152:                                   ; preds = %get_item_152
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_152, label %call_error_func14

call_error_func10:                                ; preds = %get_item_152
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_152:                                  ; preds = %it_not_nil_152
  br i1 true, label %it_is_integer_152, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_152
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_152:                                ; preds = %it_is_tuple_152
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_152, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_152
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_152:                          ; preds = %it_is_integer_152
  br i1 true, label %index_is_not_negative_152, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_152
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_152:                        ; preds = %index_is_less_tha_n_152
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_143

call_error_func25:                                ; preds = %index_is_less_tha_n_152
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_143:                                          ; preds = %index_is_not_negative_152
  %y3_86 = alloca i64, align 8
  store i64 %accessed_element28, i64* %y3_86, align 4
  br label %greater_149

greater_149:                                      ; preds = %let_143
  %y2_8129 = load i64, i64* %y2_81, align 4
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_149, label %call_error_func30

arg1_type_check_passed_149:                       ; preds = %greater_149
  %tag_bits_of_arg2 = and i64 %y2_8129, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_149, label %call_error_func32

call_error_func30:                                ; preds = %greater_149
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_149:                       ; preds = %arg1_type_check_passed_149
  %greater_llvm_result_149 = icmp sgt i64 %1, %y2_8129
  br i1 %greater_llvm_result_149, label %comp_is_true_149, label %comp_is_false_149

call_error_func32:                                ; preds = %arg1_type_check_passed_149
  store i64 %y2_8129, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_149:                                 ; preds = %arg2_type_check_passed_149
  br label %merge_149

comp_is_false_149:                                ; preds = %arg2_type_check_passed_149
  br label %merge_149

merge_149:                                        ; preds = %comp_is_false_149, %comp_is_true_149
  %greater_snake_result_149 = phi i64 [ -1, %comp_is_true_149 ], [ 9223372036854775807, %comp_is_false_149 ]
  br label %let_144

let_144:                                          ; preds = %merge_149
  %binop_91 = alloca i64, align 8
  store i64 %greater_snake_result_149, i64* %binop_91, align 4
  br label %if_else_145

if_else_145:                                      ; preds = %let_144
  %binop_9134 = load i64, i64* %binop_91, align 4
  %tag_bits_of_cond_val = and i64 %binop_9134, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_145, label %call_error_func35

continue_if_else_145:                             ; preds = %if_else_145
  %is_cond_true = icmp eq i64 %binop_9134, -1
  br i1 %is_cond_true, label %then_145, label %else_145

call_error_func35:                                ; preds = %if_else_145
  store i64 %binop_9134, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 4)
  unreachable

then_145:                                         ; preds = %continue_if_else_145
  %y3_8637 = load i64, i64* %y3_86, align 4
  br label %merge_then_else_145

else_145:                                         ; preds = %continue_if_else_145
  br label %merge_then_else_145

merge_then_else_145:                              ; preds = %else_145, %then_145
  %"if/else_snake_result_145" = phi i64 [ %y3_8637, %then_145 ], [ 9223372036854775807, %else_145 ]
  br label %return
}
