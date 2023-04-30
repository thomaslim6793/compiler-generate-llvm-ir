; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_173

create_lambda_closure_173:                        ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_173 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_173, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_173, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_173, i32 0, i32 2
  store i64 (i64, i64)* @lambda_173_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1000, i64* %2, align 4
  %closure_addr_173 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_173 to i64
  %closure_tagged_tuple_addr_word_173 = add i64 %closure_addr_173, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_173
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_173, i64* %print_4, align 4
  br label %create_lambda_closure_170

create_lambda_closure_170:                        ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_170 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_170, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_170, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_170, i32 0, i32 2
  store i64 (i64)* @lambda_170_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1000, i64* %5, align 4
  %closure_addr_170 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_170 to i64
  %closure_tagged_tuple_addr_word_170 = add i64 %closure_addr_170, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_170
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_170, i64* %input_11, align 4
  br label %create_lambda_closure_165

create_lambda_closure_165:                        ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_165 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_165, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_165, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_165, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_165_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1000, i64* %8, align 4
  %closure_addr_165 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_165 to i64
  %closure_tagged_tuple_addr_word_165 = add i64 %closure_addr_165, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_165
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_165, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %f1_26 = alloca i64, align 8
  br label %create_lambda_closure_110

create_lambda_closure_110:                        ; preds = %let_rec_4
  %f1_263 = load i64, i64* %f1_26, align 4
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_110 = bitcast i8* %malloccall4 to { i64 (i64, i64, i64)*, i64, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_110, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_110, i32 0, i32 1
  %11 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_110, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_110_, i64 (i64, i64, i64)** %9, align 8
  store i64 4, i64* %10, align 4
  store i64 %f1_263, i64* %11, align 4
  %closure_addr_110 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_110 to i64
  %closure_tagged_tuple_addr_word_110 = add i64 %closure_addr_110, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_110
  store i64 %closure_tagged_tuple_addr_word_110, i64* %f1_26, align 4
  %f1_265 = load i64, i64* %f1_26, align 4
  %untagged_closure_addr = sub i64 %closure_tagged_tuple_addr_word_110, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %12 = getelementptr i64, i64* %closure_ptr, i64 2
  store i64 %f1_265, i64* %12, align 4
  br label %let_rec_5

let_rec_5:                                        ; preds = %patch_let_rec_closures_4
  %f2_77 = alloca i64, align 8
  br label %create_lambda_closure_93

create_lambda_closure_93:                         ; preds = %let_rec_5
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_93 = bitcast i8* %malloccall6 to { i64 (i64, i64, i64)*, i64 }*
  %13 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_93, i32 0, i32 0
  %14 = getelementptr inbounds { i64 (i64, i64, i64)*, i64 }, { i64 (i64, i64, i64)*, i64 }* %closure_ptr_93, i32 0, i32 1
  store i64 (i64, i64, i64)* @lambda_93_, i64 (i64, i64, i64)** %13, align 8
  store i64 4, i64* %14, align 4
  %closure_addr_93 = ptrtoint { i64 (i64, i64, i64)*, i64 }* %closure_ptr_93 to i64
  %closure_tagged_tuple_addr_word_93 = add i64 %closure_addr_93, 5
  br label %patch_let_rec_closures_5

patch_let_rec_closures_5:                         ; preds = %create_lambda_closure_93
  store i64 %closure_tagged_tuple_addr_word_93, i64* %f2_77, align 4
  br label %construct_tuple_90

construct_tuple_90:                               ; preds = %patch_let_rec_closures_5
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_90 = bitcast i8* %malloccall7 to { i64, i64, i64 }*
  %15 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_90, i32 0, i32 0
  %16 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_90, i32 0, i32 1
  %17 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_90, i32 0, i32 2
  store i64 4, i64* %15, align 4
  store i64 2, i64* %16, align 4
  store i64 2, i64* %17, align 4
  %tuple_addr_90 = ptrtoint { i64, i64, i64 }* %tuple_ptr_90 to i64
  %tuple_tagged_tuple_addr_word_90 = add i64 %tuple_addr_90, 1
  br label %let_6

let_6:                                            ; preds = %construct_tuple_90
  %tuple_113 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_90, i64* %tuple_113, align 4
  br label %construct_tuple_86

construct_tuple_86:                               ; preds = %let_6
  %tuple_1138 = load i64, i64* %tuple_113, align 4
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_86 = bitcast i8* %malloccall9 to { i64, i64, i64, i64 }*
  %18 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_86, i32 0, i32 0
  %19 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_86, i32 0, i32 1
  %20 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_86, i32 0, i32 2
  %21 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_86, i32 0, i32 3
  store i64 6, i64* %18, align 4
  store i64 2, i64* %19, align 4
  store i64 %tuple_1138, i64* %20, align 4
  store i64 2, i64* %21, align 4
  %tuple_addr_86 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_86 to i64
  %tuple_tagged_tuple_addr_word_86 = add i64 %tuple_addr_86, 1
  br label %let_7

let_7:                                            ; preds = %construct_tuple_86
  %tuple_111 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_86, i64* %tuple_111, align 4
  br label %function_call

function_call:                                    ; preds = %let_7
  %f1_2610 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_2610, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_82, label %call_error_func

is_closure_82:                                    ; preds = %function_call
  %untagged_closure_addr11 = sub i64 %f1_2610, 5
  %closure_ptr12 = inttoptr i64 %untagged_closure_addr11 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr12, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr12, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %22 = icmp eq i64 %arity, 4
  br i1 %22, label %is_correct_arity_82, label %call_error_func13

call_error_func:                                  ; preds = %function_call
  store i64 %f1_2610, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_82:                              ; preds = %is_closure_82
  %tuple_11115 = load i64, i64* %tuple_111, align 4
  %lambda_non_tail_call_result = call i64 %function(i64 %f1_2610, i64 2, i64 %tuple_11115)
  br label %let_8

call_error_func13:                                ; preds = %is_closure_82
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val14 = call i64 @error_func(i64 17)
  unreachable

let_8:                                            ; preds = %is_correct_arity_82
  %app_109 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_109, align 4
  br label %let_9

let_9:                                            ; preds = %let_8
  %x_121 = alloca i64, align 8
  store i64 4, i64* %x_121, align 4
  br label %construct_tuple_78

construct_tuple_78:                               ; preds = %let_9
  %x_12116 = load i64, i64* %x_121, align 4
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_78 = bitcast i8* %malloccall17 to { i64, i64, i64 }*
  %23 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_78, i32 0, i32 0
  %24 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_78, i32 0, i32 1
  %25 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_78, i32 0, i32 2
  store i64 4, i64* %23, align 4
  store i64 %x_12116, i64* %24, align 4
  store i64 6, i64* %25, align 4
  %tuple_addr_78 = ptrtoint { i64, i64, i64 }* %tuple_ptr_78 to i64
  %tuple_tagged_tuple_addr_word_78 = add i64 %tuple_addr_78, 1
  br label %let_10

let_10:                                           ; preds = %construct_tuple_78
  %tuple_126 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_78, i64* %tuple_126, align 4
  br label %plus_75

plus_75:                                          ; preds = %let_10
  br i1 true, label %arg1_type_check_passed_75, label %call_error_func18

arg1_type_check_passed_75:                        ; preds = %plus_75
  br i1 true, label %arg2_type_check_passed_75, label %call_error_func20

call_error_func18:                                ; preds = %plus_75
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val19 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_75:                        ; preds = %arg1_type_check_passed_75
  br i1 true, label %continue_no_overflow_75, label %call_error_func22

call_error_func20:                                ; preds = %arg1_type_check_passed_75
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val21 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_75:                          ; preds = %arg2_type_check_passed_75
  %plus_snake_result_75 = phi i64 [ 6, %arg2_type_check_passed_75 ]
  br label %let_11

call_error_func22:                                ; preds = %arg2_type_check_passed_75
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val23 = call i64 @error_func(i64 5)
  unreachable

let_11:                                           ; preds = %continue_no_overflow_75
  %b1_100 = alloca i64, align 8
  store i64 %plus_snake_result_75, i64* %b1_100, align 4
  br label %construct_tuple_72

construct_tuple_72:                               ; preds = %let_11
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_72 = bitcast i8* %malloccall24 to { i64, i64, i64 }*
  %26 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_72, i32 0, i32 0
  %27 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_72, i32 0, i32 1
  %28 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_72, i32 0, i32 2
  store i64 4, i64* %26, align 4
  store i64 4, i64* %27, align 4
  store i64 6, i64* %28, align 4
  %tuple_addr_72 = ptrtoint { i64, i64, i64 }* %tuple_ptr_72 to i64
  %tuple_tagged_tuple_addr_word_72 = add i64 %tuple_addr_72, 1
  br label %let_12

let_12:                                           ; preds = %construct_tuple_72
  %tuple_136 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_72, i64* %tuple_136, align 4
  br label %construct_tuple_68

construct_tuple_68:                               ; preds = %let_12
  %tuple_13625 = load i64, i64* %tuple_136, align 4
  %malloccall26 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_68 = bitcast i8* %malloccall26 to { i64, i64, i64, i64 }*
  %29 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_68, i32 0, i32 0
  %30 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_68, i32 0, i32 1
  %31 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_68, i32 0, i32 2
  %32 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_68, i32 0, i32 3
  store i64 6, i64* %29, align 4
  store i64 -1, i64* %30, align 4
  store i64 2, i64* %31, align 4
  store i64 %tuple_13625, i64* %32, align 4
  %tuple_addr_68 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_68 to i64
  %tuple_tagged_tuple_addr_word_68 = add i64 %tuple_addr_68, 1
  br label %let_13

let_13:                                           ; preds = %construct_tuple_68
  %t1_132 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_68, i64* %t1_132, align 4
  br label %get_item_65

get_item_65:                                      ; preds = %let_13
  %t1_13227 = load i64, i64* %t1_132, align 4
  %is_not_nil = icmp ne i64 %t1_13227, 1
  br i1 %is_not_nil, label %it_not_nil_65, label %call_error_func28

it_not_nil_65:                                    ; preds = %get_item_65
  %tag_bits_of_tup_val = and i64 %t1_13227, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_65, label %call_error_func30

call_error_func28:                                ; preds = %get_item_65
  store i64 %t1_13227, i64* @current_answer_ptr, align 4
  %error_call_return_val29 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_65:                                   ; preds = %it_not_nil_65
  br i1 true, label %it_is_integer_65, label %call_error_func32

call_error_func30:                                ; preds = %it_not_nil_65
  store i64 %t1_13227, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_65:                                 ; preds = %it_is_tuple_65
  %untagged_tuple_addr = sub i64 %t1_13227, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_65, label %call_error_func34

call_error_func32:                                ; preds = %it_is_tuple_65
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_65:                           ; preds = %it_is_integer_65
  br i1 true, label %index_is_not_negative_65, label %call_error_func36

call_error_func34:                                ; preds = %it_is_integer_65
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val35 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_65:                         ; preds = %index_is_less_tha_n_65
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_14

call_error_func36:                                ; preds = %index_is_less_tha_n_65
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val37 = call i64 @error_func(i64 7)
  unreachable

let_14:                                           ; preds = %index_is_not_negative_65
  %getitem_143 = alloca i64, align 8
  store i64 %accessed_element, i64* %getitem_143, align 4
  br label %if_else_61

if_else_61:                                       ; preds = %let_14
  %getitem_14338 = load i64, i64* %getitem_143, align 4
  %tag_bits_of_cond_val = and i64 %getitem_14338, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_61, label %call_error_func39

continue_if_else_61:                              ; preds = %if_else_61
  %is_cond_true = icmp eq i64 %getitem_14338, -1
  br i1 %is_cond_true, label %then_61, label %else_61

call_error_func39:                                ; preds = %if_else_61
  store i64 %getitem_14338, i64* @current_answer_ptr, align 4
  %error_call_return_val40 = call i64 @error_func(i64 4)
  unreachable

then_61:                                          ; preds = %continue_if_else_61
  br label %merge_then_else_61

else_61:                                          ; preds = %continue_if_else_61
  br label %merge_then_else_61

merge_then_else_61:                               ; preds = %else_61, %then_61
  %"if/else_snake_result_61" = phi i64 [ 2, %then_61 ], [ 4, %else_61 ]
  br label %let_15

let_15:                                           ; preds = %merge_then_else_61
  %b2_141 = alloca i64, align 8
  store i64 %"if/else_snake_result_61", i64* %b2_141, align 4
  br label %construct_tuple_58

construct_tuple_58:                               ; preds = %let_15
  %malloccall41 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_58 = bitcast i8* %malloccall41 to { i64, i64, i64 }*
  %33 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_58, i32 0, i32 0
  %34 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_58, i32 0, i32 1
  %35 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_58, i32 0, i32 2
  store i64 4, i64* %33, align 4
  store i64 6, i64* %34, align 4
  store i64 8, i64* %35, align 4
  %tuple_addr_58 = ptrtoint { i64, i64, i64 }* %tuple_ptr_58 to i64
  %tuple_tagged_tuple_addr_word_58 = add i64 %tuple_addr_58, 1
  br label %let_16

let_16:                                           ; preds = %construct_tuple_58
  %tuple_156 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_58, i64* %tuple_156, align 4
  br label %construct_tuple_54

construct_tuple_54:                               ; preds = %let_16
  %tuple_15642 = load i64, i64* %tuple_156, align 4
  %malloccall43 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_54 = bitcast i8* %malloccall43 to { i64, i64, i64, i64 }*
  %36 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_54, i32 0, i32 0
  %37 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_54, i32 0, i32 1
  %38 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_54, i32 0, i32 2
  %39 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_54, i32 0, i32 3
  store i64 6, i64* %36, align 4
  store i64 4, i64* %37, align 4
  store i64 %tuple_15642, i64* %38, align 4
  store i64 10, i64* %39, align 4
  %tuple_addr_54 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_54 to i64
  %tuple_tagged_tuple_addr_word_54 = add i64 %tuple_addr_54, 1
  br label %let_17

let_17:                                           ; preds = %construct_tuple_54
  %tuple_154 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_54, i64* %tuple_154, align 4
  br label %function_call44

function_call44:                                  ; preds = %let_17
  %f1_2645 = load i64, i64* %f1_26, align 4
  %tag_bits_of_closure_of_func_to_call46 = and i64 %f1_2645, 7
  %is_closure_of_func_to_call_closure47 = icmp eq i64 %tag_bits_of_closure_of_func_to_call46, 5
  br i1 %is_closure_of_func_to_call_closure47, label %is_closure_50, label %call_error_func48

is_closure_50:                                    ; preds = %function_call44
  %untagged_closure_addr50 = sub i64 %f1_2645, 5
  %closure_ptr51 = inttoptr i64 %untagged_closure_addr50 to i64*
  %function_code_ptr_as_i6452 = load i64, i64* %closure_ptr51, align 4
  %function53 = inttoptr i64 %function_code_ptr_as_i6452 to i64 (i64, i64, i64)*
  %arity_ptr54 = getelementptr i64, i64* %closure_ptr51, i64 1
  %arity55 = load i64, i64* %arity_ptr54, align 4
  %40 = icmp eq i64 %arity55, 4
  br i1 %40, label %is_correct_arity_50, label %call_error_func56

call_error_func48:                                ; preds = %function_call44
  store i64 %f1_2645, i64* @current_answer_ptr, align 4
  %error_call_return_val49 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_50:                              ; preds = %is_closure_50
  %tuple_15458 = load i64, i64* %tuple_154, align 4
  %lambda_non_tail_call_result59 = call i64 %function53(i64 %f1_2645, i64 2, i64 %tuple_15458)
  br label %let_18

call_error_func56:                                ; preds = %is_closure_50
  store i64 %arity55, i64* @current_answer_ptr, align 4
  %error_call_return_val57 = call i64 @error_func(i64 17)
  unreachable

let_18:                                           ; preds = %is_correct_arity_50
  %app_152 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result59, i64* %app_152, align 4
  br label %check_size_47

check_size_47:                                    ; preds = %let_18
  %app_15260 = load i64, i64* %app_152, align 4
  %tag_bits_of_e1_val = and i64 %app_15260, 7
  %is_e1_val_tuple = icmp eq i64 %tag_bits_of_e1_val, 1
  br i1 %is_e1_val_tuple, label %e1_is_tuple_47, label %call_error_func61

e1_is_tuple_47:                                   ; preds = %check_size_47
  %untagged_tuple_addr63 = sub i64 %app_15260, 1
  %tuple_ptr64 = inttoptr i64 %untagged_tuple_addr63 to i64*
  %num_elements_ptr65 = getelementptr i64, i64* %tuple_ptr64, i64 0
  %num_elements66 = load i64, i64* %num_elements_ptr65, align 4
  %41 = icmp eq i64 %num_elements66, 6
  br i1 %41, label %arity_is_matching_47, label %call_error_func67

call_error_func61:                                ; preds = %check_size_47
  store i64 %app_15260, i64* @current_answer_ptr, align 4
  %error_call_return_val62 = call i64 @error_func(i64 6)
  unreachable

arity_is_matching_47:                             ; preds = %e1_is_tuple_47
  %result = phi i64 [ %app_15260, %e1_is_tuple_47 ]
  br label %let_19

call_error_func67:                                ; preds = %e1_is_tuple_47
  store i64 6, i64* @current_answer_ptr, align 4
  %error_call_return_val68 = call i64 @error_func(i64 19)
  unreachable

let_19:                                           ; preds = %arity_is_matching_47
  %let_tuple_1_150 = alloca i64, align 8
  store i64 %result, i64* %let_tuple_1_150, align 4
  br label %get_item_44

get_item_44:                                      ; preds = %let_19
  %let_tuple_1_15069 = load i64, i64* %let_tuple_1_150, align 4
  %is_not_nil70 = icmp ne i64 %let_tuple_1_15069, 1
  br i1 %is_not_nil70, label %it_not_nil_44, label %call_error_func71

it_not_nil_44:                                    ; preds = %get_item_44
  %tag_bits_of_tup_val73 = and i64 %let_tuple_1_15069, 7
  %is_tup_val_tuple74 = icmp eq i64 %tag_bits_of_tup_val73, 1
  br i1 %is_tup_val_tuple74, label %it_is_tuple_44, label %call_error_func75

call_error_func71:                                ; preds = %get_item_44
  store i64 %let_tuple_1_15069, i64* @current_answer_ptr, align 4
  %error_call_return_val72 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_44:                                   ; preds = %it_not_nil_44
  br i1 true, label %it_is_integer_44, label %call_error_func77

call_error_func75:                                ; preds = %it_not_nil_44
  store i64 %let_tuple_1_15069, i64* @current_answer_ptr, align 4
  %error_call_return_val76 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_44:                                 ; preds = %it_is_tuple_44
  %untagged_tuple_addr79 = sub i64 %let_tuple_1_15069, 1
  %tuple_ptr80 = inttoptr i64 %untagged_tuple_addr79 to i64*
  %num_elements_ptr81 = getelementptr i64, i64* %tuple_ptr80, i64 0
  %num_elements82 = load i64, i64* %num_elements_ptr81, align 4
  %index_is_less_than_n83 = icmp slt i64 0, %num_elements82
  br i1 %index_is_less_than_n83, label %index_is_less_tha_n_44, label %call_error_func84

call_error_func77:                                ; preds = %it_is_tuple_44
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val78 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_44:                           ; preds = %it_is_integer_44
  br i1 true, label %index_is_not_negative_44, label %call_error_func86

call_error_func84:                                ; preds = %it_is_integer_44
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val85 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_44:                         ; preds = %index_is_less_tha_n_44
  %index_element_ptr88 = getelementptr i64, i64* %tuple_ptr80, i64 1
  %accessed_element89 = load i64, i64* %index_element_ptr88, align 4
  br label %let_20

call_error_func86:                                ; preds = %index_is_less_tha_n_44
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val87 = call i64 @error_func(i64 7)
  unreachable

let_20:                                           ; preds = %index_is_not_negative_44
  %a1_163 = alloca i64, align 8
  store i64 %accessed_element89, i64* %a1_163, align 4
  br label %get_item_41

get_item_41:                                      ; preds = %let_20
  %let_tuple_1_15090 = load i64, i64* %let_tuple_1_150, align 4
  %is_not_nil91 = icmp ne i64 %let_tuple_1_15090, 1
  br i1 %is_not_nil91, label %it_not_nil_41, label %call_error_func92

it_not_nil_41:                                    ; preds = %get_item_41
  %tag_bits_of_tup_val94 = and i64 %let_tuple_1_15090, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_41, label %call_error_func96

call_error_func92:                                ; preds = %get_item_41
  store i64 %let_tuple_1_15090, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_41:                                   ; preds = %it_not_nil_41
  br i1 true, label %it_is_integer_41, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_41
  store i64 %let_tuple_1_15090, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_41:                                 ; preds = %it_is_tuple_41
  %untagged_tuple_addr100 = sub i64 %let_tuple_1_15090, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 2, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_41, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_41
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_41:                           ; preds = %it_is_integer_41
  br i1 true, label %index_is_not_negative_41, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_41
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_41:                         ; preds = %index_is_less_tha_n_41
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 2
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_21

call_error_func107:                               ; preds = %index_is_less_tha_n_41
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_21:                                           ; preds = %index_is_not_negative_41
  %getitem_171 = alloca i64, align 8
  store i64 %accessed_element110, i64* %getitem_171, align 4
  br label %get_item_38

get_item_38:                                      ; preds = %let_21
  %getitem_171111 = load i64, i64* %getitem_171, align 4
  %is_not_nil112 = icmp ne i64 %getitem_171111, 1
  br i1 %is_not_nil112, label %it_not_nil_38, label %call_error_func113

it_not_nil_38:                                    ; preds = %get_item_38
  %tag_bits_of_tup_val115 = and i64 %getitem_171111, 7
  %is_tup_val_tuple116 = icmp eq i64 %tag_bits_of_tup_val115, 1
  br i1 %is_tup_val_tuple116, label %it_is_tuple_38, label %call_error_func117

call_error_func113:                               ; preds = %get_item_38
  store i64 %getitem_171111, i64* @current_answer_ptr, align 4
  %error_call_return_val114 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_38:                                   ; preds = %it_not_nil_38
  br i1 true, label %it_is_integer_38, label %call_error_func119

call_error_func117:                               ; preds = %it_not_nil_38
  store i64 %getitem_171111, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_38:                                 ; preds = %it_is_tuple_38
  %untagged_tuple_addr121 = sub i64 %getitem_171111, 1
  %tuple_ptr122 = inttoptr i64 %untagged_tuple_addr121 to i64*
  %num_elements_ptr123 = getelementptr i64, i64* %tuple_ptr122, i64 0
  %num_elements124 = load i64, i64* %num_elements_ptr123, align 4
  %index_is_less_than_n125 = icmp slt i64 0, %num_elements124
  br i1 %index_is_less_than_n125, label %index_is_less_tha_n_38, label %call_error_func126

call_error_func119:                               ; preds = %it_is_tuple_38
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val120 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_38:                           ; preds = %it_is_integer_38
  br i1 true, label %index_is_not_negative_38, label %call_error_func128

call_error_func126:                               ; preds = %it_is_integer_38
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val127 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_38:                         ; preds = %index_is_less_tha_n_38
  %index_element_ptr130 = getelementptr i64, i64* %tuple_ptr122, i64 1
  %accessed_element131 = load i64, i64* %index_element_ptr130, align 4
  br label %let_22

call_error_func128:                               ; preds = %index_is_less_tha_n_38
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val129 = call i64 @error_func(i64 7)
  unreachable

let_22:                                           ; preds = %index_is_not_negative_38
  %a2_168 = alloca i64, align 8
  store i64 %accessed_element131, i64* %a2_168, align 4
  br label %get_item_35

get_item_35:                                      ; preds = %let_22
  %let_tuple_1_150132 = load i64, i64* %let_tuple_1_150, align 4
  %is_not_nil133 = icmp ne i64 %let_tuple_1_150132, 1
  br i1 %is_not_nil133, label %it_not_nil_35, label %call_error_func134

it_not_nil_35:                                    ; preds = %get_item_35
  %tag_bits_of_tup_val136 = and i64 %let_tuple_1_150132, 7
  %is_tup_val_tuple137 = icmp eq i64 %tag_bits_of_tup_val136, 1
  br i1 %is_tup_val_tuple137, label %it_is_tuple_35, label %call_error_func138

call_error_func134:                               ; preds = %get_item_35
  store i64 %let_tuple_1_150132, i64* @current_answer_ptr, align 4
  %error_call_return_val135 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_35:                                   ; preds = %it_not_nil_35
  br i1 true, label %it_is_integer_35, label %call_error_func140

call_error_func138:                               ; preds = %it_not_nil_35
  store i64 %let_tuple_1_150132, i64* @current_answer_ptr, align 4
  %error_call_return_val139 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_35:                                 ; preds = %it_is_tuple_35
  %untagged_tuple_addr142 = sub i64 %let_tuple_1_150132, 1
  %tuple_ptr143 = inttoptr i64 %untagged_tuple_addr142 to i64*
  %num_elements_ptr144 = getelementptr i64, i64* %tuple_ptr143, i64 0
  %num_elements145 = load i64, i64* %num_elements_ptr144, align 4
  %index_is_less_than_n146 = icmp slt i64 2, %num_elements145
  br i1 %index_is_less_than_n146, label %index_is_less_tha_n_35, label %call_error_func147

call_error_func140:                               ; preds = %it_is_tuple_35
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val141 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_35:                           ; preds = %it_is_integer_35
  br i1 true, label %index_is_not_negative_35, label %call_error_func149

call_error_func147:                               ; preds = %it_is_integer_35
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val148 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_35:                         ; preds = %index_is_less_tha_n_35
  %index_element_ptr151 = getelementptr i64, i64* %tuple_ptr143, i64 2
  %accessed_element152 = load i64, i64* %index_element_ptr151, align 4
  br label %let_23

call_error_func149:                               ; preds = %index_is_less_tha_n_35
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val150 = call i64 @error_func(i64 7)
  unreachable

let_23:                                           ; preds = %index_is_not_negative_35
  %getitem_178 = alloca i64, align 8
  store i64 %accessed_element152, i64* %getitem_178, align 4
  br label %get_item_32

get_item_32:                                      ; preds = %let_23
  %getitem_178153 = load i64, i64* %getitem_178, align 4
  %is_not_nil154 = icmp ne i64 %getitem_178153, 1
  br i1 %is_not_nil154, label %it_not_nil_32, label %call_error_func155

it_not_nil_32:                                    ; preds = %get_item_32
  %tag_bits_of_tup_val157 = and i64 %getitem_178153, 7
  %is_tup_val_tuple158 = icmp eq i64 %tag_bits_of_tup_val157, 1
  br i1 %is_tup_val_tuple158, label %it_is_tuple_32, label %call_error_func159

call_error_func155:                               ; preds = %get_item_32
  store i64 %getitem_178153, i64* @current_answer_ptr, align 4
  %error_call_return_val156 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_32:                                   ; preds = %it_not_nil_32
  br i1 true, label %it_is_integer_32, label %call_error_func161

call_error_func159:                               ; preds = %it_not_nil_32
  store i64 %getitem_178153, i64* @current_answer_ptr, align 4
  %error_call_return_val160 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_32:                                 ; preds = %it_is_tuple_32
  %untagged_tuple_addr163 = sub i64 %getitem_178153, 1
  %tuple_ptr164 = inttoptr i64 %untagged_tuple_addr163 to i64*
  %num_elements_ptr165 = getelementptr i64, i64* %tuple_ptr164, i64 0
  %num_elements166 = load i64, i64* %num_elements_ptr165, align 4
  %index_is_less_than_n167 = icmp slt i64 2, %num_elements166
  br i1 %index_is_less_than_n167, label %index_is_less_tha_n_32, label %call_error_func168

call_error_func161:                               ; preds = %it_is_tuple_32
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val162 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_32:                           ; preds = %it_is_integer_32
  br i1 true, label %index_is_not_negative_32, label %call_error_func170

call_error_func168:                               ; preds = %it_is_integer_32
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val169 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_32:                         ; preds = %index_is_less_tha_n_32
  %index_element_ptr172 = getelementptr i64, i64* %tuple_ptr164, i64 2
  %accessed_element173 = load i64, i64* %index_element_ptr172, align 4
  br label %let_24

call_error_func170:                               ; preds = %index_is_less_tha_n_32
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val171 = call i64 @error_func(i64 7)
  unreachable

let_24:                                           ; preds = %index_is_not_negative_32
  %a3_175 = alloca i64, align 8
  store i64 %accessed_element173, i64* %a3_175, align 4
  br label %construct_tuple_29

construct_tuple_29:                               ; preds = %let_24
  %a2_168174 = load i64, i64* %a2_168, align 4
  %a3_175175 = load i64, i64* %a3_175, align 4
  %malloccall176 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_29 = bitcast i8* %malloccall176 to { i64, i64, i64 }*
  %42 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_29, i32 0, i32 0
  %43 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_29, i32 0, i32 1
  %44 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_29, i32 0, i32 2
  store i64 4, i64* %42, align 4
  store i64 %a2_168174, i64* %43, align 4
  store i64 %a3_175175, i64* %44, align 4
  %tuple_addr_29 = ptrtoint { i64, i64, i64 }* %tuple_ptr_29 to i64
  %tuple_tagged_tuple_addr_word_29 = add i64 %tuple_addr_29, 1
  br label %let_25

let_25:                                           ; preds = %construct_tuple_29
  %tuple_183 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_29, i64* %tuple_183, align 4
  br label %construct_tuple_26

construct_tuple_26:                               ; preds = %let_25
  %a1_163177 = load i64, i64* %a1_163, align 4
  %tuple_183178 = load i64, i64* %tuple_183, align 4
  %malloccall179 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_26 = bitcast i8* %malloccall179 to { i64, i64, i64 }*
  %45 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_26, i32 0, i32 0
  %46 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_26, i32 0, i32 1
  %47 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_26, i32 0, i32 2
  store i64 4, i64* %45, align 4
  store i64 %a1_163177, i64* %46, align 4
  store i64 %tuple_183178, i64* %47, align 4
  %tuple_addr_26 = ptrtoint { i64, i64, i64 }* %tuple_ptr_26 to i64
  %tuple_tagged_tuple_addr_word_26 = add i64 %tuple_addr_26, 1
  br label %result180

result180:                                        ; preds = %construct_tuple_26
  ret i64 %tuple_tagged_tuple_addr_word_26
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

define i64 @lambda_173_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_174

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_174 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_170_(i64 %0) {
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
  ret i64 %input_tail_call_result_171

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_171 = tail call i64 @input()
  br label %return
}

define i64 @lambda_165_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_166

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_166 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_110_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %"free_var_'f1_26'_ptr" = getelementptr i64, i64* %closure_ptr, i64 2
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_162

return:                                           ; preds = %merge_then_else_118
  ret i64 %"if/else_snake_result_118"

get_item_162:                                     ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_162, label %call_error_func

it_not_nil_162:                                   ; preds = %get_item_162
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_162, label %call_error_func1

call_error_func:                                  ; preds = %get_item_162
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_162:                                  ; preds = %it_not_nil_162
  br i1 true, label %it_is_integer_162, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_162
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_162:                                ; preds = %it_is_tuple_162
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_162, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_162
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_162:                          ; preds = %it_is_integer_162
  br i1 true, label %index_is_not_negative_162, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_162
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_162:                        ; preds = %index_is_less_tha_n_162
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_111

call_error_func7:                                 ; preds = %index_is_less_tha_n_162
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_111:                                          ; preds = %index_is_not_negative_162
  %x2_30 = alloca i64, align 8
  store i64 %accessed_element, i64* %x2_30, align 4
  br label %get_item_159

get_item_159:                                     ; preds = %let_111
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_159, label %call_error_func10

it_not_nil_159:                                   ; preds = %get_item_159
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_159, label %call_error_func14

call_error_func10:                                ; preds = %get_item_159
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_159:                                  ; preds = %it_not_nil_159
  br i1 true, label %it_is_integer_159, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_159
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_159:                                ; preds = %it_is_tuple_159
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_159, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_159
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_159:                          ; preds = %it_is_integer_159
  br i1 true, label %index_is_not_negative_159, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_159
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_159:                        ; preds = %index_is_less_tha_n_159
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_112

call_error_func25:                                ; preds = %index_is_less_tha_n_159
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_112:                                          ; preds = %index_is_not_negative_159
  %getitem_38 = alloca i64, align 8
  store i64 %accessed_element28, i64* %getitem_38, align 4
  br label %get_item_156

get_item_156:                                     ; preds = %let_112
  %getitem_3829 = load i64, i64* %getitem_38, align 4
  %is_not_nil30 = icmp ne i64 %getitem_3829, 1
  br i1 %is_not_nil30, label %it_not_nil_156, label %call_error_func31

it_not_nil_156:                                   ; preds = %get_item_156
  %tag_bits_of_tup_val33 = and i64 %getitem_3829, 7
  %is_tup_val_tuple34 = icmp eq i64 %tag_bits_of_tup_val33, 1
  br i1 %is_tup_val_tuple34, label %it_is_tuple_156, label %call_error_func35

call_error_func31:                                ; preds = %get_item_156
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_156:                                  ; preds = %it_not_nil_156
  br i1 true, label %it_is_integer_156, label %call_error_func37

call_error_func35:                                ; preds = %it_not_nil_156
  store i64 %getitem_3829, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_156:                                ; preds = %it_is_tuple_156
  %untagged_tuple_addr39 = sub i64 %getitem_3829, 1
  %tuple_ptr40 = inttoptr i64 %untagged_tuple_addr39 to i64*
  %num_elements_ptr41 = getelementptr i64, i64* %tuple_ptr40, i64 0
  %num_elements42 = load i64, i64* %num_elements_ptr41, align 4
  %index_is_less_than_n43 = icmp slt i64 0, %num_elements42
  br i1 %index_is_less_than_n43, label %index_is_less_tha_n_156, label %call_error_func44

call_error_func37:                                ; preds = %it_is_tuple_156
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val38 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_156:                          ; preds = %it_is_integer_156
  br i1 true, label %index_is_not_negative_156, label %call_error_func46

call_error_func44:                                ; preds = %it_is_integer_156
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_156:                        ; preds = %index_is_less_tha_n_156
  %index_element_ptr48 = getelementptr i64, i64* %tuple_ptr40, i64 1
  %accessed_element49 = load i64, i64* %index_element_ptr48, align 4
  br label %let_113

call_error_func46:                                ; preds = %index_is_less_tha_n_156
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 7)
  unreachable

let_113:                                          ; preds = %index_is_not_negative_156
  %x3_35 = alloca i64, align 8
  store i64 %accessed_element49, i64* %x3_35, align 4
  br label %get_item_153

get_item_153:                                     ; preds = %let_113
  %is_not_nil50 = icmp ne i64 %2, 1
  br i1 %is_not_nil50, label %it_not_nil_153, label %call_error_func51

it_not_nil_153:                                   ; preds = %get_item_153
  %tag_bits_of_tup_val53 = and i64 %2, 7
  %is_tup_val_tuple54 = icmp eq i64 %tag_bits_of_tup_val53, 1
  br i1 %is_tup_val_tuple54, label %it_is_tuple_153, label %call_error_func55

call_error_func51:                                ; preds = %get_item_153
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val52 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_153:                                  ; preds = %it_not_nil_153
  br i1 true, label %it_is_integer_153, label %call_error_func57

call_error_func55:                                ; preds = %it_not_nil_153
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val56 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_153:                                ; preds = %it_is_tuple_153
  %untagged_tuple_addr59 = sub i64 %2, 1
  %tuple_ptr60 = inttoptr i64 %untagged_tuple_addr59 to i64*
  %num_elements_ptr61 = getelementptr i64, i64* %tuple_ptr60, i64 0
  %num_elements62 = load i64, i64* %num_elements_ptr61, align 4
  %index_is_less_than_n63 = icmp slt i64 2, %num_elements62
  br i1 %index_is_less_than_n63, label %index_is_less_tha_n_153, label %call_error_func64

call_error_func57:                                ; preds = %it_is_tuple_153
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val58 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_153:                          ; preds = %it_is_integer_153
  br i1 true, label %index_is_not_negative_153, label %call_error_func66

call_error_func64:                                ; preds = %it_is_integer_153
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_153:                        ; preds = %index_is_less_tha_n_153
  %index_element_ptr68 = getelementptr i64, i64* %tuple_ptr60, i64 2
  %accessed_element69 = load i64, i64* %index_element_ptr68, align 4
  br label %let_114

call_error_func66:                                ; preds = %index_is_less_tha_n_153
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val67 = call i64 @error_func(i64 7)
  unreachable

let_114:                                          ; preds = %index_is_not_negative_153
  %getitem_45 = alloca i64, align 8
  store i64 %accessed_element69, i64* %getitem_45, align 4
  br label %get_item_150

get_item_150:                                     ; preds = %let_114
  %getitem_4570 = load i64, i64* %getitem_45, align 4
  %is_not_nil71 = icmp ne i64 %getitem_4570, 1
  br i1 %is_not_nil71, label %it_not_nil_150, label %call_error_func72

it_not_nil_150:                                   ; preds = %get_item_150
  %tag_bits_of_tup_val74 = and i64 %getitem_4570, 7
  %is_tup_val_tuple75 = icmp eq i64 %tag_bits_of_tup_val74, 1
  br i1 %is_tup_val_tuple75, label %it_is_tuple_150, label %call_error_func76

call_error_func72:                                ; preds = %get_item_150
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_150:                                  ; preds = %it_not_nil_150
  br i1 true, label %it_is_integer_150, label %call_error_func78

call_error_func76:                                ; preds = %it_not_nil_150
  store i64 %getitem_4570, i64* @current_answer_ptr, align 4
  %error_call_return_val77 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_150:                                ; preds = %it_is_tuple_150
  %untagged_tuple_addr80 = sub i64 %getitem_4570, 1
  %tuple_ptr81 = inttoptr i64 %untagged_tuple_addr80 to i64*
  %num_elements_ptr82 = getelementptr i64, i64* %tuple_ptr81, i64 0
  %num_elements83 = load i64, i64* %num_elements_ptr82, align 4
  %index_is_less_than_n84 = icmp slt i64 2, %num_elements83
  br i1 %index_is_less_than_n84, label %index_is_less_tha_n_150, label %call_error_func85

call_error_func78:                                ; preds = %it_is_tuple_150
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val79 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_150:                          ; preds = %it_is_integer_150
  br i1 true, label %index_is_not_negative_150, label %call_error_func87

call_error_func85:                                ; preds = %it_is_integer_150
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val86 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_150:                        ; preds = %index_is_less_tha_n_150
  %index_element_ptr89 = getelementptr i64, i64* %tuple_ptr81, i64 2
  %accessed_element90 = load i64, i64* %index_element_ptr89, align 4
  br label %let_115

call_error_func87:                                ; preds = %index_is_less_tha_n_150
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val88 = call i64 @error_func(i64 7)
  unreachable

let_115:                                          ; preds = %index_is_not_negative_150
  %x4_42 = alloca i64, align 8
  store i64 %accessed_element90, i64* %x4_42, align 4
  br label %get_item_147

get_item_147:                                     ; preds = %let_115
  %is_not_nil91 = icmp ne i64 %2, 1
  br i1 %is_not_nil91, label %it_not_nil_147, label %call_error_func92

it_not_nil_147:                                   ; preds = %get_item_147
  %tag_bits_of_tup_val94 = and i64 %2, 7
  %is_tup_val_tuple95 = icmp eq i64 %tag_bits_of_tup_val94, 1
  br i1 %is_tup_val_tuple95, label %it_is_tuple_147, label %call_error_func96

call_error_func92:                                ; preds = %get_item_147
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val93 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_147:                                  ; preds = %it_not_nil_147
  br i1 true, label %it_is_integer_147, label %call_error_func98

call_error_func96:                                ; preds = %it_not_nil_147
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val97 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_147:                                ; preds = %it_is_tuple_147
  %untagged_tuple_addr100 = sub i64 %2, 1
  %tuple_ptr101 = inttoptr i64 %untagged_tuple_addr100 to i64*
  %num_elements_ptr102 = getelementptr i64, i64* %tuple_ptr101, i64 0
  %num_elements103 = load i64, i64* %num_elements_ptr102, align 4
  %index_is_less_than_n104 = icmp slt i64 4, %num_elements103
  br i1 %index_is_less_than_n104, label %index_is_less_tha_n_147, label %call_error_func105

call_error_func98:                                ; preds = %it_is_tuple_147
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val99 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_147:                          ; preds = %it_is_integer_147
  br i1 true, label %index_is_not_negative_147, label %call_error_func107

call_error_func105:                               ; preds = %it_is_integer_147
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val106 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_147:                        ; preds = %index_is_less_tha_n_147
  %index_element_ptr109 = getelementptr i64, i64* %tuple_ptr101, i64 3
  %accessed_element110 = load i64, i64* %index_element_ptr109, align 4
  br label %let_116

call_error_func107:                               ; preds = %index_is_less_tha_n_147
  store i64 4, i64* @current_answer_ptr, align 4
  %error_call_return_val108 = call i64 @error_func(i64 7)
  unreachable

let_116:                                          ; preds = %index_is_not_negative_147
  %x5_49 = alloca i64, align 8
  store i64 %accessed_element110, i64* %x5_49, align 4
  br label %greater_eq_144

greater_eq_144:                                   ; preds = %let_116
  %x5_49111 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1 = and i64 %x5_49111, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_144, label %call_error_func112

arg1_type_check_passed_144:                       ; preds = %greater_eq_144
  br i1 true, label %arg2_type_check_passed_144, label %call_error_func114

call_error_func112:                               ; preds = %greater_eq_144
  store i64 %x5_49111, i64* @current_answer_ptr, align 4
  %error_call_return_val113 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_144:                       ; preds = %arg1_type_check_passed_144
  %greater_eq_llvm_result_144 = icmp sge i64 %x5_49111, 20
  br i1 %greater_eq_llvm_result_144, label %comp_is_true_144, label %comp_is_false_144

call_error_func114:                               ; preds = %arg1_type_check_passed_144
  store i64 20, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_144:                                 ; preds = %arg2_type_check_passed_144
  br label %merge_144

comp_is_false_144:                                ; preds = %arg2_type_check_passed_144
  br label %merge_144

merge_144:                                        ; preds = %comp_is_false_144, %comp_is_true_144
  %greater_eq_snake_result_144 = phi i64 [ -1, %comp_is_true_144 ], [ 9223372036854775807, %comp_is_false_144 ]
  br label %let_117

let_117:                                          ; preds = %merge_144
  %binop_54 = alloca i64, align 8
  store i64 %greater_eq_snake_result_144, i64* %binop_54, align 4
  br label %if_else_118

if_else_118:                                      ; preds = %let_117
  %binop_54116 = load i64, i64* %binop_54, align 4
  %tag_bits_of_cond_val = and i64 %binop_54116, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_118, label %call_error_func117

continue_if_else_118:                             ; preds = %if_else_118
  %is_cond_true = icmp eq i64 %binop_54116, -1
  br i1 %is_cond_true, label %then_118, label %else_118

call_error_func117:                               ; preds = %if_else_118
  store i64 %binop_54116, i64* @current_answer_ptr, align 4
  %error_call_return_val118 = call i64 @error_func(i64 4)
  unreachable

then_118:                                         ; preds = %continue_if_else_118
  br label %construct_tuple_140

else_118:                                         ; preds = %continue_if_else_118
  br label %construct_tuple_133

merge_then_else_118:                              ; preds = %is_correct_arity_122, %construct_tuple_137
  %"if/else_snake_result_118" = phi i64 [ %tuple_tagged_tuple_addr_word_137, %construct_tuple_137 ], [ %lambda_tail_call_result, %is_correct_arity_122 ]
  br label %return

construct_tuple_140:                              ; preds = %then_118
  %x3_35119 = load i64, i64* %x3_35, align 4
  %x4_42120 = load i64, i64* %x4_42, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_140 = bitcast i8* %malloccall to { i64, i64, i64 }*
  %3 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_140, i32 0, i32 0
  %4 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_140, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_140, i32 0, i32 2
  store i64 4, i64* %3, align 4
  store i64 %x3_35119, i64* %4, align 4
  store i64 %x4_42120, i64* %5, align 4
  %tuple_addr_140 = ptrtoint { i64, i64, i64 }* %tuple_ptr_140 to i64
  %tuple_tagged_tuple_addr_word_140 = add i64 %tuple_addr_140, 1
  br label %let_136

let_136:                                          ; preds = %construct_tuple_140
  %tuple_59 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_140, i64* %tuple_59, align 4
  br label %construct_tuple_137

construct_tuple_137:                              ; preds = %let_136
  %x2_30121 = load i64, i64* %x2_30, align 4
  %tuple_59122 = load i64, i64* %tuple_59, align 4
  %malloccall123 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_137 = bitcast i8* %malloccall123 to { i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_137, i32 0, i32 0
  %7 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_137, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_137, i32 0, i32 2
  store i64 4, i64* %6, align 4
  store i64 %x2_30121, i64* %7, align 4
  store i64 %tuple_59122, i64* %8, align 4
  %tuple_addr_137 = ptrtoint { i64, i64, i64 }* %tuple_ptr_137 to i64
  %tuple_tagged_tuple_addr_word_137 = add i64 %tuple_addr_137, 1
  br label %merge_then_else_118

construct_tuple_133:                              ; preds = %else_118
  %x3_35124 = load i64, i64* %x3_35, align 4
  %x4_42125 = load i64, i64* %x4_42, align 4
  %malloccall126 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64 }* getelementptr ({ i64, i64, i64 }, { i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_133 = bitcast i8* %malloccall126 to { i64, i64, i64 }*
  %9 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_133, i32 0, i32 0
  %10 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_133, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %tuple_ptr_133, i32 0, i32 2
  store i64 4, i64* %9, align 4
  store i64 %x3_35124, i64* %10, align 4
  store i64 %x4_42125, i64* %11, align 4
  %tuple_addr_133 = ptrtoint { i64, i64, i64 }* %tuple_ptr_133 to i64
  %tuple_tagged_tuple_addr_word_133 = add i64 %tuple_addr_133, 1
  br label %let_119

let_119:                                          ; preds = %construct_tuple_133
  %tuple_66 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_133, i64* %tuple_66, align 4
  br label %plus_130

plus_130:                                         ; preds = %let_119
  %x5_49127 = load i64, i64* %x5_49, align 4
  %tag_bits_of_arg1128 = and i64 %x5_49127, 1
  %is_arg1_int129 = icmp eq i64 %tag_bits_of_arg1128, 0
  br i1 %is_arg1_int129, label %arg1_type_check_passed_130, label %call_error_func130

arg1_type_check_passed_130:                       ; preds = %plus_130
  br i1 true, label %arg2_type_check_passed_130, label %call_error_func132

call_error_func130:                               ; preds = %plus_130
  store i64 %x5_49127, i64* @current_answer_ptr, align 4
  %error_call_return_val131 = call i64 @error_func(i64 2)
  unreachable

arg2_type_check_passed_130:                       ; preds = %arg1_type_check_passed_130
  %plus_snake_result_130 = add i64 %x5_49127, 2
  %l_ge_0 = icmp sge i64 %x5_49127, 0
  %positive_overflow = and i1 %l_ge_0, true
  %sum_lt_l = icmp slt i64 %plus_snake_result_130, %x5_49127
  %sum_lt_r = icmp slt i64 %plus_snake_result_130, 2
  %overflow_on_positive = or i1 %sum_lt_l, %sum_lt_r
  %l_lt_0 = icmp slt i64 %x5_49127, 0
  %negative_overflow = and i1 %l_lt_0, false
  %sum_gt_l = icmp sgt i64 %plus_snake_result_130, %x5_49127
  %sum_gt_r = icmp sgt i64 %plus_snake_result_130, 2
  %overflow_on_negative = or i1 %sum_gt_l, %sum_gt_r
  %negative_check = and i1 %negative_overflow, %overflow_on_negative
  %positive_check = and i1 %positive_overflow, %overflow_on_positive
  %overflow = or i1 %positive_check, %negative_check
  %is_not_overflow = xor i1 %overflow, true
  br i1 %is_not_overflow, label %continue_no_overflow_130, label %call_error_func134

call_error_func132:                               ; preds = %arg1_type_check_passed_130
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val133 = call i64 @error_func(i64 2)
  unreachable

continue_no_overflow_130:                         ; preds = %arg2_type_check_passed_130
  %plus_snake_result_130136 = phi i64 [ %plus_snake_result_130, %arg2_type_check_passed_130 ]
  br label %let_120

call_error_func134:                               ; preds = %arg2_type_check_passed_130
  store i64 %plus_snake_result_130, i64* @current_answer_ptr, align 4
  %error_call_return_val135 = call i64 @error_func(i64 5)
  unreachable

let_120:                                          ; preds = %continue_no_overflow_130
  %binop_69 = alloca i64, align 8
  store i64 %plus_snake_result_130136, i64* %binop_69, align 4
  br label %construct_tuple_126

construct_tuple_126:                              ; preds = %let_120
  %x2_30137 = load i64, i64* %x2_30, align 4
  %tuple_66138 = load i64, i64* %tuple_66, align 4
  %binop_69139 = load i64, i64* %binop_69, align 4
  %malloccall140 = tail call i8* @malloc(i32 ptrtoint ({ i64, i64, i64, i64 }* getelementptr ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* null, i32 1) to i32))
  %tuple_ptr_126 = bitcast i8* %malloccall140 to { i64, i64, i64, i64 }*
  %12 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_126, i32 0, i32 0
  %13 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_126, i32 0, i32 1
  %14 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_126, i32 0, i32 2
  %15 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %tuple_ptr_126, i32 0, i32 3
  store i64 6, i64* %12, align 4
  store i64 %x2_30137, i64* %13, align 4
  store i64 %tuple_66138, i64* %14, align 4
  store i64 %binop_69139, i64* %15, align 4
  %tuple_addr_126 = ptrtoint { i64, i64, i64, i64 }* %tuple_ptr_126 to i64
  %tuple_tagged_tuple_addr_word_126 = add i64 %tuple_addr_126, 1
  br label %let_121

let_121:                                          ; preds = %construct_tuple_126
  %tuple_64 = alloca i64, align 8
  store i64 %tuple_tagged_tuple_addr_word_126, i64* %tuple_64, align 4
  br label %function_call

function_call:                                    ; preds = %let_121
  %f1_26 = load i64, i64* %"free_var_'f1_26'_ptr", align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %f1_26, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_122, label %call_error_func141

is_closure_122:                                   ; preds = %function_call
  %untagged_closure_addr143 = sub i64 %f1_26, 5
  %closure_ptr144 = inttoptr i64 %untagged_closure_addr143 to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr144, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr144, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %16 = icmp eq i64 %arity, 4
  br i1 %16, label %is_correct_arity_122, label %call_error_func145

call_error_func141:                               ; preds = %function_call
  store i64 %f1_26, i64* @current_answer_ptr, align 4
  %error_call_return_val142 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_122:                             ; preds = %is_closure_122
  %tuple_64147 = load i64, i64* %tuple_64, align 4
  %lambda_tail_call_result = tail call i64 %function(i64 %f1_26, i64 %1, i64 %tuple_64147)
  br label %merge_then_else_118

call_error_func145:                               ; preds = %is_closure_122
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val146 = call i64 @error_func(i64 17)
  unreachable
}

define i64 @lambda_93_(i64 %0, i64 %1, i64 %2) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %get_item_107

return:                                           ; preds = %merge_then_else_97
  ret i64 %"if/else_snake_result_97"

get_item_107:                                     ; preds = %lambda_body
  %is_not_nil = icmp ne i64 %2, 1
  br i1 %is_not_nil, label %it_not_nil_107, label %call_error_func

it_not_nil_107:                                   ; preds = %get_item_107
  %tag_bits_of_tup_val = and i64 %2, 7
  %is_tup_val_tuple = icmp eq i64 %tag_bits_of_tup_val, 1
  br i1 %is_tup_val_tuple, label %it_is_tuple_107, label %call_error_func1

call_error_func:                                  ; preds = %get_item_107
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_107:                                  ; preds = %it_not_nil_107
  br i1 true, label %it_is_integer_107, label %call_error_func3

call_error_func1:                                 ; preds = %it_not_nil_107
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val2 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_107:                                ; preds = %it_is_tuple_107
  %untagged_tuple_addr = sub i64 %2, 1
  %tuple_ptr = inttoptr i64 %untagged_tuple_addr to i64*
  %num_elements_ptr = getelementptr i64, i64* %tuple_ptr, i64 0
  %num_elements = load i64, i64* %num_elements_ptr, align 4
  %index_is_less_than_n = icmp slt i64 0, %num_elements
  br i1 %index_is_less_than_n, label %index_is_less_tha_n_107, label %call_error_func5

call_error_func3:                                 ; preds = %it_is_tuple_107
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val4 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_107:                          ; preds = %it_is_integer_107
  br i1 true, label %index_is_not_negative_107, label %call_error_func7

call_error_func5:                                 ; preds = %it_is_integer_107
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_107:                        ; preds = %index_is_less_tha_n_107
  %index_element_ptr = getelementptr i64, i64* %tuple_ptr, i64 1
  %accessed_element = load i64, i64* %index_element_ptr, align 4
  br label %let_94

call_error_func7:                                 ; preds = %index_is_less_tha_n_107
  store i64 0, i64* @current_answer_ptr, align 4
  %error_call_return_val8 = call i64 @error_func(i64 7)
  unreachable

let_94:                                           ; preds = %index_is_not_negative_107
  %y2_81 = alloca i64, align 8
  store i64 %accessed_element, i64* %y2_81, align 4
  br label %get_item_104

get_item_104:                                     ; preds = %let_94
  %is_not_nil9 = icmp ne i64 %2, 1
  br i1 %is_not_nil9, label %it_not_nil_104, label %call_error_func10

it_not_nil_104:                                   ; preds = %get_item_104
  %tag_bits_of_tup_val12 = and i64 %2, 7
  %is_tup_val_tuple13 = icmp eq i64 %tag_bits_of_tup_val12, 1
  br i1 %is_tup_val_tuple13, label %it_is_tuple_104, label %call_error_func14

call_error_func10:                                ; preds = %get_item_104
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val11 = call i64 @error_func(i64 10)
  unreachable

it_is_tuple_104:                                  ; preds = %it_not_nil_104
  br i1 true, label %it_is_integer_104, label %call_error_func16

call_error_func14:                                ; preds = %it_not_nil_104
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val15 = call i64 @error_func(i64 6)
  unreachable

it_is_integer_104:                                ; preds = %it_is_tuple_104
  %untagged_tuple_addr18 = sub i64 %2, 1
  %tuple_ptr19 = inttoptr i64 %untagged_tuple_addr18 to i64*
  %num_elements_ptr20 = getelementptr i64, i64* %tuple_ptr19, i64 0
  %num_elements21 = load i64, i64* %num_elements_ptr20, align 4
  %index_is_less_than_n22 = icmp slt i64 2, %num_elements21
  br i1 %index_is_less_than_n22, label %index_is_less_tha_n_104, label %call_error_func23

call_error_func16:                                ; preds = %it_is_tuple_104
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 18)
  unreachable

index_is_less_tha_n_104:                          ; preds = %it_is_integer_104
  br i1 true, label %index_is_not_negative_104, label %call_error_func25

call_error_func23:                                ; preds = %it_is_integer_104
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val24 = call i64 @error_func(i64 8)
  unreachable

index_is_not_negative_104:                        ; preds = %index_is_less_tha_n_104
  %index_element_ptr27 = getelementptr i64, i64* %tuple_ptr19, i64 2
  %accessed_element28 = load i64, i64* %index_element_ptr27, align 4
  br label %let_95

call_error_func25:                                ; preds = %index_is_less_tha_n_104
  store i64 2, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 7)
  unreachable

let_95:                                           ; preds = %index_is_not_negative_104
  %y3_86 = alloca i64, align 8
  store i64 %accessed_element28, i64* %y3_86, align 4
  br label %greater_101

greater_101:                                      ; preds = %let_95
  %y2_8129 = load i64, i64* %y2_81, align 4
  %tag_bits_of_arg1 = and i64 %1, 1
  %is_arg1_int = icmp eq i64 %tag_bits_of_arg1, 0
  br i1 %is_arg1_int, label %arg1_type_check_passed_101, label %call_error_func30

arg1_type_check_passed_101:                       ; preds = %greater_101
  %tag_bits_of_arg2 = and i64 %y2_8129, 1
  %is_arg2_int = icmp eq i64 %tag_bits_of_arg2, 0
  br i1 %is_arg2_int, label %arg2_type_check_passed_101, label %call_error_func32

call_error_func30:                                ; preds = %greater_101
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val31 = call i64 @error_func(i64 1)
  unreachable

arg2_type_check_passed_101:                       ; preds = %arg1_type_check_passed_101
  %greater_llvm_result_101 = icmp sgt i64 %1, %y2_8129
  br i1 %greater_llvm_result_101, label %comp_is_true_101, label %comp_is_false_101

call_error_func32:                                ; preds = %arg1_type_check_passed_101
  store i64 %y2_8129, i64* @current_answer_ptr, align 4
  %error_call_return_val33 = call i64 @error_func(i64 1)
  unreachable

comp_is_true_101:                                 ; preds = %arg2_type_check_passed_101
  br label %merge_101

comp_is_false_101:                                ; preds = %arg2_type_check_passed_101
  br label %merge_101

merge_101:                                        ; preds = %comp_is_false_101, %comp_is_true_101
  %greater_snake_result_101 = phi i64 [ -1, %comp_is_true_101 ], [ 9223372036854775807, %comp_is_false_101 ]
  br label %let_96

let_96:                                           ; preds = %merge_101
  %binop_91 = alloca i64, align 8
  store i64 %greater_snake_result_101, i64* %binop_91, align 4
  br label %if_else_97

if_else_97:                                       ; preds = %let_96
  %binop_9134 = load i64, i64* %binop_91, align 4
  %tag_bits_of_cond_val = and i64 %binop_9134, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_97, label %call_error_func35

continue_if_else_97:                              ; preds = %if_else_97
  %is_cond_true = icmp eq i64 %binop_9134, -1
  br i1 %is_cond_true, label %then_97, label %else_97

call_error_func35:                                ; preds = %if_else_97
  store i64 %binop_9134, i64* @current_answer_ptr, align 4
  %error_call_return_val36 = call i64 @error_func(i64 4)
  unreachable

then_97:                                          ; preds = %continue_if_else_97
  %y3_8637 = load i64, i64* %y3_86, align 4
  br label %merge_then_else_97

else_97:                                          ; preds = %continue_if_else_97
  br label %merge_then_else_97

merge_then_else_97:                               ; preds = %else_97, %then_97
  %"if/else_snake_result_97" = phi i64 [ %y3_8637, %then_97 ], [ 9223372036854775807, %else_97 ]
  br label %return
}
