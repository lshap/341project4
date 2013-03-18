declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh374:
  ret void
}


define i32 @program (i32 %argc1559, { i32, [ 0 x i8* ] }* %argv1557){

__fresh371:
  %argc_slot1560 = alloca i32
  store i32 %argc1559, i32* %argc_slot1560
  %argv_slot1558 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1557, { i32, [ 0 x i8* ] }** %argv_slot1558
  %array_ptr1561 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1562 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1561 to { i32, [ 0 x i32 ] }* 
  %index_ptr1563 = getelementptr { i32, [ 0 x i32 ] }* %array1562, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1563
  %index_ptr1564 = getelementptr { i32, [ 0 x i32 ] }* %array1562, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1564
  %index_ptr1565 = getelementptr { i32, [ 0 x i32 ] }* %array1562, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1565
  %index_ptr1566 = getelementptr { i32, [ 0 x i32 ] }* %array1562, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1566
  %index_ptr1567 = getelementptr { i32, [ 0 x i32 ] }* %array1562, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1567
  %arr11568 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1562, { i32, [ 0 x i32 ] }** %arr11568
  %_lhs1569 = load { i32, [ 0 x i32 ] }** %arr11568
  %ret1570 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1569 )
  %str1571 = alloca i8*
  store i8* %ret1570, i8** %str1571
  %_lhs1572 = load i8** %str1571
  %ret1573 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1572 )
  %arr21574 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1573, { i32, [ 0 x i32 ] }** %arr21574
  %s1575 = alloca i32
  store i32 0, i32* %s1575
  %i1576 = alloca i32
  store i32 0, i32* %i1576
  br label %__cond370

__cond370:
  %_lhs1577 = load i32* %i1576
  %bop1578 = icmp slt i32 %_lhs1577, 5
  br i1 %bop1578, label %__body369, label %__post368

__fresh372:
  br label %__body369

__body369:
  %_lhs1579 = load i32* %s1575
  %_lhs1580 = load i32* %i1576
  %index_ptr1581 = getelementptr { i32, [ 0 x i32 ] }** %arr21574, i32 %_lhs1580
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1580 )
  %_lhs1582 = load { i32, [ 0 x i32 ] }** %arr21574
  %bop1583 = add i32 %_lhs1579, %_lhs1582
  store i32 %bop1583, i32* %s1575
  %_lhs1584 = load i32* %i1576
  %bop1585 = add i32 %_lhs1584, 1
  store i32 %bop1585, i32* %i1576
  br label %__cond370

__fresh373:
  br label %__post368

__post368:
  %_lhs1586 = load i32* %s1575
  ret i32 %_lhs1586
}


