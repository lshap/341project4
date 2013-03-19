declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1457 = global i32 1, align 4
define void @oat_init (){

__fresh587:
  ret void
}


define i32 @program (i32 %argc1463, { i32, [ 0 x i8* ] }* %argv1461){

__fresh583:
  %argc_slot1464 = alloca i32
  store i32 %argc1463, i32* %argc_slot1464
  %argv_slot1462 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1461, { i32, [ 0 x i8* ] }** %argv_slot1462
  %ret1465 = call i32 @f (  )
  %array_ptr1466 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1465 )
  %array1467 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1466 to { i32, [ 0 x i32 ] }* 
  %index_ptr1468 = getelementptr { i32, [ 0 x i32 ] }* %array1467, i32 0, i32 1, i32 0
  store i32 %ret1465, i32* %index_ptr1468
  store i32 0, i32* %index_ptr1469
  br label %__compare580

__fresh584:
  br label %__compare580

__compare580:
  %comparison_result1470 = icmp slt i32* %index_ptr1469, %ret1465
  br i1 %comparison_result1470, label %__body581, label %__end582

__fresh585:
  br label %__body581

__body581:
  store i32* %index_ptr1469, i32* %i1471
  %ret1472 = call i32 @f (  )
  %index_ptr1469 = add i32* %index_ptr1469, 1
  br label %__compare580

__fresh586:
  br label %__end582

__end582:
  %b1473 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array1467, { i32, [ 0 x i32 ] }** %b1473
  %_lhs1474 = load i32* @a1457
  %index_ptr1475 = getelementptr { i32, [ 0 x i32 ] }** %b1473, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1476 = load { i32, [ 0 x i32 ] }** %b1473
  %bop1477 = add i32 %_lhs1474, %_lhs1476
  %index_ptr1478 = getelementptr { i32, [ 0 x i32 ] }** %b1473, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1479 = load { i32, [ 0 x i32 ] }** %b1473
  %bop1480 = add i32 %bop1477, %_lhs1479
  ret i32 %bop1480
}


define i32 @f (){

__fresh579:
  %_lhs1458 = load i32* @a1457
  %bop1459 = add i32 %_lhs1458, 1
  store i32 %bop1459, i32* @a1457
  %_lhs1460 = load i32* @a1457
  ret i32 %_lhs1460
}


