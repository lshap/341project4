declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh420:
  ret void
}


define i32 @program (i32 %argc1492, { i32, [ 0 x i8* ] }* %argv1490){

__fresh419:
  %argc_slot1493 = alloca i32
  store i32 %argc1492, i32* %argc_slot1493
  %argv_slot1491 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1490, { i32, [ 0 x i8* ] }** %argv_slot1491
  %array_ptr1494 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1495 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1494 to { i32, [ 0 x i32 ] }* 
  %index_ptr1496 = getelementptr { i32, [ 0 x i32 ] }* %array1495, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1496
  %index_ptr1497 = getelementptr { i32, [ 0 x i32 ] }* %array1495, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1497
  %index_ptr1498 = getelementptr { i32, [ 0 x i32 ] }* %array1495, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1498
  %arr1499 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1495, { i32, [ 0 x i32 ] }** %arr1499
  %_lhs1500 = load { i32, [ 0 x i32 ] }** %arr1499
  %len_ptr1501 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1500, i32 0, i32 0
  %len1502 = load i32* %len_ptr1501
  %len1503 = alloca i32
  store i32 %len1502, i32* %len1503
  %_lhs1504 = load i32* %len1503
  ret i32 %_lhs1504
}


