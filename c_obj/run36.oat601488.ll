declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1311:
  ret void
}


define i32 @program (i32 %argc3183, { i32, [ 0 x i8* ] }* %argv3181){

__fresh1310:
  %argc_slot3184 = alloca i32
  store i32 %argc3183, i32* %argc_slot3184
  %argv_slot3182 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3181, { i32, [ 0 x i8* ] }** %argv_slot3182
  %array_ptr3185 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3186 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3185 to { i32, [ 0 x i32 ] }* 
  %index_ptr3187 = getelementptr { i32, [ 0 x i32 ] }* %array3186, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3187
  %index_ptr3188 = getelementptr { i32, [ 0 x i32 ] }* %array3186, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3188
  %a3189 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3186, { i32, [ 0 x i32 ] }** %a3189
  %unop3190 = sub i32 0, 1
  %size_ptr3192 = getelementptr { i32, [ 0 x i32 ] }* %a3189, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3192, i32 %unop3190 )
  %index_ptr3191 = getelementptr { i32, [ 0 x i32 ] }* %a3189, i32 0, i32 1, i32 %unop3190
  %_lhs3193 = load { i32, [ 0 x i32 ] }** %a3189
  ret { i32, [ 0 x i32 ] }* %_lhs3193
}


