declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh231:
  ret void
}


define i32 @program (i32 %argc588, { i32, [ 0 x i8* ] }* %argv586){

__fresh230:
  %argc_slot589 = alloca i32
  store i32 %argc588, i32* %argc_slot589
  %argv_slot587 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv586, { i32, [ 0 x i8* ] }** %argv_slot587
  %array_ptr590 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array591 = bitcast { i32, [ 0 x i32 ] }* %array_ptr590 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr592 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array593 = bitcast { i32, [ 0 x i32 ] }* %array_ptr592 to { i32, [ 0 x i32 ] }* 
  %index_ptr594 = getelementptr { i32, [ 0 x i32 ] }* %array593, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr594
  %index_ptr595 = getelementptr { i32, [ 0 x i32 ] }* %array593, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr595
  %index_ptr596 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array591, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array593, { i32, [ 0 x i32 ] }** %index_ptr596
  %array_ptr597 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array598 = bitcast { i32, [ 0 x i32 ] }* %array_ptr597 to { i32, [ 0 x i32 ] }* 
  %index_ptr599 = getelementptr { i32, [ 0 x i32 ] }* %array598, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr599
  %index_ptr600 = getelementptr { i32, [ 0 x i32 ] }* %array598, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr600
  %index_ptr601 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array591, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array598, { i32, [ 0 x i32 ] }** %index_ptr601
  %arr602 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array591, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr602
  %index_ptr603 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr602, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr604 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr602, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs605 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr602
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs605
}


