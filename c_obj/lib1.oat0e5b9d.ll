declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh589:
  ret void
}


define i32 @program (i32 %argc1483, { i32, [ 0 x i8* ] }* %argv1481){

__fresh588:
  %argc_slot1484 = alloca i32
  store i32 %argc1483, i32* %argc_slot1484
  %argv_slot1482 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1481, { i32, [ 0 x i8* ] }** %argv_slot1482
  %array_ptr1485 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1486 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1485 to { i32, [ 0 x i32 ] }* 
  %index_ptr1487 = getelementptr { i32, [ 0 x i32 ] }* %array1486, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1487
  %index_ptr1488 = getelementptr { i32, [ 0 x i32 ] }* %array1486, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1488
  %index_ptr1489 = getelementptr { i32, [ 0 x i32 ] }* %array1486, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1489
  %arr1490 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1486, { i32, [ 0 x i32 ] }** %arr1490
  %_lhs1491 = load { i32, [ 0 x i32 ] }** %arr1490
  %len_ptr1492 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1491, i32 0, i32 0
  %len1493 = load i32* %len_ptr1492
  %len1494 = alloca i32
  store i32 %len1493, i32* %len1494
  %_lhs1495 = load i32* %len1494
  ret i32 %_lhs1495
}


