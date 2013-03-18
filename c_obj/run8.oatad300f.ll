declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh184:
  ret void
}


define i32 @program (i32 %argc586, { i32, [ 0 x i8* ] }* %argv584){

__fresh183:
  %argc_slot587 = alloca i32
  store i32 %argc586, i32* %argc_slot587
  %argv_slot585 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv584, { i32, [ 0 x i8* ] }** %argv_slot585
  %array_ptr588 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array589 = bitcast { i32, [ 0 x i32 ] }* %array_ptr588 to { i32, [ 0 x i32 ] }* 
  %index_ptr590 = getelementptr { i32, [ 0 x i32 ] }* %array589, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr590
  %index_ptr591 = getelementptr { i32, [ 0 x i32 ] }* %array589, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr591
  %arr592 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array589, { i32, [ 0 x i32 ] }** %arr592
  %index_ptr593 = getelementptr { i32, [ 0 x i32 ] }** %arr592, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs594 = load { i32, [ 0 x i32 ] }** %arr592
  ret { i32, [ 0 x i32 ] }* %_lhs594
}


