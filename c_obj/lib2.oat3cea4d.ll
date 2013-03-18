declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh422:
  ret void
}


define i32 @program (i32 %argc1507, { i32, [ 0 x i8* ] }* %argv1505){

__fresh421:
  %argc_slot1508 = alloca i32
  store i32 %argc1507, i32* %argc_slot1508
  %argv_slot1506 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1505, { i32, [ 0 x i8* ] }** %argv_slot1506
  %array_ptr1509 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1510 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1509 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1511 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1512 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1511 to { i32, [ 0 x i32 ] }* 
  %index_ptr1513 = getelementptr { i32, [ 0 x i32 ] }* %array1512, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1513
  %index_ptr1514 = getelementptr { i32, [ 0 x i32 ] }* %array1512, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1514
  %index_ptr1515 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1510, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1512, { i32, [ 0 x i32 ] }** %index_ptr1515
  %array_ptr1516 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1517 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1516 to { i32, [ 0 x i32 ] }* 
  %index_ptr1518 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1518
  %index_ptr1519 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1519
  %index_ptr1520 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1510, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1517, { i32, [ 0 x i32 ] }** %index_ptr1520
  %array_ptr1521 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1522 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1521 to { i32, [ 0 x i32 ] }* 
  %index_ptr1523 = getelementptr { i32, [ 0 x i32 ] }* %array1522, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1523
  %index_ptr1524 = getelementptr { i32, [ 0 x i32 ] }* %array1522, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1524
  %index_ptr1525 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1510, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1522, { i32, [ 0 x i32 ] }** %index_ptr1525
  %array_ptr1526 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1527 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1526 to { i32, [ 0 x i32 ] }* 
  %index_ptr1528 = getelementptr { i32, [ 0 x i32 ] }* %array1527, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1528
  %index_ptr1529 = getelementptr { i32, [ 0 x i32 ] }* %array1527, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1529
  %index_ptr1530 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1510, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1527, { i32, [ 0 x i32 ] }** %index_ptr1530
  %arr1531 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1510, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1531
  %index_ptr1532 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1531, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs1533 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1531
  %len_ptr1534 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1533, i32 0, i32 0
  %len1535 = load i32* %len_ptr1534
  %len1536 = alloca i32
  store i32 %len1535, i32* %len1536
  %_lhs1537 = load i32* %len1536
  ret i32 %_lhs1537
}


