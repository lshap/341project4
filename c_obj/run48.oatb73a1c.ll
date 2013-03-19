declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1466 = global i32 1, align 4
define void @oat_init (){

__fresh588:
  ret void
}


define i32 @program (i32 %argc1472, { i32, [ 0 x i8* ] }* %argv1470){

__fresh584:
  %argc_slot1473 = alloca i32
  store i32 %argc1472, i32* %argc_slot1473
  %argv_slot1471 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1470, { i32, [ 0 x i8* ] }** %argv_slot1471
  %ret1474 = call i32 @f (  )
  %array_ptr1475 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1474 )
  %array1476 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1475 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr1478
  br label %__compare581

__fresh585:
  br label %__compare581

__compare581:
  %comparison_result1479 = icmp slt i32* %index_ptr1478, %ret1474
  br i1 %comparison_result1479, label %__body582, label %__end583

__fresh586:
  br label %__body582

__body582:
  store i32* %index_ptr1478, i32* %i1480
  %ret1481 = call i32 @f (  )
  %index_ptr1478 = add i32* %index_ptr1478, 1
  br label %__compare581

__fresh587:
  br label %__end583

__end583:
  %b1482 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1476, { i32, [ 0 x i32 ] }** %b1482
  %_lhs1483 = load i32* @a1466
  %index_ptr1484 = getelementptr { i32, [ 0 x i32 ] }** %b1482, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1485 = load { i32, [ 0 x i32 ] }** %b1482
  %bop1486 = add i32 %_lhs1483, %_lhs1485
  %index_ptr1487 = getelementptr { i32, [ 0 x i32 ] }** %b1482, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1488 = load { i32, [ 0 x i32 ] }** %b1482
  %bop1489 = add i32 %bop1486, %_lhs1488
  ret i32 %bop1489
}


define i32 @f (){

__fresh580:
  %_lhs1467 = load i32* @a1466
  %bop1468 = add i32 %_lhs1467, 1
  store i32 %bop1468, i32* @a1466
  %_lhs1469 = load i32* @a1466
  ret i32 %_lhs1469
}


