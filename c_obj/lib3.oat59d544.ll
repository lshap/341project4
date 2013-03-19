declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh594:
  ret void
}


define i32 @program (i32 %argc1531, { i32, [ 0 x i8* ] }* %argv1529){

__fresh593:
  %argc_slot1532 = alloca i32
  store i32 %argc1531, i32* %argc_slot1532
  %argv_slot1530 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1529, { i32, [ 0 x i8* ] }** %argv_slot1530
  %array_ptr1533 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1534 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1533 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1535 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1536 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1535 to { i32, [ 0 x i32 ] }* 
  %index_ptr1537 = getelementptr { i32, [ 0 x i32 ] }* %array1536, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1537
  %index_ptr1538 = getelementptr { i32, [ 0 x i32 ] }* %array1536, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1538
  %index_ptr1539 = getelementptr { i32, [ 0 x i32 ] }* %array1536, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1539
  %index_ptr1540 = getelementptr { i32, [ 0 x i32 ] }* %array1536, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1540
  %index_ptr1541 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1534, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1536, { i32, [ 0 x i32 ] }** %index_ptr1541
  %array_ptr1542 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1543 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1542 to { i32, [ 0 x i32 ] }* 
  %index_ptr1544 = getelementptr { i32, [ 0 x i32 ] }* %array1543, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1544
  %index_ptr1545 = getelementptr { i32, [ 0 x i32 ] }* %array1543, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1545
  %index_ptr1546 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1534, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1543, { i32, [ 0 x i32 ] }** %index_ptr1546
  %array_ptr1547 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1548 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1547 to { i32, [ 0 x i32 ] }* 
  %index_ptr1549 = getelementptr { i32, [ 0 x i32 ] }* %array1548, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1549
  %index_ptr1550 = getelementptr { i32, [ 0 x i32 ] }* %array1548, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1550
  %index_ptr1551 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1534, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1548, { i32, [ 0 x i32 ] }** %index_ptr1551
  %array_ptr1552 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1553 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1552 to { i32, [ 0 x i32 ] }* 
  %index_ptr1554 = getelementptr { i32, [ 0 x i32 ] }* %array1553, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1554
  %index_ptr1555 = getelementptr { i32, [ 0 x i32 ] }* %array1553, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1555
  %index_ptr1556 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1534, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1553, { i32, [ 0 x i32 ] }** %index_ptr1556
  %arr1557 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1534, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1557
  %index_ptr1558 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1557, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1559 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1557
  %len_ptr1560 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1559, i32 0, i32 0
  %len1561 = load i32* %len_ptr1560
  %len1562 = alloca i32
  store i32 %len1561, i32* %len1562
  %_lhs1563 = load i32* %len1562
  ret i32 %_lhs1563
}


