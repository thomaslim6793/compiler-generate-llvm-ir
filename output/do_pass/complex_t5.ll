; ModuleID = 'my_module'
source_filename = "my_module"

@current_answer_ptr = global i64 0

define i64 @our_code_starts_here() {
entry:
  br label %create_lambda_closure_198

create_lambda_closure_198:                        ; preds = %entry
  %malloccall = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_198 = bitcast i8* %malloccall to { i64 (i64, i64)*, i64, i64 }*
  %0 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_198, i32 0, i32 0
  %1 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_198, i32 0, i32 1
  %2 = getelementptr inbounds { i64 (i64, i64)*, i64, i64 }, { i64 (i64, i64)*, i64, i64 }* %closure_ptr_198, i32 0, i32 2
  store i64 (i64, i64)* @lambda_198_, i64 (i64, i64)** %0, align 8
  store i64 2, i64* %1, align 4
  store i64 1234, i64* %2, align 4
  %closure_addr_198 = ptrtoint { i64 (i64, i64)*, i64, i64 }* %closure_ptr_198 to i64
  %closure_tagged_tuple_addr_word_198 = add i64 %closure_addr_198, 5
  br label %let_1

let_1:                                            ; preds = %create_lambda_closure_198
  %print_4 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_198, i64* %print_4, align 4
  br label %create_lambda_closure_195

create_lambda_closure_195:                        ; preds = %let_1
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64)*, i64, i64 }* getelementptr ({ i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_195 = bitcast i8* %malloccall1 to { i64 (i64)*, i64, i64 }*
  %3 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_195, i32 0, i32 0
  %4 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_195, i32 0, i32 1
  %5 = getelementptr inbounds { i64 (i64)*, i64, i64 }, { i64 (i64)*, i64, i64 }* %closure_ptr_195, i32 0, i32 2
  store i64 (i64)* @lambda_195_, i64 (i64)** %3, align 8
  store i64 0, i64* %4, align 4
  store i64 1234, i64* %5, align 4
  %closure_addr_195 = ptrtoint { i64 (i64)*, i64, i64 }* %closure_ptr_195 to i64
  %closure_tagged_tuple_addr_word_195 = add i64 %closure_addr_195, 5
  br label %let_2

let_2:                                            ; preds = %create_lambda_closure_195
  %input_11 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_195, i64* %input_11, align 4
  br label %create_lambda_closure_190

create_lambda_closure_190:                        ; preds = %let_2
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64)*, i64, i64 }* getelementptr ({ i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* null, i32 1) to i32))
  %closure_ptr_190 = bitcast i8* %malloccall2 to { i64 (i64, i64, i64)*, i64, i64 }*
  %6 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_190, i32 0, i32 0
  %7 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_190, i32 0, i32 1
  %8 = getelementptr inbounds { i64 (i64, i64, i64)*, i64, i64 }, { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_190, i32 0, i32 2
  store i64 (i64, i64, i64)* @lambda_190_, i64 (i64, i64, i64)** %6, align 8
  store i64 4, i64* %7, align 4
  store i64 1234, i64* %8, align 4
  %closure_addr_190 = ptrtoint { i64 (i64, i64, i64)*, i64, i64 }* %closure_ptr_190 to i64
  %closure_tagged_tuple_addr_word_190 = add i64 %closure_addr_190, 5
  br label %let_3

let_3:                                            ; preds = %create_lambda_closure_190
  %equal_16 = alloca i64, align 8
  store i64 %closure_tagged_tuple_addr_word_190, i64* %equal_16, align 4
  br label %let_rec_4

let_rec_4:                                        ; preds = %let_3
  %dnf_instance_26 = alloca i64, align 8
  br label %create_lambda_closure_46

create_lambda_closure_46:                         ; preds = %let_rec_4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ({ i64 (i64, i64, i64, i64)*, i64 }* getelementptr ({ i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* null, i32 1) to i32))
  %closure_ptr_46 = bitcast i8* %malloccall3 to { i64 (i64, i64, i64, i64)*, i64 }*
  %9 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_46, i32 0, i32 0
  %10 = getelementptr inbounds { i64 (i64, i64, i64, i64)*, i64 }, { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_46, i32 0, i32 1
  store i64 (i64, i64, i64, i64)* @lambda_46_, i64 (i64, i64, i64, i64)** %9, align 8
  store i64 6, i64* %10, align 4
  %closure_addr_46 = ptrtoint { i64 (i64, i64, i64, i64)*, i64 }* %closure_ptr_46 to i64
  %closure_tagged_tuple_addr_word_46 = add i64 %closure_addr_46, 5
  br label %patch_let_rec_closures_4

patch_let_rec_closures_4:                         ; preds = %create_lambda_closure_46
  store i64 %closure_tagged_tuple_addr_word_46, i64* %dnf_instance_26, align 4
  br label %function_call

function_call:                                    ; preds = %patch_let_rec_closures_4
  %dnf_instance_264 = load i64, i64* %dnf_instance_26, align 4
  %tag_bits_of_closure_of_func_to_call = and i64 %dnf_instance_264, 7
  %is_closure_of_func_to_call_closure = icmp eq i64 %tag_bits_of_closure_of_func_to_call, 5
  br i1 %is_closure_of_func_to_call_closure, label %is_closure_41, label %call_error_func

is_closure_41:                                    ; preds = %function_call
  %untagged_closure_addr = sub i64 %dnf_instance_264, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  %function_code_ptr_as_i64 = load i64, i64* %closure_ptr, align 4
  %function = inttoptr i64 %function_code_ptr_as_i64 to i64 (i64, i64, i64, i64)*
  %arity_ptr = getelementptr i64, i64* %closure_ptr, i64 1
  %arity = load i64, i64* %arity_ptr, align 4
  %11 = icmp eq i64 %arity, 6
  br i1 %11, label %is_correct_arity_41, label %call_error_func5

call_error_func:                                  ; preds = %function_call
  store i64 %dnf_instance_264, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_41:                              ; preds = %is_closure_41
  %lambda_non_tail_call_result = call i64 %function(i64 %dnf_instance_264, i64 9223372036854775807, i64 -1, i64 -1)
  br label %let_5

call_error_func5:                                 ; preds = %is_closure_41
  store i64 %arity, i64* @current_answer_ptr, align 4
  %error_call_return_val6 = call i64 @error_func(i64 17)
  unreachable

let_5:                                            ; preds = %is_correct_arity_41
  %app_110 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result, i64* %app_110, align 4
  br label %logical_not_39

logical_not_39:                                   ; preds = %let_5
  %app_1107 = load i64, i64* %app_110, align 4
  %tag_bits_of_arg = and i64 %app_1107, 7
  %is_arg_bool = icmp eq i64 %tag_bits_of_arg, 7
  br i1 %is_arg_bool, label %continue_logical_not_39, label %call_error_func8

continue_logical_not_39:                          ; preds = %logical_not_39
  %logical_not_snake_result_39 = xor i64 %app_1107, -9223372036854775808
  br label %let_6

call_error_func8:                                 ; preds = %logical_not_39
  store i64 %app_1107, i64* @current_answer_ptr, align 4
  %error_call_return_val9 = call i64 @error_func(i64 3)
  unreachable

let_6:                                            ; preds = %continue_logical_not_39
  %unary_109 = alloca i64, align 8
  store i64 %logical_not_snake_result_39, i64* %unary_109, align 4
  br label %if_else_25

if_else_25:                                       ; preds = %let_6
  %unary_10910 = load i64, i64* %unary_109, align 4
  %tag_bits_of_cond_val = and i64 %unary_10910, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_25, label %call_error_func11

continue_if_else_25:                              ; preds = %if_else_25
  %is_cond_true = icmp eq i64 %unary_10910, -1
  br i1 %is_cond_true, label %then_25, label %else_25

call_error_func11:                                ; preds = %if_else_25
  store i64 %unary_10910, i64* @current_answer_ptr, align 4
  %error_call_return_val12 = call i64 @error_func(i64 4)
  unreachable

then_25:                                          ; preds = %continue_if_else_25
  br label %merge_then_else_25

else_25:                                          ; preds = %continue_if_else_25
  br label %function_call13

merge_then_else_25:                               ; preds = %continue_logical_not_28, %then_25
  %"if/else_snake_result_25" = phi i64 [ 9223372036854775807, %then_25 ], [ %logical_not_snake_result_28, %continue_logical_not_28 ]
  br label %let_7

function_call13:                                  ; preds = %else_25
  %dnf_instance_2614 = load i64, i64* %dnf_instance_26, align 4
  %tag_bits_of_closure_of_func_to_call15 = and i64 %dnf_instance_2614, 7
  %is_closure_of_func_to_call_closure16 = icmp eq i64 %tag_bits_of_closure_of_func_to_call15, 5
  br i1 %is_closure_of_func_to_call_closure16, label %is_closure_32, label %call_error_func17

is_closure_32:                                    ; preds = %function_call13
  %untagged_closure_addr19 = sub i64 %dnf_instance_2614, 5
  %closure_ptr20 = inttoptr i64 %untagged_closure_addr19 to i64*
  %function_code_ptr_as_i6421 = load i64, i64* %closure_ptr20, align 4
  %function22 = inttoptr i64 %function_code_ptr_as_i6421 to i64 (i64, i64, i64, i64)*
  %arity_ptr23 = getelementptr i64, i64* %closure_ptr20, i64 1
  %arity24 = load i64, i64* %arity_ptr23, align 4
  %12 = icmp eq i64 %arity24, 6
  br i1 %12, label %is_correct_arity_32, label %call_error_func25

call_error_func17:                                ; preds = %function_call13
  store i64 %dnf_instance_2614, i64* @current_answer_ptr, align 4
  %error_call_return_val18 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_32:                              ; preds = %is_closure_32
  %lambda_non_tail_call_result27 = call i64 %function22(i64 %dnf_instance_2614, i64 -1, i64 9223372036854775807, i64 9223372036854775807)
  br label %let_26

call_error_func25:                                ; preds = %is_closure_32
  store i64 %arity24, i64* @current_answer_ptr, align 4
  %error_call_return_val26 = call i64 @error_func(i64 17)
  unreachable

let_26:                                           ; preds = %is_correct_arity_32
  %app_118 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result27, i64* %app_118, align 4
  br label %logical_not_30

logical_not_30:                                   ; preds = %let_26
  %app_11828 = load i64, i64* %app_118, align 4
  %tag_bits_of_arg29 = and i64 %app_11828, 7
  %is_arg_bool30 = icmp eq i64 %tag_bits_of_arg29, 7
  br i1 %is_arg_bool30, label %continue_logical_not_30, label %call_error_func31

continue_logical_not_30:                          ; preds = %logical_not_30
  %logical_not_snake_result_30 = xor i64 %app_11828, -9223372036854775808
  br label %let_27

call_error_func31:                                ; preds = %logical_not_30
  store i64 %app_11828, i64* @current_answer_ptr, align 4
  %error_call_return_val32 = call i64 @error_func(i64 3)
  unreachable

let_27:                                           ; preds = %continue_logical_not_30
  %unary_117 = alloca i64, align 8
  store i64 %logical_not_snake_result_30, i64* %unary_117, align 4
  br label %logical_not_28

logical_not_28:                                   ; preds = %let_27
  %unary_11733 = load i64, i64* %unary_117, align 4
  %tag_bits_of_arg34 = and i64 %unary_11733, 7
  %is_arg_bool35 = icmp eq i64 %tag_bits_of_arg34, 7
  br i1 %is_arg_bool35, label %continue_logical_not_28, label %call_error_func36

continue_logical_not_28:                          ; preds = %logical_not_28
  %logical_not_snake_result_28 = xor i64 %unary_11733, -9223372036854775808
  br label %merge_then_else_25

call_error_func36:                                ; preds = %logical_not_28
  store i64 %unary_11733, i64* @current_answer_ptr, align 4
  %error_call_return_val37 = call i64 @error_func(i64 3)
  unreachable

let_7:                                            ; preds = %merge_then_else_25
  %if_108 = alloca i64, align 8
  store i64 %"if/else_snake_result_25", i64* %if_108, align 4
  br label %logical_not_23

logical_not_23:                                   ; preds = %let_7
  %if_10838 = load i64, i64* %if_108, align 4
  %tag_bits_of_arg39 = and i64 %if_10838, 7
  %is_arg_bool40 = icmp eq i64 %tag_bits_of_arg39, 7
  br i1 %is_arg_bool40, label %continue_logical_not_23, label %call_error_func41

continue_logical_not_23:                          ; preds = %logical_not_23
  %logical_not_snake_result_23 = xor i64 %if_10838, -9223372036854775808
  br label %let_8

call_error_func41:                                ; preds = %logical_not_23
  store i64 %if_10838, i64* @current_answer_ptr, align 4
  %error_call_return_val42 = call i64 @error_func(i64 3)
  unreachable

let_8:                                            ; preds = %continue_logical_not_23
  %unary_107 = alloca i64, align 8
  store i64 %logical_not_snake_result_23, i64* %unary_107, align 4
  br label %if_else_9

if_else_9:                                        ; preds = %let_8
  %unary_10743 = load i64, i64* %unary_107, align 4
  %tag_bits_of_cond_val44 = and i64 %unary_10743, 7
  %type_is_bool45 = icmp eq i64 %tag_bits_of_cond_val44, 7
  br i1 %type_is_bool45, label %continue_if_else_9, label %call_error_func46

continue_if_else_9:                               ; preds = %if_else_9
  %is_cond_true48 = icmp eq i64 %unary_10743, -1
  br i1 %is_cond_true48, label %then_9, label %else_9

call_error_func46:                                ; preds = %if_else_9
  store i64 %unary_10743, i64* @current_answer_ptr, align 4
  %error_call_return_val47 = call i64 @error_func(i64 4)
  unreachable

then_9:                                           ; preds = %continue_if_else_9
  br label %merge_then_else_9

else_9:                                           ; preds = %continue_if_else_9
  br label %function_call49

merge_then_else_9:                                ; preds = %continue_logical_not_12, %then_9
  %"if/else_snake_result_9" = phi i64 [ 9223372036854775807, %then_9 ], [ %logical_not_snake_result_12, %continue_logical_not_12 ]
  br label %result

function_call49:                                  ; preds = %else_9
  %dnf_instance_2650 = load i64, i64* %dnf_instance_26, align 4
  %tag_bits_of_closure_of_func_to_call51 = and i64 %dnf_instance_2650, 7
  %is_closure_of_func_to_call_closure52 = icmp eq i64 %tag_bits_of_closure_of_func_to_call51, 5
  br i1 %is_closure_of_func_to_call_closure52, label %is_closure_16, label %call_error_func53

is_closure_16:                                    ; preds = %function_call49
  %untagged_closure_addr55 = sub i64 %dnf_instance_2650, 5
  %closure_ptr56 = inttoptr i64 %untagged_closure_addr55 to i64*
  %function_code_ptr_as_i6457 = load i64, i64* %closure_ptr56, align 4
  %function58 = inttoptr i64 %function_code_ptr_as_i6457 to i64 (i64, i64, i64, i64)*
  %arity_ptr59 = getelementptr i64, i64* %closure_ptr56, i64 1
  %arity60 = load i64, i64* %arity_ptr59, align 4
  %13 = icmp eq i64 %arity60, 6
  br i1 %13, label %is_correct_arity_16, label %call_error_func61

call_error_func53:                                ; preds = %function_call49
  store i64 %dnf_instance_2650, i64* @current_answer_ptr, align 4
  %error_call_return_val54 = call i64 @error_func(i64 16)
  unreachable

is_correct_arity_16:                              ; preds = %is_closure_16
  %lambda_non_tail_call_result63 = call i64 %function58(i64 %dnf_instance_2650, i64 -1, i64 9223372036854775807, i64 -1)
  br label %let_10

call_error_func61:                                ; preds = %is_closure_16
  store i64 %arity60, i64* @current_answer_ptr, align 4
  %error_call_return_val62 = call i64 @error_func(i64 17)
  unreachable

let_10:                                           ; preds = %is_correct_arity_16
  %app_126 = alloca i64, align 8
  store i64 %lambda_non_tail_call_result63, i64* %app_126, align 4
  br label %logical_not_14

logical_not_14:                                   ; preds = %let_10
  %app_12664 = load i64, i64* %app_126, align 4
  %tag_bits_of_arg65 = and i64 %app_12664, 7
  %is_arg_bool66 = icmp eq i64 %tag_bits_of_arg65, 7
  br i1 %is_arg_bool66, label %continue_logical_not_14, label %call_error_func67

continue_logical_not_14:                          ; preds = %logical_not_14
  %logical_not_snake_result_14 = xor i64 %app_12664, -9223372036854775808
  br label %let_11

call_error_func67:                                ; preds = %logical_not_14
  store i64 %app_12664, i64* @current_answer_ptr, align 4
  %error_call_return_val68 = call i64 @error_func(i64 3)
  unreachable

let_11:                                           ; preds = %continue_logical_not_14
  %unary_125 = alloca i64, align 8
  store i64 %logical_not_snake_result_14, i64* %unary_125, align 4
  br label %logical_not_12

logical_not_12:                                   ; preds = %let_11
  %unary_12569 = load i64, i64* %unary_125, align 4
  %tag_bits_of_arg70 = and i64 %unary_12569, 7
  %is_arg_bool71 = icmp eq i64 %tag_bits_of_arg70, 7
  br i1 %is_arg_bool71, label %continue_logical_not_12, label %call_error_func72

continue_logical_not_12:                          ; preds = %logical_not_12
  %logical_not_snake_result_12 = xor i64 %unary_12569, -9223372036854775808
  br label %merge_then_else_9

call_error_func72:                                ; preds = %logical_not_12
  store i64 %unary_12569, i64* @current_answer_ptr, align 4
  %error_call_return_val73 = call i64 @error_func(i64 3)
  unreachable

result:                                           ; preds = %merge_then_else_9
  ret i64 %"if/else_snake_result_9"
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

define i64 @lambda_198_(i64 %0, i64 %1) {
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
  ret i64 %print_tail_call_result_199

function_call:                                    ; preds = %lambda_body
  %print_tail_call_result_199 = tail call i64 @print(i64 %1)
  br label %return
}

declare noalias i8* @malloc(i32)

define i64 @lambda_195_(i64 %0) {
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
  ret i64 %input_tail_call_result_196

function_call:                                    ; preds = %lambda_body
  %input_tail_call_result_196 = tail call i64 @input()
  br label %return
}

define i64 @lambda_190_(i64 %0, i64 %1, i64 %2) {
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
  ret i64 %equal_tail_call_result_191

function_call:                                    ; preds = %lambda_body
  %equal_tail_call_result_191 = tail call i64 @equal(i64 %1, i64 %2)
  br label %return
}

define i64 @lambda_46_(i64 %0, i64 %1, i64 %2, i64 %3) {
entry:
  br label %params_set_up

params_set_up:                                    ; preds = %entry
  %untagged_closure_addr = sub i64 %0, 5
  %closure_ptr = inttoptr i64 %untagged_closure_addr to i64*
  br label %lambda_body

lambda_body:                                      ; preds = %params_set_up
  br label %isbool_188

return:                                           ; preds = %merge_then_else_52
  ret i64 %"if/else_snake_result_52"

isbool_188:                                       ; preds = %lambda_body
  %tag_bits_of_arg = and i64 %1, 7
  %isbool = icmp eq i64 %tag_bits_of_arg, 7
  br i1 %isbool, label %yes_isbool_188, label %no_isbool_188

yes_isbool_188:                                   ; preds = %isbool_188
  br label %merged_isbool_188

no_isbool_188:                                    ; preds = %isbool_188
  br label %merged_isbool_188

merged_isbool_188:                                ; preds = %no_isbool_188, %yes_isbool_188
  %isbool_snake_result_188 = phi i64 [ -1, %yes_isbool_188 ], [ 9223372036854775807, %no_isbool_188 ]
  br label %let_47

let_47:                                           ; preds = %merged_isbool_188
  %unary_35 = alloca i64, align 8
  store i64 %isbool_snake_result_188, i64* %unary_35, align 4
  br label %logical_not_186

logical_not_186:                                  ; preds = %let_47
  %unary_351 = load i64, i64* %unary_35, align 4
  %tag_bits_of_arg2 = and i64 %unary_351, 7
  %is_arg_bool = icmp eq i64 %tag_bits_of_arg2, 7
  br i1 %is_arg_bool, label %continue_logical_not_186, label %call_error_func

continue_logical_not_186:                         ; preds = %logical_not_186
  %logical_not_snake_result_186 = xor i64 %unary_351, -9223372036854775808
  br label %let_48

call_error_func:                                  ; preds = %logical_not_186
  store i64 %unary_351, i64* @current_answer_ptr, align 4
  %error_call_return_val = call i64 @error_func(i64 3)
  unreachable

let_48:                                           ; preds = %continue_logical_not_186
  %unary_34 = alloca i64, align 8
  store i64 %logical_not_snake_result_186, i64* %unary_34, align 4
  br label %if_else_175

if_else_175:                                      ; preds = %let_48
  %unary_343 = load i64, i64* %unary_34, align 4
  %tag_bits_of_cond_val = and i64 %unary_343, 7
  %type_is_bool = icmp eq i64 %tag_bits_of_cond_val, 7
  br i1 %type_is_bool, label %continue_if_else_175, label %call_error_func4

continue_if_else_175:                             ; preds = %if_else_175
  %is_cond_true = icmp eq i64 %unary_343, -1
  br i1 %is_cond_true, label %then_175, label %else_175

call_error_func4:                                 ; preds = %if_else_175
  store i64 %unary_343, i64* @current_answer_ptr, align 4
  %error_call_return_val5 = call i64 @error_func(i64 4)
  unreachable

then_175:                                         ; preds = %continue_if_else_175
  br label %merge_then_else_175

else_175:                                         ; preds = %continue_if_else_175
  br label %isbool_182

merge_then_else_175:                              ; preds = %continue_logical_not_178, %then_175
  %"if/else_snake_result_175" = phi i64 [ 9223372036854775807, %then_175 ], [ %logical_not_snake_result_178, %continue_logical_not_178 ]
  br label %let_49

isbool_182:                                       ; preds = %else_175
  %tag_bits_of_arg6 = and i64 %2, 7
  %isbool7 = icmp eq i64 %tag_bits_of_arg6, 7
  br i1 %isbool7, label %yes_isbool_182, label %no_isbool_182

yes_isbool_182:                                   ; preds = %isbool_182
  br label %merged_isbool_182

no_isbool_182:                                    ; preds = %isbool_182
  br label %merged_isbool_182

merged_isbool_182:                                ; preds = %no_isbool_182, %yes_isbool_182
  %isbool_snake_result_182 = phi i64 [ -1, %yes_isbool_182 ], [ 9223372036854775807, %no_isbool_182 ]
  br label %let_176

let_176:                                          ; preds = %merged_isbool_182
  %unary_40 = alloca i64, align 8
  store i64 %isbool_snake_result_182, i64* %unary_40, align 4
  br label %logical_not_180

logical_not_180:                                  ; preds = %let_176
  %unary_408 = load i64, i64* %unary_40, align 4
  %tag_bits_of_arg9 = and i64 %unary_408, 7
  %is_arg_bool10 = icmp eq i64 %tag_bits_of_arg9, 7
  br i1 %is_arg_bool10, label %continue_logical_not_180, label %call_error_func11

continue_logical_not_180:                         ; preds = %logical_not_180
  %logical_not_snake_result_180 = xor i64 %unary_408, -9223372036854775808
  br label %let_177

call_error_func11:                                ; preds = %logical_not_180
  store i64 %unary_408, i64* @current_answer_ptr, align 4
  %error_call_return_val12 = call i64 @error_func(i64 3)
  unreachable

let_177:                                          ; preds = %continue_logical_not_180
  %unary_39 = alloca i64, align 8
  store i64 %logical_not_snake_result_180, i64* %unary_39, align 4
  br label %logical_not_178

logical_not_178:                                  ; preds = %let_177
  %unary_3913 = load i64, i64* %unary_39, align 4
  %tag_bits_of_arg14 = and i64 %unary_3913, 7
  %is_arg_bool15 = icmp eq i64 %tag_bits_of_arg14, 7
  br i1 %is_arg_bool15, label %continue_logical_not_178, label %call_error_func16

continue_logical_not_178:                         ; preds = %logical_not_178
  %logical_not_snake_result_178 = xor i64 %unary_3913, -9223372036854775808
  br label %merge_then_else_175

call_error_func16:                                ; preds = %logical_not_178
  store i64 %unary_3913, i64* @current_answer_ptr, align 4
  %error_call_return_val17 = call i64 @error_func(i64 3)
  unreachable

let_49:                                           ; preds = %merge_then_else_175
  %if_33 = alloca i64, align 8
  store i64 %"if/else_snake_result_175", i64* %if_33, align 4
  br label %logical_not_173

logical_not_173:                                  ; preds = %let_49
  %if_3318 = load i64, i64* %if_33, align 4
  %tag_bits_of_arg19 = and i64 %if_3318, 7
  %is_arg_bool20 = icmp eq i64 %tag_bits_of_arg19, 7
  br i1 %is_arg_bool20, label %continue_logical_not_173, label %call_error_func21

continue_logical_not_173:                         ; preds = %logical_not_173
  %logical_not_snake_result_173 = xor i64 %if_3318, -9223372036854775808
  br label %let_50

call_error_func21:                                ; preds = %logical_not_173
  store i64 %if_3318, i64* @current_answer_ptr, align 4
  %error_call_return_val22 = call i64 @error_func(i64 3)
  unreachable

let_50:                                           ; preds = %continue_logical_not_173
  %unary_32 = alloca i64, align 8
  store i64 %logical_not_snake_result_173, i64* %unary_32, align 4
  br label %if_else_162

if_else_162:                                      ; preds = %let_50
  %unary_3223 = load i64, i64* %unary_32, align 4
  %tag_bits_of_cond_val24 = and i64 %unary_3223, 7
  %type_is_bool25 = icmp eq i64 %tag_bits_of_cond_val24, 7
  br i1 %type_is_bool25, label %continue_if_else_162, label %call_error_func26

continue_if_else_162:                             ; preds = %if_else_162
  %is_cond_true28 = icmp eq i64 %unary_3223, -1
  br i1 %is_cond_true28, label %then_162, label %else_162

call_error_func26:                                ; preds = %if_else_162
  store i64 %unary_3223, i64* @current_answer_ptr, align 4
  %error_call_return_val27 = call i64 @error_func(i64 4)
  unreachable

then_162:                                         ; preds = %continue_if_else_162
  br label %merge_then_else_162

else_162:                                         ; preds = %continue_if_else_162
  br label %isbool_169

merge_then_else_162:                              ; preds = %continue_logical_not_165, %then_162
  %"if/else_snake_result_162" = phi i64 [ 9223372036854775807, %then_162 ], [ %logical_not_snake_result_165, %continue_logical_not_165 ]
  br label %let_51

isbool_169:                                       ; preds = %else_162
  %tag_bits_of_arg29 = and i64 %3, 7
  %isbool30 = icmp eq i64 %tag_bits_of_arg29, 7
  br i1 %isbool30, label %yes_isbool_169, label %no_isbool_169

yes_isbool_169:                                   ; preds = %isbool_169
  br label %merged_isbool_169

no_isbool_169:                                    ; preds = %isbool_169
  br label %merged_isbool_169

merged_isbool_169:                                ; preds = %no_isbool_169, %yes_isbool_169
  %isbool_snake_result_169 = phi i64 [ -1, %yes_isbool_169 ], [ 9223372036854775807, %no_isbool_169 ]
  br label %let_163

let_163:                                          ; preds = %merged_isbool_169
  %unary_45 = alloca i64, align 8
  store i64 %isbool_snake_result_169, i64* %unary_45, align 4
  br label %logical_not_167

logical_not_167:                                  ; preds = %let_163
  %unary_4531 = load i64, i64* %unary_45, align 4
  %tag_bits_of_arg32 = and i64 %unary_4531, 7
  %is_arg_bool33 = icmp eq i64 %tag_bits_of_arg32, 7
  br i1 %is_arg_bool33, label %continue_logical_not_167, label %call_error_func34

continue_logical_not_167:                         ; preds = %logical_not_167
  %logical_not_snake_result_167 = xor i64 %unary_4531, -9223372036854775808
  br label %let_164

call_error_func34:                                ; preds = %logical_not_167
  store i64 %unary_4531, i64* @current_answer_ptr, align 4
  %error_call_return_val35 = call i64 @error_func(i64 3)
  unreachable

let_164:                                          ; preds = %continue_logical_not_167
  %unary_44 = alloca i64, align 8
  store i64 %logical_not_snake_result_167, i64* %unary_44, align 4
  br label %logical_not_165

logical_not_165:                                  ; preds = %let_164
  %unary_4436 = load i64, i64* %unary_44, align 4
  %tag_bits_of_arg37 = and i64 %unary_4436, 7
  %is_arg_bool38 = icmp eq i64 %tag_bits_of_arg37, 7
  br i1 %is_arg_bool38, label %continue_logical_not_165, label %call_error_func39

continue_logical_not_165:                         ; preds = %logical_not_165
  %logical_not_snake_result_165 = xor i64 %unary_4436, -9223372036854775808
  br label %merge_then_else_162

call_error_func39:                                ; preds = %logical_not_165
  store i64 %unary_4436, i64* @current_answer_ptr, align 4
  %error_call_return_val40 = call i64 @error_func(i64 3)
  unreachable

let_51:                                           ; preds = %merge_then_else_162
  %check_type_30 = alloca i64, align 8
  store i64 %"if/else_snake_result_162", i64* %check_type_30, align 4
  br label %if_else_52

if_else_52:                                       ; preds = %let_51
  %check_type_3041 = load i64, i64* %check_type_30, align 4
  %tag_bits_of_cond_val42 = and i64 %check_type_3041, 7
  %type_is_bool43 = icmp eq i64 %tag_bits_of_cond_val42, 7
  br i1 %type_is_bool43, label %continue_if_else_52, label %call_error_func44

continue_if_else_52:                              ; preds = %if_else_52
  %is_cond_true46 = icmp eq i64 %check_type_3041, -1
  br i1 %is_cond_true46, label %then_52, label %else_52

call_error_func44:                                ; preds = %if_else_52
  store i64 %check_type_3041, i64* @current_answer_ptr, align 4
  %error_call_return_val45 = call i64 @error_func(i64 4)
  unreachable

then_52:                                          ; preds = %continue_if_else_52
  br label %logical_not_159

else_52:                                          ; preds = %continue_if_else_52
  br label %merge_then_else_52

merge_then_else_52:                               ; preds = %else_52, %merge_then_else_62
  %"if/else_snake_result_52" = phi i64 [ %"if/else_snake_result_62", %merge_then_else_62 ], [ 9223372036854775807, %else_52 ]
  br label %return

logical_not_159:                                  ; preds = %then_52
  %tag_bits_of_arg47 = and i64 %1, 7
  %is_arg_bool48 = icmp eq i64 %tag_bits_of_arg47, 7
  br i1 %is_arg_bool48, label %continue_logical_not_159, label %call_error_func49

continue_logical_not_159:                         ; preds = %logical_not_159
  %logical_not_snake_result_159 = xor i64 %1, -9223372036854775808
  br label %let_54

call_error_func49:                                ; preds = %logical_not_159
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val50 = call i64 @error_func(i64 3)
  unreachable

let_54:                                           ; preds = %continue_logical_not_159
  %unary_57 = alloca i64, align 8
  store i64 %logical_not_snake_result_159, i64* %unary_57, align 4
  br label %logical_not_157

logical_not_157:                                  ; preds = %let_54
  %unary_5751 = load i64, i64* %unary_57, align 4
  %tag_bits_of_arg52 = and i64 %unary_5751, 7
  %is_arg_bool53 = icmp eq i64 %tag_bits_of_arg52, 7
  br i1 %is_arg_bool53, label %continue_logical_not_157, label %call_error_func54

continue_logical_not_157:                         ; preds = %logical_not_157
  %logical_not_snake_result_157 = xor i64 %unary_5751, -9223372036854775808
  br label %let_55

call_error_func54:                                ; preds = %logical_not_157
  store i64 %unary_5751, i64* @current_answer_ptr, align 4
  %error_call_return_val55 = call i64 @error_func(i64 3)
  unreachable

let_55:                                           ; preds = %continue_logical_not_157
  %unary_56 = alloca i64, align 8
  store i64 %logical_not_snake_result_157, i64* %unary_56, align 4
  br label %if_else_149

if_else_149:                                      ; preds = %let_55
  %unary_5656 = load i64, i64* %unary_56, align 4
  %tag_bits_of_cond_val57 = and i64 %unary_5656, 7
  %type_is_bool58 = icmp eq i64 %tag_bits_of_cond_val57, 7
  br i1 %type_is_bool58, label %continue_if_else_149, label %call_error_func59

continue_if_else_149:                             ; preds = %if_else_149
  %is_cond_true61 = icmp eq i64 %unary_5656, -1
  br i1 %is_cond_true61, label %then_149, label %else_149

call_error_func59:                                ; preds = %if_else_149
  store i64 %unary_5656, i64* @current_answer_ptr, align 4
  %error_call_return_val60 = call i64 @error_func(i64 4)
  unreachable

then_149:                                         ; preds = %continue_if_else_149
  br label %merge_then_else_149

else_149:                                         ; preds = %continue_if_else_149
  br label %logical_not_153

merge_then_else_149:                              ; preds = %continue_logical_not_151, %then_149
  %"if/else_snake_result_149" = phi i64 [ 9223372036854775807, %then_149 ], [ %logical_not_snake_result_151, %continue_logical_not_151 ]
  br label %let_56

logical_not_153:                                  ; preds = %else_149
  %tag_bits_of_arg62 = and i64 %2, 7
  %is_arg_bool63 = icmp eq i64 %tag_bits_of_arg62, 7
  br i1 %is_arg_bool63, label %continue_logical_not_153, label %call_error_func64

continue_logical_not_153:                         ; preds = %logical_not_153
  %logical_not_snake_result_153 = xor i64 %2, -9223372036854775808
  br label %let_150

call_error_func64:                                ; preds = %logical_not_153
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val65 = call i64 @error_func(i64 3)
  unreachable

let_150:                                          ; preds = %continue_logical_not_153
  %unary_61 = alloca i64, align 8
  store i64 %logical_not_snake_result_153, i64* %unary_61, align 4
  br label %logical_not_151

logical_not_151:                                  ; preds = %let_150
  %unary_6166 = load i64, i64* %unary_61, align 4
  %tag_bits_of_arg67 = and i64 %unary_6166, 7
  %is_arg_bool68 = icmp eq i64 %tag_bits_of_arg67, 7
  br i1 %is_arg_bool68, label %continue_logical_not_151, label %call_error_func69

continue_logical_not_151:                         ; preds = %logical_not_151
  %logical_not_snake_result_151 = xor i64 %unary_6166, -9223372036854775808
  br label %merge_then_else_149

call_error_func69:                                ; preds = %logical_not_151
  store i64 %unary_6166, i64* @current_answer_ptr, align 4
  %error_call_return_val70 = call i64 @error_func(i64 3)
  unreachable

let_56:                                           ; preds = %merge_then_else_149
  %if_55 = alloca i64, align 8
  store i64 %"if/else_snake_result_149", i64* %if_55, align 4
  br label %logical_not_147

logical_not_147:                                  ; preds = %let_56
  %if_5571 = load i64, i64* %if_55, align 4
  %tag_bits_of_arg72 = and i64 %if_5571, 7
  %is_arg_bool73 = icmp eq i64 %tag_bits_of_arg72, 7
  br i1 %is_arg_bool73, label %continue_logical_not_147, label %call_error_func74

continue_logical_not_147:                         ; preds = %logical_not_147
  %logical_not_snake_result_147 = xor i64 %if_5571, -9223372036854775808
  br label %let_57

call_error_func74:                                ; preds = %logical_not_147
  store i64 %if_5571, i64* @current_answer_ptr, align 4
  %error_call_return_val75 = call i64 @error_func(i64 3)
  unreachable

let_57:                                           ; preds = %continue_logical_not_147
  %unary_54 = alloca i64, align 8
  store i64 %logical_not_snake_result_147, i64* %unary_54, align 4
  br label %if_else_139

if_else_139:                                      ; preds = %let_57
  %unary_5476 = load i64, i64* %unary_54, align 4
  %tag_bits_of_cond_val77 = and i64 %unary_5476, 7
  %type_is_bool78 = icmp eq i64 %tag_bits_of_cond_val77, 7
  br i1 %type_is_bool78, label %continue_if_else_139, label %call_error_func79

continue_if_else_139:                             ; preds = %if_else_139
  %is_cond_true81 = icmp eq i64 %unary_5476, -1
  br i1 %is_cond_true81, label %then_139, label %else_139

call_error_func79:                                ; preds = %if_else_139
  store i64 %unary_5476, i64* @current_answer_ptr, align 4
  %error_call_return_val80 = call i64 @error_func(i64 4)
  unreachable

then_139:                                         ; preds = %continue_if_else_139
  br label %merge_then_else_139

else_139:                                         ; preds = %continue_if_else_139
  br label %logical_not_143

merge_then_else_139:                              ; preds = %continue_logical_not_141, %then_139
  %"if/else_snake_result_139" = phi i64 [ 9223372036854775807, %then_139 ], [ %logical_not_snake_result_141, %continue_logical_not_141 ]
  br label %let_58

logical_not_143:                                  ; preds = %else_139
  %tag_bits_of_arg82 = and i64 %3, 7
  %is_arg_bool83 = icmp eq i64 %tag_bits_of_arg82, 7
  br i1 %is_arg_bool83, label %continue_logical_not_143, label %call_error_func84

continue_logical_not_143:                         ; preds = %logical_not_143
  %logical_not_snake_result_143 = xor i64 %3, -9223372036854775808
  br label %let_140

call_error_func84:                                ; preds = %logical_not_143
  store i64 %3, i64* @current_answer_ptr, align 4
  %error_call_return_val85 = call i64 @error_func(i64 3)
  unreachable

let_140:                                          ; preds = %continue_logical_not_143
  %unary_65 = alloca i64, align 8
  store i64 %logical_not_snake_result_143, i64* %unary_65, align 4
  br label %logical_not_141

logical_not_141:                                  ; preds = %let_140
  %unary_6586 = load i64, i64* %unary_65, align 4
  %tag_bits_of_arg87 = and i64 %unary_6586, 7
  %is_arg_bool88 = icmp eq i64 %tag_bits_of_arg87, 7
  br i1 %is_arg_bool88, label %continue_logical_not_141, label %call_error_func89

continue_logical_not_141:                         ; preds = %logical_not_141
  %logical_not_snake_result_141 = xor i64 %unary_6586, -9223372036854775808
  br label %merge_then_else_139

call_error_func89:                                ; preds = %logical_not_141
  store i64 %unary_6586, i64* @current_answer_ptr, align 4
  %error_call_return_val90 = call i64 @error_func(i64 3)
  unreachable

let_58:                                           ; preds = %merge_then_else_139
  %if_53 = alloca i64, align 8
  store i64 %"if/else_snake_result_139", i64* %if_53, align 4
  br label %logical_not_137

logical_not_137:                                  ; preds = %let_58
  %if_5391 = load i64, i64* %if_53, align 4
  %tag_bits_of_arg92 = and i64 %if_5391, 7
  %is_arg_bool93 = icmp eq i64 %tag_bits_of_arg92, 7
  br i1 %is_arg_bool93, label %continue_logical_not_137, label %call_error_func94

continue_logical_not_137:                         ; preds = %logical_not_137
  %logical_not_snake_result_137 = xor i64 %if_5391, -9223372036854775808
  br label %let_59

call_error_func94:                                ; preds = %logical_not_137
  store i64 %if_5391, i64* @current_answer_ptr, align 4
  %error_call_return_val95 = call i64 @error_func(i64 3)
  unreachable

let_59:                                           ; preds = %continue_logical_not_137
  %unary_52 = alloca i64, align 8
  store i64 %logical_not_snake_result_137, i64* %unary_52, align 4
  br label %if_else_99

if_else_99:                                       ; preds = %let_59
  %unary_5296 = load i64, i64* %unary_52, align 4
  %tag_bits_of_cond_val97 = and i64 %unary_5296, 7
  %type_is_bool98 = icmp eq i64 %tag_bits_of_cond_val97, 7
  br i1 %type_is_bool98, label %continue_if_else_99, label %call_error_func99

continue_if_else_99:                              ; preds = %if_else_99
  %is_cond_true101 = icmp eq i64 %unary_5296, -1
  br i1 %is_cond_true101, label %then_99, label %else_99

call_error_func99:                                ; preds = %if_else_99
  store i64 %unary_5296, i64* @current_answer_ptr, align 4
  %error_call_return_val100 = call i64 @error_func(i64 4)
  unreachable

then_99:                                          ; preds = %continue_if_else_99
  br label %logical_not_134

else_99:                                          ; preds = %continue_if_else_99
  br label %merge_then_else_99

merge_then_else_99:                               ; preds = %else_99, %continue_logical_not_106
  %"if/else_snake_result_99" = phi i64 [ %logical_not_snake_result_106, %continue_logical_not_106 ], [ -1, %else_99 ]
  br label %let_60

logical_not_134:                                  ; preds = %then_99
  %tag_bits_of_arg102 = and i64 %1, 7
  %is_arg_bool103 = icmp eq i64 %tag_bits_of_arg102, 7
  br i1 %is_arg_bool103, label %continue_logical_not_134, label %call_error_func104

continue_logical_not_134:                         ; preds = %logical_not_134
  %logical_not_snake_result_134 = xor i64 %1, -9223372036854775808
  br label %let_101

call_error_func104:                               ; preds = %logical_not_134
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val105 = call i64 @error_func(i64 3)
  unreachable

let_101:                                          ; preds = %continue_logical_not_134
  %unary_72 = alloca i64, align 8
  store i64 %logical_not_snake_result_134, i64* %unary_72, align 4
  br label %if_else_123

if_else_123:                                      ; preds = %let_101
  %unary_72106 = load i64, i64* %unary_72, align 4
  %tag_bits_of_cond_val107 = and i64 %unary_72106, 7
  %type_is_bool108 = icmp eq i64 %tag_bits_of_cond_val107, 7
  br i1 %type_is_bool108, label %continue_if_else_123, label %call_error_func109

continue_if_else_123:                             ; preds = %if_else_123
  %is_cond_true111 = icmp eq i64 %unary_72106, -1
  br i1 %is_cond_true111, label %then_123, label %else_123

call_error_func109:                               ; preds = %if_else_123
  store i64 %unary_72106, i64* @current_answer_ptr, align 4
  %error_call_return_val110 = call i64 @error_func(i64 4)
  unreachable

then_123:                                         ; preds = %continue_if_else_123
  br label %merge_then_else_123

else_123:                                         ; preds = %continue_if_else_123
  br label %logical_not_130

merge_then_else_123:                              ; preds = %continue_logical_not_126, %then_123
  %"if/else_snake_result_123" = phi i64 [ 9223372036854775807, %then_123 ], [ %logical_not_snake_result_126, %continue_logical_not_126 ]
  br label %let_102

logical_not_130:                                  ; preds = %else_123
  %tag_bits_of_arg112 = and i64 %2, 7
  %is_arg_bool113 = icmp eq i64 %tag_bits_of_arg112, 7
  br i1 %is_arg_bool113, label %continue_logical_not_130, label %call_error_func114

continue_logical_not_130:                         ; preds = %logical_not_130
  %logical_not_snake_result_130 = xor i64 %2, -9223372036854775808
  br label %let_124

call_error_func114:                               ; preds = %logical_not_130
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val115 = call i64 @error_func(i64 3)
  unreachable

let_124:                                          ; preds = %continue_logical_not_130
  %unary_77 = alloca i64, align 8
  store i64 %logical_not_snake_result_130, i64* %unary_77, align 4
  br label %logical_not_128

logical_not_128:                                  ; preds = %let_124
  %unary_77116 = load i64, i64* %unary_77, align 4
  %tag_bits_of_arg117 = and i64 %unary_77116, 7
  %is_arg_bool118 = icmp eq i64 %tag_bits_of_arg117, 7
  br i1 %is_arg_bool118, label %continue_logical_not_128, label %call_error_func119

continue_logical_not_128:                         ; preds = %logical_not_128
  %logical_not_snake_result_128 = xor i64 %unary_77116, -9223372036854775808
  br label %let_125

call_error_func119:                               ; preds = %logical_not_128
  store i64 %unary_77116, i64* @current_answer_ptr, align 4
  %error_call_return_val120 = call i64 @error_func(i64 3)
  unreachable

let_125:                                          ; preds = %continue_logical_not_128
  %unary_76 = alloca i64, align 8
  store i64 %logical_not_snake_result_128, i64* %unary_76, align 4
  br label %logical_not_126

logical_not_126:                                  ; preds = %let_125
  %unary_76121 = load i64, i64* %unary_76, align 4
  %tag_bits_of_arg122 = and i64 %unary_76121, 7
  %is_arg_bool123 = icmp eq i64 %tag_bits_of_arg122, 7
  br i1 %is_arg_bool123, label %continue_logical_not_126, label %call_error_func124

continue_logical_not_126:                         ; preds = %logical_not_126
  %logical_not_snake_result_126 = xor i64 %unary_76121, -9223372036854775808
  br label %merge_then_else_123

call_error_func124:                               ; preds = %logical_not_126
  store i64 %unary_76121, i64* @current_answer_ptr, align 4
  %error_call_return_val125 = call i64 @error_func(i64 3)
  unreachable

let_102:                                          ; preds = %merge_then_else_123
  %if_71 = alloca i64, align 8
  store i64 %"if/else_snake_result_123", i64* %if_71, align 4
  br label %logical_not_121

logical_not_121:                                  ; preds = %let_102
  %if_71126 = load i64, i64* %if_71, align 4
  %tag_bits_of_arg127 = and i64 %if_71126, 7
  %is_arg_bool128 = icmp eq i64 %tag_bits_of_arg127, 7
  br i1 %is_arg_bool128, label %continue_logical_not_121, label %call_error_func129

continue_logical_not_121:                         ; preds = %logical_not_121
  %logical_not_snake_result_121 = xor i64 %if_71126, -9223372036854775808
  br label %let_103

call_error_func129:                               ; preds = %logical_not_121
  store i64 %if_71126, i64* @current_answer_ptr, align 4
  %error_call_return_val130 = call i64 @error_func(i64 3)
  unreachable

let_103:                                          ; preds = %continue_logical_not_121
  %unary_70 = alloca i64, align 8
  store i64 %logical_not_snake_result_121, i64* %unary_70, align 4
  br label %if_else_110

if_else_110:                                      ; preds = %let_103
  %unary_70131 = load i64, i64* %unary_70, align 4
  %tag_bits_of_cond_val132 = and i64 %unary_70131, 7
  %type_is_bool133 = icmp eq i64 %tag_bits_of_cond_val132, 7
  br i1 %type_is_bool133, label %continue_if_else_110, label %call_error_func134

continue_if_else_110:                             ; preds = %if_else_110
  %is_cond_true136 = icmp eq i64 %unary_70131, -1
  br i1 %is_cond_true136, label %then_110, label %else_110

call_error_func134:                               ; preds = %if_else_110
  store i64 %unary_70131, i64* @current_answer_ptr, align 4
  %error_call_return_val135 = call i64 @error_func(i64 4)
  unreachable

then_110:                                         ; preds = %continue_if_else_110
  br label %merge_then_else_110

else_110:                                         ; preds = %continue_if_else_110
  br label %logical_not_117

merge_then_else_110:                              ; preds = %continue_logical_not_113, %then_110
  %"if/else_snake_result_110" = phi i64 [ 9223372036854775807, %then_110 ], [ %logical_not_snake_result_113, %continue_logical_not_113 ]
  br label %let_104

logical_not_117:                                  ; preds = %else_110
  %tag_bits_of_arg137 = and i64 %3, 7
  %is_arg_bool138 = icmp eq i64 %tag_bits_of_arg137, 7
  br i1 %is_arg_bool138, label %continue_logical_not_117, label %call_error_func139

continue_logical_not_117:                         ; preds = %logical_not_117
  %logical_not_snake_result_117 = xor i64 %3, -9223372036854775808
  br label %let_111

call_error_func139:                               ; preds = %logical_not_117
  store i64 %3, i64* @current_answer_ptr, align 4
  %error_call_return_val140 = call i64 @error_func(i64 3)
  unreachable

let_111:                                          ; preds = %continue_logical_not_117
  %unary_82 = alloca i64, align 8
  store i64 %logical_not_snake_result_117, i64* %unary_82, align 4
  br label %logical_not_115

logical_not_115:                                  ; preds = %let_111
  %unary_82141 = load i64, i64* %unary_82, align 4
  %tag_bits_of_arg142 = and i64 %unary_82141, 7
  %is_arg_bool143 = icmp eq i64 %tag_bits_of_arg142, 7
  br i1 %is_arg_bool143, label %continue_logical_not_115, label %call_error_func144

continue_logical_not_115:                         ; preds = %logical_not_115
  %logical_not_snake_result_115 = xor i64 %unary_82141, -9223372036854775808
  br label %let_112

call_error_func144:                               ; preds = %logical_not_115
  store i64 %unary_82141, i64* @current_answer_ptr, align 4
  %error_call_return_val145 = call i64 @error_func(i64 3)
  unreachable

let_112:                                          ; preds = %continue_logical_not_115
  %unary_81 = alloca i64, align 8
  store i64 %logical_not_snake_result_115, i64* %unary_81, align 4
  br label %logical_not_113

logical_not_113:                                  ; preds = %let_112
  %unary_81146 = load i64, i64* %unary_81, align 4
  %tag_bits_of_arg147 = and i64 %unary_81146, 7
  %is_arg_bool148 = icmp eq i64 %tag_bits_of_arg147, 7
  br i1 %is_arg_bool148, label %continue_logical_not_113, label %call_error_func149

continue_logical_not_113:                         ; preds = %logical_not_113
  %logical_not_snake_result_113 = xor i64 %unary_81146, -9223372036854775808
  br label %merge_then_else_110

call_error_func149:                               ; preds = %logical_not_113
  store i64 %unary_81146, i64* @current_answer_ptr, align 4
  %error_call_return_val150 = call i64 @error_func(i64 3)
  unreachable

let_104:                                          ; preds = %merge_then_else_110
  %if_69 = alloca i64, align 8
  store i64 %"if/else_snake_result_110", i64* %if_69, align 4
  br label %logical_not_108

logical_not_108:                                  ; preds = %let_104
  %if_69151 = load i64, i64* %if_69, align 4
  %tag_bits_of_arg152 = and i64 %if_69151, 7
  %is_arg_bool153 = icmp eq i64 %tag_bits_of_arg152, 7
  br i1 %is_arg_bool153, label %continue_logical_not_108, label %call_error_func154

continue_logical_not_108:                         ; preds = %logical_not_108
  %logical_not_snake_result_108 = xor i64 %if_69151, -9223372036854775808
  br label %let_105

call_error_func154:                               ; preds = %logical_not_108
  store i64 %if_69151, i64* @current_answer_ptr, align 4
  %error_call_return_val155 = call i64 @error_func(i64 3)
  unreachable

let_105:                                          ; preds = %continue_logical_not_108
  %unary_68 = alloca i64, align 8
  store i64 %logical_not_snake_result_108, i64* %unary_68, align 4
  br label %logical_not_106

logical_not_106:                                  ; preds = %let_105
  %unary_68156 = load i64, i64* %unary_68, align 4
  %tag_bits_of_arg157 = and i64 %unary_68156, 7
  %is_arg_bool158 = icmp eq i64 %tag_bits_of_arg157, 7
  br i1 %is_arg_bool158, label %continue_logical_not_106, label %call_error_func159

continue_logical_not_106:                         ; preds = %logical_not_106
  %logical_not_snake_result_106 = xor i64 %unary_68156, -9223372036854775808
  br label %merge_then_else_99

call_error_func159:                               ; preds = %logical_not_106
  store i64 %unary_68156, i64* @current_answer_ptr, align 4
  %error_call_return_val160 = call i64 @error_func(i64 3)
  unreachable

let_60:                                           ; preds = %merge_then_else_99
  %if_51 = alloca i64, align 8
  store i64 %"if/else_snake_result_99", i64* %if_51, align 4
  br label %logical_not_97

logical_not_97:                                   ; preds = %let_60
  %if_51161 = load i64, i64* %if_51, align 4
  %tag_bits_of_arg162 = and i64 %if_51161, 7
  %is_arg_bool163 = icmp eq i64 %tag_bits_of_arg162, 7
  br i1 %is_arg_bool163, label %continue_logical_not_97, label %call_error_func164

continue_logical_not_97:                          ; preds = %logical_not_97
  %logical_not_snake_result_97 = xor i64 %if_51161, -9223372036854775808
  br label %let_61

call_error_func164:                               ; preds = %logical_not_97
  store i64 %if_51161, i64* @current_answer_ptr, align 4
  %error_call_return_val165 = call i64 @error_func(i64 3)
  unreachable

let_61:                                           ; preds = %continue_logical_not_97
  %unary_50 = alloca i64, align 8
  store i64 %logical_not_snake_result_97, i64* %unary_50, align 4
  br label %if_else_62

if_else_62:                                       ; preds = %let_61
  %unary_50166 = load i64, i64* %unary_50, align 4
  %tag_bits_of_cond_val167 = and i64 %unary_50166, 7
  %type_is_bool168 = icmp eq i64 %tag_bits_of_cond_val167, 7
  br i1 %type_is_bool168, label %continue_if_else_62, label %call_error_func169

continue_if_else_62:                              ; preds = %if_else_62
  %is_cond_true171 = icmp eq i64 %unary_50166, -1
  br i1 %is_cond_true171, label %then_62, label %else_62

call_error_func169:                               ; preds = %if_else_62
  store i64 %unary_50166, i64* @current_answer_ptr, align 4
  %error_call_return_val170 = call i64 @error_func(i64 4)
  unreachable

then_62:                                          ; preds = %continue_if_else_62
  br label %logical_not_94

else_62:                                          ; preds = %continue_if_else_62
  br label %merge_then_else_62

merge_then_else_62:                               ; preds = %else_62, %continue_logical_not_69
  %"if/else_snake_result_62" = phi i64 [ %logical_not_snake_result_69, %continue_logical_not_69 ], [ -1, %else_62 ]
  br label %merge_then_else_52

logical_not_94:                                   ; preds = %then_62
  %tag_bits_of_arg172 = and i64 %1, 7
  %is_arg_bool173 = icmp eq i64 %tag_bits_of_arg172, 7
  br i1 %is_arg_bool173, label %continue_logical_not_94, label %call_error_func174

continue_logical_not_94:                          ; preds = %logical_not_94
  %logical_not_snake_result_94 = xor i64 %1, -9223372036854775808
  br label %let_64

call_error_func174:                               ; preds = %logical_not_94
  store i64 %1, i64* @current_answer_ptr, align 4
  %error_call_return_val175 = call i64 @error_func(i64 3)
  unreachable

let_64:                                           ; preds = %continue_logical_not_94
  %unary_90 = alloca i64, align 8
  store i64 %logical_not_snake_result_94, i64* %unary_90, align 4
  br label %if_else_83

if_else_83:                                       ; preds = %let_64
  %unary_90176 = load i64, i64* %unary_90, align 4
  %tag_bits_of_cond_val177 = and i64 %unary_90176, 7
  %type_is_bool178 = icmp eq i64 %tag_bits_of_cond_val177, 7
  br i1 %type_is_bool178, label %continue_if_else_83, label %call_error_func179

continue_if_else_83:                              ; preds = %if_else_83
  %is_cond_true181 = icmp eq i64 %unary_90176, -1
  br i1 %is_cond_true181, label %then_83, label %else_83

call_error_func179:                               ; preds = %if_else_83
  store i64 %unary_90176, i64* @current_answer_ptr, align 4
  %error_call_return_val180 = call i64 @error_func(i64 4)
  unreachable

then_83:                                          ; preds = %continue_if_else_83
  br label %merge_then_else_83

else_83:                                          ; preds = %continue_if_else_83
  br label %logical_not_90

merge_then_else_83:                               ; preds = %continue_logical_not_86, %then_83
  %"if/else_snake_result_83" = phi i64 [ 9223372036854775807, %then_83 ], [ %logical_not_snake_result_86, %continue_logical_not_86 ]
  br label %let_65

logical_not_90:                                   ; preds = %else_83
  %tag_bits_of_arg182 = and i64 %2, 7
  %is_arg_bool183 = icmp eq i64 %tag_bits_of_arg182, 7
  br i1 %is_arg_bool183, label %continue_logical_not_90, label %call_error_func184

continue_logical_not_90:                          ; preds = %logical_not_90
  %logical_not_snake_result_90 = xor i64 %2, -9223372036854775808
  br label %let_84

call_error_func184:                               ; preds = %logical_not_90
  store i64 %2, i64* @current_answer_ptr, align 4
  %error_call_return_val185 = call i64 @error_func(i64 3)
  unreachable

let_84:                                           ; preds = %continue_logical_not_90
  %unary_95 = alloca i64, align 8
  store i64 %logical_not_snake_result_90, i64* %unary_95, align 4
  br label %logical_not_88

logical_not_88:                                   ; preds = %let_84
  %unary_95186 = load i64, i64* %unary_95, align 4
  %tag_bits_of_arg187 = and i64 %unary_95186, 7
  %is_arg_bool188 = icmp eq i64 %tag_bits_of_arg187, 7
  br i1 %is_arg_bool188, label %continue_logical_not_88, label %call_error_func189

continue_logical_not_88:                          ; preds = %logical_not_88
  %logical_not_snake_result_88 = xor i64 %unary_95186, -9223372036854775808
  br label %let_85

call_error_func189:                               ; preds = %logical_not_88
  store i64 %unary_95186, i64* @current_answer_ptr, align 4
  %error_call_return_val190 = call i64 @error_func(i64 3)
  unreachable

let_85:                                           ; preds = %continue_logical_not_88
  %unary_94 = alloca i64, align 8
  store i64 %logical_not_snake_result_88, i64* %unary_94, align 4
  br label %logical_not_86

logical_not_86:                                   ; preds = %let_85
  %unary_94191 = load i64, i64* %unary_94, align 4
  %tag_bits_of_arg192 = and i64 %unary_94191, 7
  %is_arg_bool193 = icmp eq i64 %tag_bits_of_arg192, 7
  br i1 %is_arg_bool193, label %continue_logical_not_86, label %call_error_func194

continue_logical_not_86:                          ; preds = %logical_not_86
  %logical_not_snake_result_86 = xor i64 %unary_94191, -9223372036854775808
  br label %merge_then_else_83

call_error_func194:                               ; preds = %logical_not_86
  store i64 %unary_94191, i64* @current_answer_ptr, align 4
  %error_call_return_val195 = call i64 @error_func(i64 3)
  unreachable

let_65:                                           ; preds = %merge_then_else_83
  %if_89 = alloca i64, align 8
  store i64 %"if/else_snake_result_83", i64* %if_89, align 4
  br label %logical_not_81

logical_not_81:                                   ; preds = %let_65
  %if_89196 = load i64, i64* %if_89, align 4
  %tag_bits_of_arg197 = and i64 %if_89196, 7
  %is_arg_bool198 = icmp eq i64 %tag_bits_of_arg197, 7
  br i1 %is_arg_bool198, label %continue_logical_not_81, label %call_error_func199

continue_logical_not_81:                          ; preds = %logical_not_81
  %logical_not_snake_result_81 = xor i64 %if_89196, -9223372036854775808
  br label %let_66

call_error_func199:                               ; preds = %logical_not_81
  store i64 %if_89196, i64* @current_answer_ptr, align 4
  %error_call_return_val200 = call i64 @error_func(i64 3)
  unreachable

let_66:                                           ; preds = %continue_logical_not_81
  %unary_88 = alloca i64, align 8
  store i64 %logical_not_snake_result_81, i64* %unary_88, align 4
  br label %if_else_73

if_else_73:                                       ; preds = %let_66
  %unary_88201 = load i64, i64* %unary_88, align 4
  %tag_bits_of_cond_val202 = and i64 %unary_88201, 7
  %type_is_bool203 = icmp eq i64 %tag_bits_of_cond_val202, 7
  br i1 %type_is_bool203, label %continue_if_else_73, label %call_error_func204

continue_if_else_73:                              ; preds = %if_else_73
  %is_cond_true206 = icmp eq i64 %unary_88201, -1
  br i1 %is_cond_true206, label %then_73, label %else_73

call_error_func204:                               ; preds = %if_else_73
  store i64 %unary_88201, i64* @current_answer_ptr, align 4
  %error_call_return_val205 = call i64 @error_func(i64 4)
  unreachable

then_73:                                          ; preds = %continue_if_else_73
  br label %merge_then_else_73

else_73:                                          ; preds = %continue_if_else_73
  br label %logical_not_77

merge_then_else_73:                               ; preds = %continue_logical_not_75, %then_73
  %"if/else_snake_result_73" = phi i64 [ 9223372036854775807, %then_73 ], [ %logical_not_snake_result_75, %continue_logical_not_75 ]
  br label %let_67

logical_not_77:                                   ; preds = %else_73
  %tag_bits_of_arg207 = and i64 %3, 7
  %is_arg_bool208 = icmp eq i64 %tag_bits_of_arg207, 7
  br i1 %is_arg_bool208, label %continue_logical_not_77, label %call_error_func209

continue_logical_not_77:                          ; preds = %logical_not_77
  %logical_not_snake_result_77 = xor i64 %3, -9223372036854775808
  br label %let_74

call_error_func209:                               ; preds = %logical_not_77
  store i64 %3, i64* @current_answer_ptr, align 4
  %error_call_return_val210 = call i64 @error_func(i64 3)
  unreachable

let_74:                                           ; preds = %continue_logical_not_77
  %unary_99 = alloca i64, align 8
  store i64 %logical_not_snake_result_77, i64* %unary_99, align 4
  br label %logical_not_75

logical_not_75:                                   ; preds = %let_74
  %unary_99211 = load i64, i64* %unary_99, align 4
  %tag_bits_of_arg212 = and i64 %unary_99211, 7
  %is_arg_bool213 = icmp eq i64 %tag_bits_of_arg212, 7
  br i1 %is_arg_bool213, label %continue_logical_not_75, label %call_error_func214

continue_logical_not_75:                          ; preds = %logical_not_75
  %logical_not_snake_result_75 = xor i64 %unary_99211, -9223372036854775808
  br label %merge_then_else_73

call_error_func214:                               ; preds = %logical_not_75
  store i64 %unary_99211, i64* @current_answer_ptr, align 4
  %error_call_return_val215 = call i64 @error_func(i64 3)
  unreachable

let_67:                                           ; preds = %merge_then_else_73
  %if_87 = alloca i64, align 8
  store i64 %"if/else_snake_result_73", i64* %if_87, align 4
  br label %logical_not_71

logical_not_71:                                   ; preds = %let_67
  %if_87216 = load i64, i64* %if_87, align 4
  %tag_bits_of_arg217 = and i64 %if_87216, 7
  %is_arg_bool218 = icmp eq i64 %tag_bits_of_arg217, 7
  br i1 %is_arg_bool218, label %continue_logical_not_71, label %call_error_func219

continue_logical_not_71:                          ; preds = %logical_not_71
  %logical_not_snake_result_71 = xor i64 %if_87216, -9223372036854775808
  br label %let_68

call_error_func219:                               ; preds = %logical_not_71
  store i64 %if_87216, i64* @current_answer_ptr, align 4
  %error_call_return_val220 = call i64 @error_func(i64 3)
  unreachable

let_68:                                           ; preds = %continue_logical_not_71
  %unary_86 = alloca i64, align 8
  store i64 %logical_not_snake_result_71, i64* %unary_86, align 4
  br label %logical_not_69

logical_not_69:                                   ; preds = %let_68
  %unary_86221 = load i64, i64* %unary_86, align 4
  %tag_bits_of_arg222 = and i64 %unary_86221, 7
  %is_arg_bool223 = icmp eq i64 %tag_bits_of_arg222, 7
  br i1 %is_arg_bool223, label %continue_logical_not_69, label %call_error_func224

continue_logical_not_69:                          ; preds = %logical_not_69
  %logical_not_snake_result_69 = xor i64 %unary_86221, -9223372036854775808
  br label %merge_then_else_62

call_error_func224:                               ; preds = %logical_not_69
  store i64 %unary_86221, i64* @current_answer_ptr, align 4
  %error_call_return_val225 = call i64 @error_func(i64 3)
  unreachable
}
