declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh267:
  ret void
}


define i32 @program (i32 %argc605, { i32, [ 0 x i8* ] }* %argv603){

__fresh266:
  %argc_slot606 = alloca i32
  store i32 %argc605, i32* %argc_slot606
  %argv_slot604 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv603, { i32, [ 0 x i8* ] }** %argv_slot604
  %array_ptr607 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array608 = bitcast { i32, [ 0 x i32 ] }* %array_ptr607 to { i32, [ 0 x i32 ] }* 
  %index_ptr609 = getelementptr { i32, [ 0 x i32 ] }* %array608, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr609
  %index_ptr610 = getelementptr { i32, [ 0 x i32 ] }* %array608, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr610
  %arr611 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array608, { i32, [ 0 x i32 ] }** %arr611
  %size_ptr613 = getelementptr { i32, [ 0 x i32 ] }* %arr611, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr613, i32 1 )
  %index_ptr612 = getelementptr { i32, [ 0 x i32 ] }* %arr611, i32 0, i32 1, i32 1
  %_lhs614 = load { i32, [ 0 x i32 ] }** %arr611
  ret { i32, [ 0 x i32 ] }* %_lhs614
}


