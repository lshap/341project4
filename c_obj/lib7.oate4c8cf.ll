declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh200:
  ret void
}


define i32 @program (i32 %argc1418, { i32, [ 0 x i8* ] }* %argv1416){

__fresh197:
  %argc_slot1419 = alloca i32
  store i32 %argc1418, i32* %argc_slot1419
  %argv_slot1417 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1416, { i32, [ 0 x i8* ] }** %argv_slot1417
  %array_ptr1420 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1421 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1420 to { i32, [ 0 x i32 ] }* 
  %index_ptr1422 = getelementptr { i32, [ 0 x i32 ] }* %array1421, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1422
  %index_ptr1423 = getelementptr { i32, [ 0 x i32 ] }* %array1421, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1423
  %index_ptr1424 = getelementptr { i32, [ 0 x i32 ] }* %array1421, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1424
  %index_ptr1425 = getelementptr { i32, [ 0 x i32 ] }* %array1421, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1425
  %index_ptr1426 = getelementptr { i32, [ 0 x i32 ] }* %array1421, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1426
  %arr11427 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1421, { i32, [ 0 x i32 ] }** %arr11427
  %_lhs1428 = load { i32, [ 0 x i32 ] }** %arr11427
  %ret1429 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1428 )
  %str1430 = alloca i8*
  store i8* %ret1429, i8** %str1430
  %_lhs1431 = load i8** %str1430
  %ret1432 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1431 )
  %arr21433 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1432, { i32, [ 0 x i32 ] }** %arr21433
  %s1434 = alloca i32
  store i32 0, i32* %s1434
  %i1435 = alloca i32
  store i32 0, i32* %i1435
  br label %__cond196

__cond196:
  %_lhs1436 = load i32* %i1435
  %bop1437 = icmp slt i32 %_lhs1436, 5
  br i1 %bop1437, label %__body195, label %__post194

__fresh198:
  br label %__body195

__body195:
  %_lhs1438 = load i32* %s1434
  %_lhs1439 = load i32* %i1435
  %index_ptr1440 = getelementptr { i32, [ 0 x i32 ] }** %arr21433, i32 %_lhs1439
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1439 )
  %_lhs1442 = load { i32, [ 0 x i32 ] }** %arr21433
  %bop1443 = add i32 %_lhs1438, %_lhs1442
  store i32 %bop1443, i32* %s1434
  %_lhs1444 = load i32* %i1435
  %bop1445 = add i32 %_lhs1444, 1
  store i32 %bop1445, i32* %i1435
  br label %__cond196

__fresh199:
  br label %__post194

__post194:
  %_lhs1446 = load i32* %s1434
  ret i32 %_lhs1446
}


