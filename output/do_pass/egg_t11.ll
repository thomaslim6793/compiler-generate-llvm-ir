; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_183

create_lambda_closure_183:                        ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_183 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_183, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_183, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_183, i32 0, i32 2
  store i64 (i64, i64)* @lambda_183_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1000, i64* %2, align 4
  %closure_addr_183 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_183 to i64
  %closure_tagged_tuple_addr_word_183 = add i64 %closure_addr_183, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_183
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_183, i64* %print_4, align 4
  br label %create_lambda_closure_180

create_lambda_closure_180:                        ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_180 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_180, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_180, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_180, i32 0, i32 2
  store i64 (i64)* @lambda_180_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1000, i64* %5, align 4
  %closure_addr_180 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_180 to i64
  %closure_tagged_tuple_addr_word_180 = add i64 %closure_addr_180, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_180
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_180, i64* %input_11, align 4
  br label %create_lambda_closure_175

create_lambda_closure_175:                        ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_175 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_175, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_175, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_175, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_175_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1000, i64* %8, align 4
  %closure_addr_175 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_175 to i64
  %closure_tagged_tuple_addr_word_175 = add i64 %closure_addr_175, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_175
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_175, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_120

create_lambda_closure_120:                        ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_120 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_120, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_120, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_120, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_120_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_120 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_120 to i64
  %closure_tagged_tuple_addr_word_120 = add i64 %closure_addr_120, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_120
  store i64 %closure_tagged_tuple_addr_word_120, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_120, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_77 = alloca i64, align 8
  br label %create_lambda_closure_103

create_lambda_closure_103:                        ; preds = %let_rec_5
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_103 = bitcast i8* %malloccall6 to { i64 (i64, i64, i64)*, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_103, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_103, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_103_, i64 (i64, i64, i64)** %13, align 8
  store i64 4, i64* %14, align 4
  %closure_addr_103 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_103 to i64
  %closure_tagged_tuple_addr_word_103 = add i64 %closure_addr_103, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_103
  store i64 %closure_tagged_tuple_addr_word_103, i64* %f2_77, align 4
  br label %construct_tuple_100

construct_tuple_100:                              ; preds = %patch_let_rec_closures_5
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_100 = bitcast i8* %malloccall7 to { i64, i64, i64 }*
  %15 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_100, i32 0, i32 0
  %16 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_100, i32 0, i32 1
  %17 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_100, i32 0, i32 2
  store i64 4, i64* %15, align 4
  store i64 2, i64* %16, align 4
  store i64 2, i64* %17, align 4
  %tuple_addr_100 = ptrtoint { i64, i64, i64 }* %tuple_ptr_100 to i64
  %tuple_tagged_tuple_addr_word_100 = add i64 %tuple_addr_100, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_100
  %tuple_113 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_100, i64* %tuple_113, align 4
  br label %construct_tuple_96

construct_tuple_96:                               ; preds = %let_6
  %tuple_1138 = load i64, i64* %tuple_113, align 4
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_96 = bitcast i8* %malloccall9 to { i64, i64, i64, i64 }*
  %18 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_96, i32 0, i32 0
  %19 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_96, i32 0, i32 1
  %20 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_96, i32 0, i32 2
  %21 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_96, i32 0, i32 3
  store i64 6, i64* %18, align 4
  store i64 2, i64* %19, align 4
  store i64 %tuple_1138, i64* %20, align 4
  store i64 2, i64* %21, align 4
  %tuple_addr_96 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_96 to i64
  %tuple_tagged_tuple_addr_word_96 = add i64 %tuple_addr_96, 1
  br label %let_7

let_7:                                            ; preds = %construct_tuple_96
  %tuple_111 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_96, i64* %tuple_111, align 4
  br label %function_call

function_call:                                    ; preds = %let_7
  %f1_2610 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_2610, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_92, label %call_error_func

is_closure_92:                                    ; preds = %function_call
  %untagged_closure_addr11 = sub i64 %f1_2610, 5
  %closure_ptr12 = inttoptr i64 %untagged_closure_addr11 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr12, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr12, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %22 = icmp eq i64 %arity, 4
  br i1 %22, label %is_correct_arity_92, label %call_error_func13

call_error_func:                                  ; preds = %function_call
  store i64 %f1_2610, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_92:                              ; preds = %is_closure_92
  %tuple_11115 = load i64, i64* %tuple_111, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_2610, i64 2, i64 %tuple_11115)
  br label %let_8

call_error_func13:                                ; preds = %is_closure_92
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val14 = call i64 @error_func(i64 17)
  unreachable

let_8:                                            ; preds = %is_correct_arity_92
  %app_109 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_109, align 4
  br label %let_9

let_9:                                            ; preds = %let_8
  %x_121 = alloca i64, align 8
  store i64 4, i64* %x_121, align 4
  br label %construct_tuple_88

construct_tuple_88:                               ; preds = %let_9
  %x_12116 = load i64, i64* %x_121, align 4
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_88 = bitcast i8* %malloccall17 to { i64, i64, i64 }*
  %23 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_88, i32 0, i32 0
  %24 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_88, i32 0, i32 1
  %25 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_88, i32 0, i32 2
  store i64 4, i64* %23, align 4
  store i64 %x_12116, i64* %24, align 4
  store i64 6, i64* %25, align 4
  %tuple_addr_88 = ptrtoint { i64, i64, i64 }* %tuple_ptr_88 to i64
  %tuple_tagged_tuple_addr_word_88 = add i64 %tuple_addr_88, 1
  br label %let_10

let_10:                                           ; preds = %construct_tuple_88
  %tuple_126 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_88, i64* %tuple_126, align 4
  br label %plus_85

plus_85:                                          ; preds = %let_10
  br i1 true, label %arg1_type_check_passed_85, label %call_error_func18

arg1_type_check_passed_85:                        ; preds = %plus_85
  br i1 true, label %arg2_type_check_passed_85, label %call_error_func20

call_error_func18:                                ; preds = %plus_85
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val19 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_85:                        ; preds = %arg1_type_check_passed_85
  br i1 true, label %continue_no_overflow_85, label %call_error_func22

call_error_func20:                                ; preds = %arg1_type_check_passed_85
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_85:                          ; preds = %arg2_type_check_passed_85
  %plus_snake_result_85 = phi i64 [ 6, %arg2_type_check_passed_85 ]
  br label %let_11

call_error_func22:                                ; preds = %arg2_type_check_passed_85
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val23 = call i64 @error_func(i64 5)
  unreachable

let_11:                                           ; preds = %continue_no_overflow_85
  %b1_100 = alloca i64, align 8
  store i64 %plus_snake_result_85, i64* %b1_100, align 4
  br label %construct_tuple_82

construct_tuple_82:                               ; preds = %let_11
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_82 = bitcast i8* %malloccall24 to { i64, i64, i64 }*
  %26 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_82, i32 0, i32 0
  %27 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_82, i32 0, i32 1
  %28 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_82, i32 0, i32 2
  store i64 4, i64* %26, align 4
  store i64 4, i64* %27, align 4
  store i64 6, i64* %28, align 4
  %tuple_addr_82 = ptrtoint { i64, i64, i64 }* %tuple_ptr_82 to i64
  %tuple_tagged_tuple_addr_word_82 = add i64 %tuple_addr_82, 1
  br label %let_12

let_12:                                           ; preds = %construct_tuple_82
  %tuple_136 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_82, i64* %tuple_136, align 4
  br label %construct_tuple_78

construct_tuple_78:                               ; preds = %let_12
  %tuple_13625 = load i64, i64* %tuple_136, align 4
  %malloccall26 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_78 = bitcast i8* %malloccall26 to { i64, i64, i64, i64 }*
  %29 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_78, i32 0, i32 0
  %30 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_78, i32 0, i32 1
  %31 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_78, i32 0, i32 2
  %32 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_78, i32 0, i32 3
  store i64 6, i64* %29, align 4
  store i64 -1, i64* %30, align 4
  store i64 2, i64* %31, align 4
  store i64 %tuple_13625, i64* %32, align 4
  %tuple_addr_78 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_78 to i64
  %tuple_tagged_tuple_addr_word_78 = add i64 %tuple_addr_78, 1
  br label %let_13

let_13:                                           ; preds = %construct_tuple_78
  %t1_132 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_78, i64* %t1_132, align 4
  br label %get_item_75

get_item_75:                                      ; preds = %let_13
  %t1_13227 = load i64, i64* %t1_132, align 4
  %is_not_nil = icmp ne i64 %t1_13227, 1
  br i1 %is_not_nil, label %it_not_nil_75, label %call_error_func28

it_not_nil_75:                                    ; preds = %get_item_75
  %tag_bits_of_tup_val = and i64 %t1_13227, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_75, label %call_error_func30

call_error_func28:                                ; preds = %get_item_75
  store i64 %t1_13227, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_75:                                   ; preds = %it_not_nil_75
  br i1 true, label %it_is_integer_75, label %call_error_func32

call_error_func30:                                ; preds = %it_not_nil_75
  store i64 %t1_13227, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_75:                                 ; preds = %it_is_tuple_75
  %untagged_tuple_addr = sub i64 %t1_13227, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_75, label %call_error_func34

call_error_func32:                                ; preds = %it_is_tuple_75
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_75:                           ; preds = %it_is_integer_75
  br i1 true, label %index_is_not_negative_75, label %call_error_func36

call_error_func34:                                ; preds = %it_is_integer_75
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val35 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_75:                         ; preds = %index_is_less_tha_n_75
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_14

call_error_func36:                                ; preds = %index_is_less_tha_n_75
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val37 = call i64 @error_func(i64 7)
  unreachable

let_14:                                           ; preds = %index_is_not_negative_75
  %getitem_143 = alloca i64, align 8
  store i64 %accessed_element, i64* %getitem_143, align 4
  br label %if_else_71

if_else_71:                                       ; preds = %let_14
  %getitem_14338 = load i64, i64* %getitem_143, align 4
  %tag_bits_of_cond_val = and i64 %getitem_14338, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_71, label %call_error_func39

continue_if_else_71:                              ; preds = %if_else_71
  %is_cond_true = icmp eq i64 %getitem_14338, -1
  br i1 %is_cond_true, label %then_71, label %else_71

call_error_func39:                                ; preds = %if_else_71
  store i64 %getitem_14338, i64* @current_answer_ptr, align 4
  %error_call_return_val40 = call i64 @error_func(i64 4)
  unreachable

then_71:                                          ; preds = %continue_if_else_71
  br label %merge_then_else_71

else_71:                                          ; preds = %continue_if_else_71
  br label %merge_then_else_71

merge_then_else_71:                               ; preds = %else_71, %then_71
  %"if/else_snake_result_71" = phi i64 [ 2, %then_71 ], [ 4, %else_71 ]
  br label %let_15

let_15:                                           ; preds = %merge_then_else_71
  %b2_141 = alloca i64, align 8
  store i64 %"if/else_snake_result_71", i64* %b2_141, align 4
  br label %construct_tuple_68

construct_tuple_68:                               ; preds = %let_15
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_68 = bitcast i8* %malloccall41 to { i64, i64, i64 }*
  %33 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_68, i32 0, i32 0
  %34 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_68, i32 0, i32 1
  %35 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_68, i32 0, i32 2
  store i64 4, i64* %33, align 4
  store i64 6, i64* %34, align 4
  store i64 8, i64* %35, align 4
  %tuple_addr_68 = ptrtoint { i64, i64, i64 }* %tuple_ptr_68 to i64
  %tuple_tagged_tuple_addr_word_68 = add i64 %tuple_addr_68, 1
  br label %let_16

let_16:                                           ; preds = %construct_tuple_68
  %tuple_156 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_68, i64* %tuple_156, align 4
  br label %construct_tuple_64

construct_tuple_64:                               ; preds = %let_16
  %tuple_15642 = load i64, i64* %tuple_156, align 4
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_64 = bitcast i8* %malloccall43 to { i64, i64, i64, i64 }*
  %36 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_64, i32 0, i32 0
  %37 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_64, i32 0, i32 1
  %38 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_64, i32 0, i32 2
  %39 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_64, i32 0, i32 3
  store i64 6, i64* %36, align 4
  store i64 4, i64* %37, align 4
  store i64 %tuple_15642, i64* %38, align 4
  store i64 10, i64* %39, align 4
  %tuple_addr_64 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_64 to i64
  %tuple_tagged_tuple_addr_word_64 = add i64 %tuple_addr_64, 1
  br label %let_17

let_17:                                           ; preds = %construct_tuple_64
  %tuple_154 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_64, i64* %tuple_154, align 4
  br label %function_call44

function_call44:                                  ; preds = %let_17
  %f1_2645 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call46 = and i64 %f1_2645, 7
  %is_closure_of_func_to_call_closure47 = icmp eq i64 %tag_bits_of_closure_of_func_to_call46, 5
  br i1 %is_closure_of_func_to_call_closure47, label %is_closure_60, label %call_error_func48

is_closure_60:                                    ; preds = %function_call44
  %untagged_closure_addr50 = sub i64 %f1_2645, 5
  %closure_ptr51 = inttoptr i64 %untagged_closure_addr50 to i64*
  %function_code_ptr_as_i6452 = load i64, i64* %closure_ptr51, align 4
  %function53 = inttoptr i64 %function_code_ptr_as_i6452 to i64 (i64, i64, i64)*
  %arity_ptr54 = getelementptr i64, i64* %closure_ptr51, i64 1
  %arity55 = load i64, i64* %arity_ptr54, align 4
  %40 = icmp eq i64 %arity55, 4
  br i1 %40, label %is_correct_arity_60, label %call_error_func56

call_error_func48:                                ; preds = %function_call44
  store i64 %f1_2645, i64* @current_answer_ptr, align 4
  %error_call_return_val49 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_60:                              ; preds = %is_closure_60
  %tuple_15458 = load i64, i64* %tuple_154, align 4
  %lambda_non_tail_call_result59 = call i64 %function53(i64 %f1_2645, i64 2, i64 %tuple_15458)
  br label %let_18

call_error_func56:                                ; preds = %is_closure_60
  store i64 %arity55, i64* @current_answer_ptr, align 4
  %error_call_return_val57 = call i64 @error_func(i64 17)
  unreachable

let_18:                                           ; preds = %is_correct_arity_60
  %app_152 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result59, i64* %app_152, align 4
  br label %check_size_57

check_size_57:                                    ; preds = %let_18
  %app_15260 = load i64, i64* %app_152, align 4
  %tag_bits_of_e1_val = and i64 %app_15260, 7
  %is_e1_val_tuple = icmp eq i64 %tag_bits_of_e1_val, 1
  br i1 %is_e1_val_tuple, label %e1_is_tuple_57, label %call_error_func61

e1_is_tuple_57:                                   ; preds = %check_size_57
  %untagged_tuple_addr63 = sub i64 %app_15260, 1
  %tuple_ptr64 = inttoptr i64 %untagged_tuple_addr63 to i64*
  %num_elements_ptr65 = getelementptr i64, i64* %tuple_ptr64, i64 0
  %num_elements66 = load i64, i64* %num_elements_ptr65, align 4
  %41 = icmp eq i64 %num_elements66, 6
  br i1 %41, label %arity_is_matching_57, label %call_error_func67

call_error_func61:                                ; preds = %check_size_57
  store i64 %app_15260, i64* @current_answer_ptr, align 4
  %error_call_return_val62 = call i64 @error_func(i64 6)
  unreachable

arity_is_matching_57:                             ; preds = %e1_is_tuple_57
  %result = phi i64 [ %app_15260, %e1_is_tuple_57 ]
  br label %let_19

call_error_func67:                                ; preds = %e1_is_tuple_57
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val68 = call i64 @error_func(i64 19)
  unreachable

let_19:                                           ; preds = %arity_is_matching_57
  %let_tuple_1_150 = alloca i64, align 8
  store i64 %result, i64* %let_tuple_1_150, align 4
  br label %get_item_54

get_item_54:                                      ; preds = %let_19
  %let_tuple_1_15069 = load i64, i64* %let_tuple_1_150, align 4
  %is_not_nil70 = icmp ne i64 %let_tuple_1_15069, 1
  br i1 %is_not_nil70, label %it_not_nil_54, label %call_error_func71

it_not_nil_54:                                    ; preds = %get_item_54
  %tag_bits_of_tup_val73 = and i64 %let_tuple_1_15069, 7
  %is_tup_val_tuple74 = icmp eq i64 %tag_bits_of_tup_val73, 1
  br i1 %is_tup_val_tuple74, label %it_is_tuple_54, label %call_error_func75

call_error_func71:                                ; preds = %get_item_54
  store i64 %let_tuple_1_15069, i64* @current_answer_ptr, align 4
  %error_call_return_val72 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_54:                                   ; preds = %it_not_nil_54
  br i1 true, label %it_is_integer_54, label %call_error_func77

call_error_func75:                                ; preds = %it_not_nil_54
  store i64 %let_tuple_1_15069, i64* @current_answer_ptr, align 4
  %error_call_return_val76 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_54:                                 ; preds = %it_is_tuple_54
  %untagged_tuple_addr79 = sub i64 %let_tuple_1_15069, 1
  %tuple_ptr80 = inttoptr i64 %untagged_tuple_addr79 to i64*
  %num_elements_ptr81 = getelementptr i64, i64* %tuple_ptr80, i64 0
  %num_elements82 = load i64, i64* %num_elements_ptr81, align 4
  %index_is_less_than_n83 = icmp slt i64 0, %num_elements82
  br i1 %index_is_less_than_n83, label %index_is_less_tha_n_54, label %call_error_func84

call_error_func77:                                ; preds = %it_is_tuple_54
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val78 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_54:                           ; preds = %it_is_integer_54
  br i1 true, label %index_is_not_negative_54, label %call_error_func86

call_error_func84:                                ; preds = %it_is_integer_54
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val85 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_54:                         ; preds = %index_is_less_tha_n_54
  %index_element_ptr88 = getelementptr i64, i64* %tuple_ptr80, i64 1
  %accessed_element89 = load i64, i64* %index_element_ptr88, align 4
  br label %let_20

call_error_func86:                                ; preds = %index_is_less_tha_n_54
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val87 = call i64 @error_func(i64 7)
  unreachable

let_20:                                           ; preds = %index_is_not_negative_54
  %a1_163 = alloca i64, align 8
  store i64 %accessed_element89, i64* %a1_163, align 4
  br label %get_item_51

get_item_51:                                      ; preds = %let_20
  %let_tuple_1_15090 = load i64, i64* %let_tuple_1_150, align 4
  %is_not_nil91 = icmp ne i64 %let_tuple_1_15090, 1
  br i1 %is_not_nil91, label %it_not_nil_51, label %call_error_func92

it_not_nil_51:                                    ; preds = %get_item_51
  %tag_bits_of_tup_val94 = and i64 %let_tuple_1_15090, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_51, label %call_error_func96

call_error_func92:                                ; preds = %get_item_51
  store i64 %let_tuple_1_15090, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_51:                                   ; preds = %it_not_nil_51
  br i1 true, label %it_is_integer_51, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_51
  store i64 %let_tuple_1_15090, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_51:                                 ; preds = %it_is_tuple_51
  %untagged_tuple_addr100 = sub i64 %let_tuple_1_15090, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 2, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_51, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_51
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_51:                           ; preds = %it_is_integer_51
  br i1 true, label %index_is_not_negative_51, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_51
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_51:                         ; preds = %index_is_less_tha_n_51
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 2
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_21

call_error_func107:                               ; preds = %index_is_less_tha_n_51
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_21:                                           ; preds = %index_is_not_negative_51
  %getitem_171 = alloca i64, align 8
  store i64 %accessed_element110, i64* %getitem_171, align 4
  br label %get_item_48

get_item_48:                                      ; preds = %let_21
  %getitem_171111 = load i64, i64* %getitem_171, align 4
  %is_not_nil112 = icmp ne i64 %getitem_171111, 1
  br i1 %is_not_nil112, label %it_not_nil_48, label %call_error_func113

it_not_nil_48:                                    ; preds = %get_item_48
  %tag_bits_of_tup_val115 = and i64 %getitem_171111, 7
  %is_tup_val_tuple116 = icmp eq i64 %tag_bits_of_tup_val115, 1
  br i1 %is_tup_val_tuple116, label %it_is_tuple_48, label %call_error_func117

call_error_func113:                               ; preds = %get_item_48
  store i64 %getitem_171111, i64* @current_answer_ptr, align 4
  %error_call_return_val114 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_48:                                   ; preds = %it_not_nil_48
  br i1 true, label %it_is_integer_48, label %call_error_func119

call_error_func117:                               ; preds = %it_not_nil_48
  store i64 %getitem_171111, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_48:                                 ; preds = %it_is_tuple_48
  %untagged_tuple_addr121 = sub i64 %getitem_171111, 1
  %tuple_ptr122 = inttoptr i64 %untagged_tuple_addr121 to i64*
  %num_elements_ptr123 = getelementptr i64, i64* %tuple_ptr122, i64 0
  %num_elements124 = load i64, i64* %num_elements_ptr123, align 4
  %index_is_less_than_n125 = icmp slt i64 0, %num_elements124
  br i1 %index_is_less_than_n125, label %index_is_less_tha_n_48, label %call_error_func126

call_error_func119:                               ; preds = %it_is_tuple_48
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val120 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_48:                           ; preds = %it_is_integer_48
  br i1 true, label %index_is_not_negative_48, label %call_error_func128

call_error_func126:                               ; preds = %it_is_integer_48
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val127 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_48:                         ; preds = %index_is_less_tha_n_48
  %index_element_ptr130 = getelementptr i64, i64* %tuple_ptr122, i64 1
  %accessed_element131 = load i64, i64* %index_element_ptr130, align 4
  br label %let_22

call_error_func128:                               ; preds = %index_is_less_tha_n_48
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val129 = call i64 @error_func(i64 7)
  unreachable

let_22:                                           ; preds = %index_is_not_negative_48
  %a2_168 = alloca i64, align 8
  store i64 %accessed_element131, i64* %a2_168, align 4
  br label %get_item_45

get_item_45:                                      ; preds = %let_22
  %let_tuple_1_150132 = load i64, i64* %let_tuple_1_150, align 4
  %is_not_nil133 = icmp ne i64 %let_tuple_1_150132, 1
  br i1 %is_not_nil133, label %it_not_nil_45, label %call_error_func134

it_not_nil_45:                                    ; preds = %get_item_45
  %tag_bits_of_tup_val136 = and i64 %let_tuple_1_150132, 7
  %is_tup_val_tuple137 = icmp eq i64 %tag_bits_of_tup_val136, 1
  br i1 %is_tup_val_tuple137, label %it_is_tuple_45, label %call_error_func138

call_error_func134:                               ; preds = %get_item_45
  store i64 %let_tuple_1_150132, i64* @current_answer_ptr, align 4
  %error_call_return_val135 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_45:                                   ; preds = %it_not_nil_45
  br i1 true, label %it_is_integer_45, label %call_error_func140

call_error_func138:                               ; preds = %it_not_nil_45
  store i64 %let_tuple_1_150132, i64* @current_answer_ptr, align 4
  %error_call_return_val139 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_45:                                 ; preds = %it_is_tuple_45
  %untagged_tuple_addr142 = sub i64 %let_tuple_1_150132, 1
  %tuple_ptr143 = inttoptr i64 %untagged_tuple_addr142 to i64*
  %num_elements_ptr144 = getelementptr i64, i64* %tuple_ptr143, i64 0
  %num_elements145 = load i64, i64* %num_elements_ptr144, align 4
  %index_is_less_than_n146 = icmp slt i64 2, %num_elements145
  br i1 %index_is_less_than_n146, label %index_is_less_tha_n_45, label %call_error_func147

call_error_func140:                               ; preds = %it_is_tuple_45
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val141 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_45:                           ; preds = %it_is_integer_45
  br i1 true, label %index_is_not_negative_45, label %call_error_func149

call_error_func147:                               ; preds = %it_is_integer_45
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val148 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_45:                         ; preds = %index_is_less_tha_n_45
  %index_element_ptr151 = getelementptr i64, i64* %tuple_ptr143, i64 2
  %accessed_element152 = load i64, i64* %index_element_ptr151, align 4
  br label %let_23

call_error_func149:                               ; preds = %index_is_less_tha_n_45
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val150 = call i64 @error_func(i64 7)
  unreachable

let_23:                                           ; preds = %index_is_not_negative_45
  %getitem_178 = alloca i64, align 8
  store i64 %accessed_element152, i64* %getitem_178, align 4
  br label %get_item_42

get_item_42:                                      ; preds = %let_23
  %getitem_178153 = load i64, i64* %getitem_178, align 4
  %is_not_nil154 = icmp ne i64 %getitem_178153, 1
  br i1 %is_not_nil154, label %it_not_nil_42, label %call_error_func155

it_not_nil_42:                                    ; preds = %get_item_42
  %tag_bits_of_tup_val157 = and i64 %getitem_178153, 7
  %is_tup_val_tuple158 = icmp eq i64 %tag_bits_of_tup_val157, 1
  br i1 %is_tup_val_tuple158, label %it_is_tuple_42, label %call_error_func159

call_error_func155:                               ; preds = %get_item_42
  store i64 %getitem_178153, i64* @current_answer_ptr, align 4
  %error_call_return_val156 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_42:                                   ; preds = %it_not_nil_42
  br i1 true, label %it_is_integer_42, label %call_error_func161

call_error_func159:                               ; preds = %it_not_nil_42
  store i64 %getitem_178153, i64* @current_answer_ptr, align 4
  %error_call_return_val160 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_42:                                 ; preds = %it_is_tuple_42
  %untagged_tuple_addr163 = sub i64 %getitem_178153, 1
  %tuple_ptr164 = inttoptr i64 %untagged_tuple_addr163 to i64*
  %num_elements_ptr165 = getelementptr i64, i64* %tuple_ptr164, i64 0
  %num_elements166 = load i64, i64* %num_elements_ptr165, align 4
  %index_is_less_than_n167 = icmp slt i64 2, %num_elements166
  br i1 %index_is_less_than_n167, label %index_is_less_tha_n_42, label %call_error_func168

call_error_func161:                               ; preds = %it_is_tuple_42
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val162 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_42:                           ; preds = %it_is_integer_42
  br i1 true, label %index_is_not_negative_42, label %call_error_func170

call_error_func168:                               ; preds = %it_is_integer_42
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val169 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_42:                         ; preds = %index_is_less_tha_n_42
  %index_element_ptr172 = getelementptr i64, i64* %tuple_ptr164, i64 2
  %accessed_element173 = load i64, i64* %index_element_ptr172, align 4
  br label %let_24

call_error_func170:                               ; preds = %index_is_less_tha_n_42
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val171 = call i64 @error_func(i64 7)
  unreachable

let_24:                                           ; preds = %index_is_not_negative_42
  %a3_175 = alloca i64, align 8
  store i64 %accessed_element173, i64* %a3_175, align 4
  br label %construct_tuple_37

construct_tuple_37:                               ; preds = %let_24
  %malloccall174 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_37 = bitcast i8* %malloccall174 to { i64, i64, i64, i64, i64 }*
  %42 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_37, i32 0, i32 0
  %43 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_37, i32 0, i32 1
  %44 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_37, i32 0, i32 2
  %45 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_37, i32 0, i32 3
  %46 = getelementptr inbounds { i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64 }* %tuple_ptr_37, i32 0, i32 4
  store i64 8, i64* %42, align 4
  store i64 2, i64* %43, align 4
  store i64 4, i64* %44, align 4
  store i64 6, i64* %45, align 4
  store i64 1, i64* %46, align 4
  %tuple_addr_37 = ptrtoint { i64, i64, i64, i64, i64 }* %tuple_ptr_37 to i64
  %tuple_tagged_tuple_addr_word_37 = add i64 %tuple_addr_37, 1
  br label %let_25

let_25:                                           ; preds = %construct_tuple_37
  %t2_183 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_37, i64* %t2_183, align 4
  br label %function_call175

function_call175:                                 ; preds = %let_25
  %print_4176 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call177 = and i64 %print_4176, 7
  %is_closure_of_func_to_call_closure178 = icmp eq i64 %tag_bits_of_closure_of_func_to_call177, 5
  br i1 %is_closure_of_func_to_call_closure178, label %is_closure_34, label %call_error_func179

is_closure_34:                                    ; preds = %function_call175
  %untagged_closure_addr181 = sub i64 %print_4176, 5
  %closure_ptr182 = inttoptr i64 %untagged_closure_addr181 to i64*
  %function_code_ptr_as_i64183 = load i64, i64* %closure_ptr182, align 4
  %function184 = inttoptr i64 %function_code_ptr_as_i64183 to i64 (i64, i64)*
  %arity_ptr185 = getelementptr i64, i64* %closure_ptr182, i64 1
  %arity186 = load i64, i64* %arity_ptr185, align 4
  %47 = icmp eq i64 %arity186, 2
  br i1 %47, label %is_correct_arity_34, label %call_error_func187

call_error_func179:                               ; preds = %function_call175
  store i64 %print_4176, i64* @current_answer_ptr, align 4
  %error_call_return_val180 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_34:                              ; preds = %is_closure_34
  %t2_183189 = load i64, i64* %t2_183, align 4
  %lambda_non_tail_call_result190 = call i64 %function184(i64 %print_4176, i64 %t2_183189)
  br label %get_item_31

call_error_func187:                               ; preds = %is_closure_34
  store i64 %arity186, i64* @current_answer_ptr, align 4
  %error_call_return_val188 = call i64 @error_func(i64 17)
  unreachable

get_item_31:                                      ; preds = %is_correct_arity_34
  %t2_183191 = load i64, i64* %t2_183, align 4
  %is_not_nil192 = icmp ne i64 %t2_183191, 1
  br i1 %is_not_nil192, label %it_not_nil_31, label %call_error_func193

it_not_nil_31:                                    ; preds = %get_item_31
  %tag_bits_of_tup_val195 = and i64 %t2_183191, 7
  %is_tup_val_tuple196 = icmp eq i64 %tag_bits_of_tup_val195, 1
  br i1 %is_tup_val_tuple196, label %it_is_tuple_31, label %call_error_func197

call_error_func193:                               ; preds = %get_item_31
  store i64 %t2_183191, i64* @current_answer_ptr, align 4
  %error_call_return_val194 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_31:                                   ; preds = %it_not_nil_31
  br i1 true, label %it_is_integer_31, label %call_error_func199

call_error_func197:                               ; preds = %it_not_nil_31
  store i64 %t2_183191, i64* @current_answer_ptr, align 4
  %error_call_return_val198 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_31:                                 ; preds = %it_is_tuple_31
  %untagged_tuple_addr201 = sub i64 %t2_183191, 1
  %tuple_ptr202 = inttoptr i64 %untagged_tuple_addr201 to i64*
  %num_elements_ptr203 = getelementptr i64, i64* %tuple_ptr202, i64 0
  %num_elements204 = load i64, i64* %num_elements_ptr203, align 4
  %index_is_less_than_n205 = icmp slt i64 6, %num_elements204
  br i1 %index_is_less_than_n205, label %index_is_less_tha_n_31, label %call_error_func206

call_error_func199:                               ; preds = %it_is_tuple_31
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val200 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_31:                           ; preds = %it_is_integer_31
  br i1 true, label %index_is_not_negative_31, label %call_error_func208

call_error_func206:                               ; preds = %it_is_integer_31
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val207 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_31:                         ; preds = %index_is_less_tha_n_31
  %index_element_ptr210 = getelementptr i64, i64* %tuple_ptr202, i64 4
  %accessed_element211 = load i64, i64* %index_element_ptr210, align 4
  br label %let_27

call_error_func208:                               ; preds = %index_is_less_tha_n_31
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val209 = call i64 @error_func(i64 7)
  unreachable

let_27:                                           ; preds = %index_is_not_negative_31
  %getitem_196 = alloca i64, align 8
  store i64 %accessed_element211, i64* %getitem_196, align 4
  br label %function_call212

function_call212:                                 ; preds = %let_27
  %print_4213 = load i64, i64* %print_4, align 4
  %tag_bits_of_closure_of_func_to_call214 = and i64 %print_4213, 7
  %is_closure_of_func_to_call_closure215 = icmp eq i64 %tag_bits_of_closure_of_func_to_call214, 5
  br i1 %is_closure_of_func_to_call_closure215, label %is_closure_28, label %call_error_func216

is_closure_28:                                    ; preds = %function_call212
  %untagged_closure_addr218 = sub i64 %print_4213, 5
  %closure_ptr219 = inttoptr i64 %untagged_closure_addr218 to i64*
  %function_code_ptr_as_i64220 = load i64, i64* %closure_ptr219, align 4
  %function221 = inttoptr i64 %function_code_ptr_as_i64220 to i64 (i64, i64)*
  %arity_ptr222 = getelementptr i64, i64* %closure_ptr219, i64 1
  %arity223 = load i64, i64* %arity_ptr222, align 4
  %48 = icmp eq i64 %arity223, 2
  br i1 %48, label %is_correct_arity_28, label %call_error_func224

call_error_func216:                               ; preds = %function_call212
  store i64 %print_4213, i64* @current_answer_ptr, align 4
  %error_call_return_val217 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_28:                              ; preds = %is_closure_28
  %getitem_196226 = load i64, i64* %getitem_196, align 4
  %lambda_tail_call_result = tail call i64 %function221(i64 %print_4213, i64 %getitem_196226)
  br label %result227

call_error_func224:                               ; preds = %is_closure_28
  store i64 %arity223, i64* @current_answer_ptr, align 4
  %error_call_return_val225 = call i64 @error_func(i64 17)
  unreachable

result227:                                        ; preds = %is_correct_arity_28
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

define i64 @lambda_183_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_184

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_184 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_180_(i64 %0) {
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
  ret i64 %input_tail_call_result_181

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_181 = tail call i64 @input()
  br label %return
}

define i64 @lambda_175_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_176

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_176 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_120_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_172

return:                                           ; preds = %merge_then_else_128
  ret i64 %"if/else_snake_result_128"

get_item_172:                                     ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_172, label %call_error_func

it_not_nil_172:                                   ; preds = %get_item_172
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_172, label %call_error_func1

call_error_func:                                  ; preds = %get_item_172
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_172:                                  ; preds = %it_not_nil_172
  br i1 true, label %it_is_integer_172, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_172
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_172:                                ; preds = %it_is_tuple_172
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_172, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_172
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_172:                          ; preds = %it_is_integer_172
  br i1 true, label %index_is_not_negative_172, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_172
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_172:                        ; preds = %index_is_less_tha_n_172
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_121

call_error_func7:                                 ; preds = %index_is_less_tha_n_172
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_121:                                          ; preds = %index_is_not_negative_172
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_169

get_item_169:                                     ; preds = %let_121
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_169, label %call_error_func10

it_not_nil_169:                                   ; preds = %get_item_169
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_169, label %call_error_func14

call_error_func10:                                ; preds = %get_item_169
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_169:                                  ; preds = %it_not_nil_169
  br i1 true, label %it_is_integer_169, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_169
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_169:                                ; preds = %it_is_tuple_169
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_169, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_169
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_169:                          ; preds = %it_is_integer_169
  br i1 true, label %index_is_not_negative_169, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_169
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_169:                        ; preds = %index_is_less_tha_n_169
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_122

call_error_func25:                                ; preds = %index_is_less_tha_n_169
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_122:                                          ; preds = %index_is_not_negative_169
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_166

get_item_166:                                     ; preds = %let_122
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_166, label %call_error_func31

it_not_nil_166:                                   ; preds = %get_item_166
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_166, label %call_error_func35

call_error_func31:                                ; preds = %get_item_166
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_166:                                  ; preds = %it_not_nil_166
  br i1 true, label %it_is_integer_166, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_166
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_166:                                ; preds = %it_is_tuple_166
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_166, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_166
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_166:                          ; preds = %it_is_integer_166
  br i1 true, label %index_is_not_negative_166, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_166
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_166:                        ; preds = %index_is_less_tha_n_166
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_123

call_error_func46:                                ; preds = %index_is_less_tha_n_166
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_123:                                          ; preds = %index_is_not_negative_166
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_163

get_item_163:                                     ; preds = %let_123
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_163, label %call_error_func51

it_not_nil_163:                                   ; preds = %get_item_163
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_163, label %call_error_func55

call_error_func51:                                ; preds = %get_item_163
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_163:                                  ; preds = %it_not_nil_163
  br i1 true, label %it_is_integer_163, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_163
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_163:                                ; preds = %it_is_tuple_163
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_163, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_163
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_163:                          ; preds = %it_is_integer_163
  br i1 true, label %index_is_not_negative_163, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_163
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_163:                        ; preds = %index_is_less_tha_n_163
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_124

call_error_func66:                                ; preds = %index_is_less_tha_n_163
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_124:                                          ; preds = %index_is_not_negative_163
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_160

get_item_160:                                     ; preds = %let_124
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_160, label %call_error_func72

it_not_nil_160:                                   ; preds = %get_item_160
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_160, label %call_error_func76

call_error_func72:                                ; preds = %get_item_160
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_160:                                  ; preds = %it_not_nil_160
  br i1 true, label %it_is_integer_160, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_160
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_160:                                ; preds = %it_is_tuple_160
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_160, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_160
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_160:                          ; preds = %it_is_integer_160
  br i1 true, label %index_is_not_negative_160, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_160
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_160:                        ; preds = %index_is_less_tha_n_160
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_125

call_error_func87:                                ; preds = %index_is_less_tha_n_160
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_125:                                          ; preds = %index_is_not_negative_160
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_157

get_item_157:                                     ; preds = %let_125
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_157, label %call_error_func92

it_not_nil_157:                                   ; preds = %get_item_157
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_157, label %call_error_func96

call_error_func92:                                ; preds = %get_item_157
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_157:                                  ; preds = %it_not_nil_157
  br i1 true, label %it_is_integer_157, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_157
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_157:                                ; preds = %it_is_tuple_157
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_157, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_157
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_157:                          ; preds = %it_is_integer_157
  br i1 true, label %index_is_not_negative_157, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_157
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_157:                        ; preds = %index_is_less_tha_n_157
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_126

call_error_func107:                               ; preds = %index_is_less_tha_n_157
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_126:                                          ; preds = %index_is_not_negative_157
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %greater_eq_154

greater_eq_154:                                   ; preds = %let_126
  %x5_49111 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1 = and i64 %x5_49111, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_154, label %call_error_func112

arg1_type_check_passed_154:                       ; preds = %greater_eq_154
  br i1 true, label %arg2_type_check_passed_154, label %call_error_func114

call_error_func112:                               ; preds = %greater_eq_154
  store i64 %x5_49111, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_154:                       ; preds = %arg1_type_check_passed_154
  %greater_eq_llvm_result_154 = icmp sge i64 %x5_49111, 20
  br i1 %greater_eq_llvm_result_154, label %comp_is_true_154, label %comp_is_false_154

call_error_func114:                               ; preds = %arg1_type_check_passed_154
  store i64 20, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_154:                                 ; preds = %arg2_type_check_passed_154
  br label %merge_154

comp_is_false_154:                                ; preds = %arg2_type_check_passed_154
  br label %merge_154

merge_154:                                        ; preds = %comp_is_false_154, %comp_is_true_154
  %greater_eq_snake_result_154 = phi i64 [ -1, %comp_is_true_154 ], [ 9223372036854775807, %comp_is_false_154 ]
  br label %let_127

let_127:                                          ; preds = %merge_154
  %binop_54 = alloca i64, align 8
  store i64 %greater_eq_snake_result_154, i64* %binop_54, align 4
  br label %if_else_128

if_else_128:                                      ; preds = %let_127
  %binop_54116 = load i64, i64* %binop_54, align 4
  %tag_bits_of_cond_val = and i64 %binop_54116, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_128, label %call_error_func117

continue_if_else_128:                             ; preds = %if_else_128
  %is_cond_true = icmp eq i64 %binop_54116, -1
  br i1 %is_cond_true, label %then_128, label %else_128

call_error_func117:                               ; preds = %if_else_128
  store i64 %binop_54116, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 4)
  unreachable

then_128:                                         ; preds = %continue_if_else_128
  br label %construct_tuple_150

else_128:                                         ; preds = %continue_if_else_128
  br label %construct_tuple_143

merge_then_else_128:                              ; preds = %is_correct_arity_132, %construct_tuple_147
  %"if/else_snake_result_128" = phi i64 [ %tuple_tagged_tuple_addr_word_147, %construct_tuple_147 ], [ %lambda_tail_call_result, %is_correct_arity_132 ]
  br label %return

construct_tuple_150:                              ; preds = %then_128
  %x3_35119 = load i64, i64* %x3_35, align 4
  %x4_42120 = load i64, i64* %x4_42, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_150 = bitcast i8* %malloccall to { i64, i64, i64 }*
  %3 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_150, i32 0, i32 0
  %4 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_150, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_150, i32 0, i32 2
  store i64 4, i64* %3, align 4
  store i64 %x3_35119, i64* %4, align 4
  store i64 %x4_42120, i64* %5, align 4
  %tuple_addr_150 = ptrtoint { i64, i64, i64 }* %tuple_ptr_150 to i64
  %tuple_tagged_tuple_addr_word_150 = add i64 %tuple_addr_150, 1
  br label %let_146

let_146:                                          ; preds = %construct_tuple_150
  %tuple_59 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_150, i64* %tuple_59, align 4
  br label %construct_tuple_147

construct_tuple_147:                              ; preds = %let_146
  %x2_30121 = load i64, i64* %x2_30, align 4
  %tuple_59122 = load i64, i64* %tuple_59, align 4
  %malloccall123 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_147 = bitcast i8* %malloccall123 to { i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_147, i32 0, i32 0
  %7 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_147, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_147, i32 0, i32 2
  store i64 4, i64* %6, align 4
  store i64 %x2_30121, i64* %7, align 4
  store i64 %tuple_59122, i64* %8, align 4
  %tuple_addr_147 = ptrtoint { i64, i64, i64 }* %tuple_ptr_147 to i64
  %tuple_tagged_tuple_addr_word_147 = add i64 %tuple_addr_147, 1
  br label %merge_then_else_128

construct_tuple_143:                              ; preds = %else_128
  %x3_35124 = load i64, i64* %x3_35, align 4
  %x4_42125 = load i64, i64* %x4_42, align 4
  %malloccall126 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_143 = bitcast i8* %malloccall126 to { i64, i64, i64 }*
  %9 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_143, i32 0, i32 0
  %10 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_143, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_143, i32 0, i32 2
  store i64 4, i64* %9, align 4
  store i64 %x3_35124, i64* %10, align 4
  store i64 %x4_42125, i64* %11, align 4
  %tuple_addr_143 = ptrtoint { i64, i64, i64 }* %tuple_ptr_143 to i64
  %tuple_tagged_tuple_addr_word_143 = add i64 %tuple_addr_143, 1
  br label %let_129

let_129:                                          ; preds = %construct_tuple_143
  %tuple_66 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_143, i64* %tuple_66, align 4
  br label %plus_140

plus_140:                                         ; preds = %let_129
  %x5_49127 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1128 = and i64 %x5_49127, 1
  %is_arg1_int129 = icmp eq i64 %tag_bits_of_arg1128, 0
  br i1 %is_arg1_int129, label %arg1_type_check_passed_140, label %call_error_func130

arg1_type_check_passed_140:                       ; preds = %plus_140
  br i1 true, label %arg2_type_check_passed_140, label %call_error_func132

call_error_func130:                               ; preds = %plus_140
  store i64 %x5_49127, i64* @current_answer_ptr, align 4
  %error_call_return_val131 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_140:                       ; preds = %arg1_type_check_passed_140
  %plus_snake_result_140 = add i64 %x5_49127, 2
  %l_ge_0 = icmp sge i64 %x5_49127, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_140, %x5_49127
  %sum_lt_r = icmp slt i64 %plus_snake_result_140, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x5_49127, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_140, %x5_49127
  %sum_gt_r = icmp sgt i64 %plus_snake_result_140, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_140, label %call_error_func134

call_error_func132:                               ; preds = %arg1_type_check_passed_140
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val133 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_140:                         ; preds = %arg2_type_check_passed_140
  %plus_snake_result_140136 = phi i64 [ %plus_snake_result_140, %arg2_type_check_passed_140 ]
  br label %let_130

call_error_func134:                               ; preds = %arg2_type_check_passed_140
  store i64 %plus_snake_result_140, i64* @current_answer_ptr, align 4
  %error_call_return_val135 = call i64 @error_func(i64 5)
  unreachable

let_130:                                          ; preds = %continue_no_overflow_140
  %binop_69 = alloca i64, align 8
  store i64 %plus_snake_result_140136, i64* %binop_69, align 4
  br label %construct_tuple_136

construct_tuple_136:                              ; preds = %let_130
  %x2_30137 = load i64, i64* %x2_30, align 4
  %tuple_66138 = load i64, i64* %tuple_66, align 4
  %binop_69139 = load i64, i64* %binop_69, align 4
  %malloccall140 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_136 = bitcast i8* %malloccall140 to { i64, i64, i64, i64 }*
  %12 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_136, i32 0, i32 0
  %13 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_136, i32 0, i32 1
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_136, i32 0, i32 2
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_136, i32 0, i32 3
  store i64 6, i64* %12, align 4
  store i64 %x2_30137, i64* %13, align 4
  store i64 %tuple_66138, i64* %14, align 4
  store i64 %binop_69139, i64* %15, align 4
  %tuple_addr_136 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_136 to i64
  %tuple_tagged_tuple_addr_word_136 = add i64 %tuple_addr_136, 1
  br label %let_131

let_131:                                          ; preds = %construct_tuple_136
  %tuple_64 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_136, i64* %tuple_64, align 4
  br label %function_call

function_call:                                    ; preds = %let_131
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_132, label %call_error_func141

is_closure_132:                                   ; preds = %function_call
  %untagged_closure_addr143 = sub i64 %f1_26, 5
  %closure_ptr144 = inttoptr i64 %untagged_closure_addr143 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr144, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr144, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %16 = icmp eq i64 %arity, 4
  br i1 %16, label %is_correct_arity_132, label %call_error_func145

call_error_func141:                               ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val142 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_132:                             ; preds = %is_closure_132
  %tuple_64147 = load i64, i64* %tuple_64, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %tuple_64147)
  br label %merge_then_else_128

call_error_func145:                               ; preds = %is_closure_132
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val146 = call i64 @error_func(i64 17)
  unreachable
}

define i64 @lambda_103_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_117

return:                                           ; preds = %merge_then_else_107
  ret i64 %"if/else_snake_result_107"

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
  br label %let_104

call_error_func7:                                 ; preds = %index_is_less_tha_n_117
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_104:                                          ; preds = %index_is_not_negative_117
  %y2_81 = alloca i64, align 8
  store i64 %accessed_element, i64* %y2_81, align 4
  br label %get_item_114

get_item_114:                                     ; preds = %let_104
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
  br label %let_105

call_error_func25:                                ; preds = %index_is_less_tha_n_114
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_105:                                          ; preds = %index_is_not_negative_114
  %y3_86 = alloca i64, align 8
  store i64 %accessed_element28, i64* %y3_86, align 4
  br label %greater_111

greater_111:                                      ; preds = %let_105
  %y2_8129 = load i64, i64* %y2_81, align 4
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_111, label %call_error_func30

arg1_type_check_passed_111:                       ; preds = %greater_111
  %tag_bits_of_arg2 = and i64 %y2_8129, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_111, label %call_error_func32

call_error_func30:                                ; preds = %greater_111
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_111:                       ; preds = %arg1_type_check_passed_111
  %greater_llvm_result_111 = icmp sgt i64 %1, %y2_8129
  br i1 %greater_llvm_result_111, label %comp_is_true_111, label %comp_is_false_111

call_error_func32:                                ; preds = %arg1_type_check_passed_111
  store i64 %y2_8129, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_111:                                 ; preds = %arg2_type_check_passed_111
  br label %merge_111

comp_is_false_111:                                ; preds = %arg2_type_check_passed_111
  br label %merge_111

merge_111:                                        ; preds = %comp_is_false_111, %comp_is_true_111
  %greater_snake_result_111 = phi i64 [ -1, %comp_is_true_111 ], [ 9223372036854775807, %comp_is_false_111 ]
  br label %let_106

let_106:                                          ; preds = %merge_111
  %binop_91 = alloca i64, align 8
  store i64 %greater_snake_result_111, i64* %binop_91, align 4
  br label %if_else_107

if_else_107:                                      ; preds = %let_106
  %binop_9134 = load i64, i64* %binop_91, align 4
  %tag_bits_of_cond_val = and i64 %binop_9134, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_107, label %call_error_func35

continue_if_else_107:                             ; preds = %if_else_107
  %is_cond_true = icmp eq i64 %binop_9134, -1
  br i1 %is_cond_true, label %then_107, label %else_107

call_error_func35:                                ; preds = %if_else_107
  store i64 %binop_9134, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 4)
  unreachable

then_107:                                         ; preds = %continue_if_else_107
  %y3_8637 = load i64, i64* %y3_86, align 4
  br label %merge_then_else_107

else_107:                                         ; preds = %continue_if_else_107
  br label %merge_then_else_107

merge_then_else_107:                              ; preds = %else_107, %then_107
  %"if/else_snake_result_107" = phi i64 [ %y3_8637, %then_107 ], [ 9223372036854775807, %else_107 ]
  br label %return
}
