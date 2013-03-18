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


define i32 @program (i32 %argc1480, { i32, [ 0 x i8* ] }* %argv1478){

__fresh419:
  %argc_slot1481 = alloca i32
  store i32 %argc1480, i32* %argc_slot1481
  %argv_slot1479 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1478, { i32, [ 0 x i8* ] }** %argv_slot1479
  %array_ptr1482 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1483 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1482 to { i32, [ 0 x i32 ] }* 
  %index_ptr1484 = getelementptr { i32, [ 0 x i32 ] }* %array1483, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1484
  %index_ptr1485 = getelementptr { i32, [ 0 x i32 ] }* %array1483, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1485
  %index_ptr1486 = getelementptr { i32, [ 0 x i32 ] }* %array1483, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1486
  %arr1487 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1483, { i32, [ 0 x i32 ] }** %arr1487
  %_lhs1488 = load { i32, [ 0 x i32 ] }** %arr1487
  %len_ptr1489 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1488, i32 0, i32 0
  %len1490 = load i32* %len_ptr1489
  %len1491 = alloca i32
  store i32 %len1490, i32* %len1491
  %_lhs1492 = load i32* %len1491
  ret i32 %_lhs1492
}


