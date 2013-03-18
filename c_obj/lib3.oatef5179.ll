declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh344:
  ret void
}


define i32 @program (i32 %argc1448, { i32, [ 0 x i8* ] }* %argv1446){

__fresh343:
  %argc_slot1449 = alloca i32
  store i32 %argc1448, i32* %argc_slot1449
  %argv_slot1447 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1446, { i32, [ 0 x i8* ] }** %argv_slot1447
  %array_ptr1450 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1451 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1450 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1452 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1453 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1452 to { i32, [ 0 x i32 ] }* 
  %index_ptr1454 = getelementptr { i32, [ 0 x i32 ] }* %array1453, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1454
  %index_ptr1455 = getelementptr { i32, [ 0 x i32 ] }* %array1453, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1455
  %index_ptr1456 = getelementptr { i32, [ 0 x i32 ] }* %array1453, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1456
  %index_ptr1457 = getelementptr { i32, [ 0 x i32 ] }* %array1453, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1457
  %index_ptr1458 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1451, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1453, { i32, [ 0 x i32 ] }** %index_ptr1458
  %array_ptr1459 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1460 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1459 to { i32, [ 0 x i32 ] }* 
  %index_ptr1461 = getelementptr { i32, [ 0 x i32 ] }* %array1460, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1461
  %index_ptr1462 = getelementptr { i32, [ 0 x i32 ] }* %array1460, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1462
  %index_ptr1463 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1451, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1460, { i32, [ 0 x i32 ] }** %index_ptr1463
  %array_ptr1464 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1465 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1464 to { i32, [ 0 x i32 ] }* 
  %index_ptr1466 = getelementptr { i32, [ 0 x i32 ] }* %array1465, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1466
  %index_ptr1467 = getelementptr { i32, [ 0 x i32 ] }* %array1465, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1467
  %index_ptr1468 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1451, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1465, { i32, [ 0 x i32 ] }** %index_ptr1468
  %array_ptr1469 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1470 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1469 to { i32, [ 0 x i32 ] }* 
  %index_ptr1471 = getelementptr { i32, [ 0 x i32 ] }* %array1470, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1471
  %index_ptr1472 = getelementptr { i32, [ 0 x i32 ] }* %array1470, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1472
  %index_ptr1473 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1451, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1470, { i32, [ 0 x i32 ] }** %index_ptr1473
  %arr1474 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1451, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1474
  %index_ptr1475 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1474, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1476 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1474
  %len_ptr1477 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1476, i32 0, i32 0
  %len1478 = load i32* %len_ptr1477
  %len1479 = alloca i32
  store i32 %len1478, i32* %len1479
  %_lhs1480 = load i32* %len1479
  ret i32 %_lhs1480
}


