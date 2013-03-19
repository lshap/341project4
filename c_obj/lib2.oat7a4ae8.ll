declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh591:
  ret void
}


define i32 @program (i32 %argc1498, { i32, [ 0 x i8* ] }* %argv1496){

__fresh590:
  %argc_slot1499 = alloca i32
  store i32 %argc1498, i32* %argc_slot1499
  %argv_slot1497 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1496, { i32, [ 0 x i8* ] }** %argv_slot1497
  %array_ptr1500 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1501 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1500 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1502 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1503 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1502 to { i32, [ 0 x i32 ] }* 
  %index_ptr1504 = getelementptr { i32, [ 0 x i32 ] }* %array1503, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1504
  %index_ptr1505 = getelementptr { i32, [ 0 x i32 ] }* %array1503, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1505
  %index_ptr1506 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1501, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1503, { i32, [ 0 x i32 ] }** %index_ptr1506
  %array_ptr1507 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1508 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1507 to { i32, [ 0 x i32 ] }* 
  %index_ptr1509 = getelementptr { i32, [ 0 x i32 ] }* %array1508, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1509
  %index_ptr1510 = getelementptr { i32, [ 0 x i32 ] }* %array1508, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1510
  %index_ptr1511 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1501, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1508, { i32, [ 0 x i32 ] }** %index_ptr1511
  %array_ptr1512 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1513 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1512 to { i32, [ 0 x i32 ] }* 
  %index_ptr1514 = getelementptr { i32, [ 0 x i32 ] }* %array1513, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1514
  %index_ptr1515 = getelementptr { i32, [ 0 x i32 ] }* %array1513, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1515
  %index_ptr1516 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1501, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1513, { i32, [ 0 x i32 ] }** %index_ptr1516
  %array_ptr1517 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1518 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1517 to { i32, [ 0 x i32 ] }* 
  %index_ptr1519 = getelementptr { i32, [ 0 x i32 ] }* %array1518, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1519
  %index_ptr1520 = getelementptr { i32, [ 0 x i32 ] }* %array1518, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1520
  %index_ptr1521 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1501, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1518, { i32, [ 0 x i32 ] }** %index_ptr1521
  %arr1522 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1501, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1522
  %index_ptr1523 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1522, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs1524 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1522
  %len_ptr1525 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1524, i32 0, i32 0
  %len1526 = load i32* %len_ptr1525
  %len1527 = alloca i32
  store i32 %len1526, i32* %len1527
  %_lhs1528 = load i32* %len1527
  ret i32 %_lhs1528
}


