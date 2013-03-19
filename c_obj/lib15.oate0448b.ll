declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1329:
  ret void
}


define i32 @program (i32 %argc3243, { i32, [ 0 x i8* ] }* %argv3241){

__fresh1328:
  %argc_slot3244 = alloca i32
  store i32 %argc3243, i32* %argc_slot3244
  %argv_slot3242 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3241, { i32, [ 0 x i8* ] }** %argv_slot3242
  %size_ptr3246 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot3242, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3246, i32 1 )
  %index_ptr3245 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot3242, i32 0, i32 1, i32 1
  %_lhs3247 = load { i32, [ 0 x i8* ] }** %argv_slot3242
  %ret3248 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs3247, i32 3, i32 5 )
  call void @print_string( i8* %ret3248 )
  ret i32 0
}


define i8* @sub (i8* %str3220, i32 %start3218, i32 %len3216){

__fresh1324:
  %str_slot3221 = alloca i8*
  store i8* %str3220, i8** %str_slot3221
  %start_slot3219 = alloca i32
  store i32 %start3218, i32* %start_slot3219
  %len_slot3217 = alloca i32
  store i32 %len3216, i32* %len_slot3217
  %_lhs3222 = load i8** %str_slot3221
  %ret3223 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs3222 )
  %arr3224 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret3223, { i32, [ 0 x i32 ] }** %arr3224
  %_lhs3225 = load i32* %len_slot3217
  %array_ptr3226 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs3225 )
  %array3227 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3226 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr3229
  br label %__compare1321

__fresh1325:
  br label %__compare1321

__compare1321:
  %comparison_result3230 = icmp slt i32* %index_ptr3229, %_lhs3225
  br i1 %comparison_result3230, label %__body1322, label %__end1323

__fresh1326:
  br label %__body1322

__body1322:
  store i32* %index_ptr3229, i32* %i3231
  %_lhs3232 = load i32* %i3231
  %_lhs3233 = load i32* %start_slot3219
  %bop3234 = add i32 %_lhs3232, %_lhs3233
  %size_ptr3236 = getelementptr { i32, [ 0 x i32 ] }* %arr3224, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3236, i32 %bop3234 )
  %index_ptr3235 = getelementptr { i32, [ 0 x i32 ] }* %arr3224, i32 0, i32 1, i32 %bop3234
  %_lhs3237 = load { i32, [ 0 x i32 ] }** %arr3224
  %index_ptr3229 = add i32* %index_ptr3229, 1
  br label %__compare1321

__fresh1327:
  br label %__end1323

__end1323:
  %r3238 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3227, { i32, [ 0 x i32 ] }** %r3238
  %_lhs3239 = load { i32, [ 0 x i32 ] }** %r3238
  %ret3240 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs3239 )
  ret i8* %ret3240
}


