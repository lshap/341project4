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


define i32 @program (i32 %argc1495, { i32, [ 0 x i8* ] }* %argv1493){

__fresh421:
  %argc_slot1496 = alloca i32
  store i32 %argc1495, i32* %argc_slot1496
  %argv_slot1494 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1493, { i32, [ 0 x i8* ] }** %argv_slot1494
  %array_ptr1497 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1498 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1497 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1499 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1500 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1499 to { i32, [ 0 x i32 ] }* 
  %index_ptr1501 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1501
  %index_ptr1502 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1502
  %index_ptr1503 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1498, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1500, { i32, [ 0 x i32 ] }** %index_ptr1503
  %array_ptr1504 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1505 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1504 to { i32, [ 0 x i32 ] }* 
  %index_ptr1506 = getelementptr { i32, [ 0 x i32 ] }* %array1505, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1506
  %index_ptr1507 = getelementptr { i32, [ 0 x i32 ] }* %array1505, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1507
  %index_ptr1508 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1498, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1505, { i32, [ 0 x i32 ] }** %index_ptr1508
  %array_ptr1509 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1510 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1509 to { i32, [ 0 x i32 ] }* 
  %index_ptr1511 = getelementptr { i32, [ 0 x i32 ] }* %array1510, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1511
  %index_ptr1512 = getelementptr { i32, [ 0 x i32 ] }* %array1510, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1512
  %index_ptr1513 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1498, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1510, { i32, [ 0 x i32 ] }** %index_ptr1513
  %array_ptr1514 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1515 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1514 to { i32, [ 0 x i32 ] }* 
  %index_ptr1516 = getelementptr { i32, [ 0 x i32 ] }* %array1515, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1516
  %index_ptr1517 = getelementptr { i32, [ 0 x i32 ] }* %array1515, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1517
  %index_ptr1518 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1498, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1515, { i32, [ 0 x i32 ] }** %index_ptr1518
  %arr1519 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1498, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1519
  %index_ptr1520 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1519, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs1521 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1519
  %len_ptr1522 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1521, i32 0, i32 0
  %len1523 = load i32* %len_ptr1522
  %len1524 = alloca i32
  store i32 %len1523, i32* %len1524
  %_lhs1525 = load i32* %len1524
  ret i32 %_lhs1525
}


