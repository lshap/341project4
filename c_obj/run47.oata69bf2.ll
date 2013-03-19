declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1593 = global i32 1, align 4
define void @oat_init (){

__fresh591:
  ret void
}


define i32 @program (i32 %argc1599, { i32, [ 0 x i8* ] }* %argv1597){

__fresh587:
  %argc_slot1600 = alloca i32
  store i32 %argc1599, i32* %argc_slot1600
  %argv_slot1598 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1597, { i32, [ 0 x i8* ] }** %argv_slot1598
  %ret1601 = call i32 @f (  )
  %array_ptr1602 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1601 )
  %array1603 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1602 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr1605
  br label %__compare584

__fresh588:
  br label %__compare584

__compare584:
  %comparison_result1606 = icmp slt i32* %index_ptr1605, %ret1601
  br i1 %comparison_result1606, label %__body585, label %__end586

__fresh589:
  br label %__body585

__body585:
  store i32* %index_ptr1605, i32* %i1607
  %_lhs1608 = load i32* %i1607
  %index_ptr1605 = add i32* %index_ptr1605, 1
  br label %__compare584

__fresh590:
  br label %__end586

__end586:
  %b1609 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1603, { i32, [ 0 x i32 ] }** %b1609
  %_lhs1610 = load i32* @a1593
  %size_ptr1612 = getelementptr { i32, [ 0 x i32 ] }* %b1609, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1612, i32 0 )
  %index_ptr1611 = getelementptr { i32, [ 0 x i32 ] }* %b1609, i32 0, i32 1, i32 0
  %_lhs1613 = load { i32, [ 0 x i32 ] }** %b1609
  %bop1614 = add i32 %_lhs1610, %_lhs1613
  %size_ptr1616 = getelementptr { i32, [ 0 x i32 ] }* %b1609, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1616, i32 1 )
  %index_ptr1615 = getelementptr { i32, [ 0 x i32 ] }* %b1609, i32 0, i32 1, i32 1
  %_lhs1617 = load { i32, [ 0 x i32 ] }** %b1609
  %bop1618 = add i32 %bop1614, %_lhs1617
  ret i32 %bop1618
}


define i32 @f (){

__fresh583:
  %_lhs1594 = load i32* @a1593
  %bop1595 = add i32 %_lhs1594, 1
  store i32 %bop1595, i32* @a1593
  %_lhs1596 = load i32* @a1593
  ret i32 %_lhs1596
}


