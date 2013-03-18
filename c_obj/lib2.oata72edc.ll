declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh342:
  ret void
}


define i32 @program (i32 %argc1415, { i32, [ 0 x i8* ] }* %argv1413){

__fresh341:
  %argc_slot1416 = alloca i32
  store i32 %argc1415, i32* %argc_slot1416
  %argv_slot1414 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1413, { i32, [ 0 x i8* ] }** %argv_slot1414
  %array_ptr1417 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1418 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1417 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1419 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1420 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1419 to { i32, [ 0 x i32 ] }* 
  %index_ptr1421 = getelementptr { i32, [ 0 x i32 ] }* %array1420, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1421
  %index_ptr1422 = getelementptr { i32, [ 0 x i32 ] }* %array1420, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1422
  %index_ptr1423 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1418, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1420, { i32, [ 0 x i32 ] }** %index_ptr1423
  %array_ptr1424 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1425 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1424 to { i32, [ 0 x i32 ] }* 
  %index_ptr1426 = getelementptr { i32, [ 0 x i32 ] }* %array1425, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1426
  %index_ptr1427 = getelementptr { i32, [ 0 x i32 ] }* %array1425, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1427
  %index_ptr1428 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1418, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1425, { i32, [ 0 x i32 ] }** %index_ptr1428
  %array_ptr1429 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1430 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1429 to { i32, [ 0 x i32 ] }* 
  %index_ptr1431 = getelementptr { i32, [ 0 x i32 ] }* %array1430, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1431
  %index_ptr1432 = getelementptr { i32, [ 0 x i32 ] }* %array1430, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1432
  %index_ptr1433 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1418, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1430, { i32, [ 0 x i32 ] }** %index_ptr1433
  %array_ptr1434 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1435 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1434 to { i32, [ 0 x i32 ] }* 
  %index_ptr1436 = getelementptr { i32, [ 0 x i32 ] }* %array1435, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1436
  %index_ptr1437 = getelementptr { i32, [ 0 x i32 ] }* %array1435, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1437
  %index_ptr1438 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1418, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1435, { i32, [ 0 x i32 ] }** %index_ptr1438
  %arr1439 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1418, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1439
  %index_ptr1440 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1439, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs1441 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1439
  %len_ptr1442 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1441, i32 0, i32 0
  %len1443 = load i32* %len_ptr1442
  %len1444 = alloca i32
  store i32 %len1443, i32* %len1444
  %_lhs1445 = load i32* %len1444
  ret i32 %_lhs1445
}


