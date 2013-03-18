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


define i32 @program (i32 %argc1528, { i32, [ 0 x i8* ] }* %argv1526){

__fresh423:
  %argc_slot1529 = alloca i32
  store i32 %argc1528, i32* %argc_slot1529
  %argv_slot1527 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1526, { i32, [ 0 x i8* ] }** %argv_slot1527
  %array_ptr1530 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1531 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1530 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1532 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1533 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1532 to { i32, [ 0 x i32 ] }* 
  %index_ptr1534 = getelementptr { i32, [ 0 x i32 ] }* %array1533, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1534
  %index_ptr1535 = getelementptr { i32, [ 0 x i32 ] }* %array1533, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1535
  %index_ptr1536 = getelementptr { i32, [ 0 x i32 ] }* %array1533, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1536
  %index_ptr1537 = getelementptr { i32, [ 0 x i32 ] }* %array1533, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1537
  %index_ptr1538 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1531, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1533, { i32, [ 0 x i32 ] }** %index_ptr1538
  %array_ptr1539 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1540 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1539 to { i32, [ 0 x i32 ] }* 
  %index_ptr1541 = getelementptr { i32, [ 0 x i32 ] }* %array1540, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1541
  %index_ptr1542 = getelementptr { i32, [ 0 x i32 ] }* %array1540, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1542
  %index_ptr1543 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1531, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1540, { i32, [ 0 x i32 ] }** %index_ptr1543
  %array_ptr1544 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1545 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1544 to { i32, [ 0 x i32 ] }* 
  %index_ptr1546 = getelementptr { i32, [ 0 x i32 ] }* %array1545, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1546
  %index_ptr1547 = getelementptr { i32, [ 0 x i32 ] }* %array1545, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1547
  %index_ptr1548 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1531, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1545, { i32, [ 0 x i32 ] }** %index_ptr1548
  %array_ptr1549 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1550 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1549 to { i32, [ 0 x i32 ] }* 
  %index_ptr1551 = getelementptr { i32, [ 0 x i32 ] }* %array1550, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1551
  %index_ptr1552 = getelementptr { i32, [ 0 x i32 ] }* %array1550, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1552
  %index_ptr1553 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1531, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1550, { i32, [ 0 x i32 ] }** %index_ptr1553
  %arr1554 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1531, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1554
  %index_ptr1555 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1554, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1556 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1554
  %len_ptr1557 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1556, i32 0, i32 0
  %len1558 = load i32* %len_ptr1557
  %len1559 = alloca i32
  store i32 %len1558, i32* %len1559
  %_lhs1560 = load i32* %len1559
  ret i32 %_lhs1560
}


