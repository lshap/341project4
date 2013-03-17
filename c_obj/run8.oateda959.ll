declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh134:
  ret void
}


define i32 @program (i32 %argc525, { i32, [ 0 x i8* ] }* %argv523){

__fresh133:
  %argc_slot526 = alloca i32
  store i32 %argc525, i32* %argc_slot526
  %argv_slot524 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv523, { i32, [ 0 x i8* ] }** %argv_slot524
  %array_ptr527 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array528 = bitcast { i32, [ 0 x i32 ] }* %array_ptr527 to { i32, [ 0 x i32 ] }* 
  %index_ptr529 = getelementptr { i32, [ 0 x i32 ] }* %array528, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr529
  %index_ptr530 = getelementptr { i32, [ 0 x i32 ] }* %array528, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr530
  %arr531 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array528, { i32, [ 0 x i32 ] }** %arr531
  %index_ptr532 = getelementptr { i32, [ 0 x i32 ] }** %arr531, i32 1
  %_lhs533 = load { i32, [ 0 x i32 ] }** %arr531
  ret { i32, [ 0 x i32 ] }* %_lhs533
}


