declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh424:
  ret void
}


define i32 @program (i32 %argc1540, { i32, [ 0 x i8* ] }* %argv1538){

__fresh423:
  %argc_slot1541 = alloca i32
  store i32 %argc1540, i32* %argc_slot1541
  %argv_slot1539 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1538, { i32, [ 0 x i8* ] }** %argv_slot1539
  %array_ptr1542 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1543 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1542 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1544 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1545 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1544 to { i32, [ 0 x i32 ] }* 
  %index_ptr1546 = getelementptr { i32, [ 0 x i32 ] }* %array1545, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1546
  %index_ptr1547 = getelementptr { i32, [ 0 x i32 ] }* %array1545, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1547
  %index_ptr1548 = getelementptr { i32, [ 0 x i32 ] }* %array1545, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1548
  %index_ptr1549 = getelementptr { i32, [ 0 x i32 ] }* %array1545, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1549
  %index_ptr1550 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1543, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1545, { i32, [ 0 x i32 ] }** %index_ptr1550
  %array_ptr1551 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1552 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1551 to { i32, [ 0 x i32 ] }* 
  %index_ptr1553 = getelementptr { i32, [ 0 x i32 ] }* %array1552, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1553
  %index_ptr1554 = getelementptr { i32, [ 0 x i32 ] }* %array1552, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1554
  %index_ptr1555 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1543, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1552, { i32, [ 0 x i32 ] }** %index_ptr1555
  %array_ptr1556 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1557 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1556 to { i32, [ 0 x i32 ] }* 
  %index_ptr1558 = getelementptr { i32, [ 0 x i32 ] }* %array1557, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1558
  %index_ptr1559 = getelementptr { i32, [ 0 x i32 ] }* %array1557, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1559
  %index_ptr1560 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1543, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1557, { i32, [ 0 x i32 ] }** %index_ptr1560
  %array_ptr1561 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1562 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1561 to { i32, [ 0 x i32 ] }* 
  %index_ptr1563 = getelementptr { i32, [ 0 x i32 ] }* %array1562, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1563
  %index_ptr1564 = getelementptr { i32, [ 0 x i32 ] }* %array1562, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1564
  %index_ptr1565 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1543, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1562, { i32, [ 0 x i32 ] }** %index_ptr1565
  %arr1566 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1543, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1566
  %index_ptr1567 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1566, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1568 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1566
  %len_ptr1569 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1568, i32 0, i32 0
  %len1570 = load i32* %len_ptr1569
  %len1571 = alloca i32
  store i32 %len1570, i32* %len1571
  %_lhs1572 = load i32* %len1571
  ret i32 %_lhs1572
}


