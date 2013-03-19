declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1619 = global i32 1, align 4
define void @oat_init (){

__fresh755:
  ret void
}


define i32 @program (i32 %argc1625, { i32, [ 0 x i8* ] }* %argv1623){

__fresh751:
  %argc_slot1626 = alloca i32
  store i32 %argc1625, i32* %argc_slot1626
  %argv_slot1624 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1623, { i32, [ 0 x i8* ] }** %argv_slot1624
  %ret1627 = call i32 @f (  )
  %array_ptr1628 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1627 )
  %array1629 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1628 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr1631
  br label %__compare748

__fresh752:
  br label %__compare748

__compare748:
  %comparison_result1632 = icmp slt i32* %index_ptr1631, %ret1627
  br i1 %comparison_result1632, label %__body749, label %__end750

__fresh753:
  br label %__body749

__body749:
  store i32* %index_ptr1631, i32* %i1633
  %ret1634 = call i32 @f (  )
  %index_ptr1631 = add i32* %index_ptr1631, 1
  br label %__compare748

__fresh754:
  br label %__end750

__end750:
  %b1635 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1629, { i32, [ 0 x i32 ] }** %b1635
  %_lhs1636 = load i32* @a1619
  %size_ptr1638 = getelementptr { i32, [ 0 x i32 ] }* %b1635, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1638, i32 0 )
  %index_ptr1637 = getelementptr { i32, [ 0 x i32 ] }* %b1635, i32 0, i32 1, i32 0
  %_lhs1639 = load { i32, [ 0 x i32 ] }** %b1635
  %bop1640 = add i32 %_lhs1636, %_lhs1639
  %size_ptr1642 = getelementptr { i32, [ 0 x i32 ] }* %b1635, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1642, i32 1 )
  %index_ptr1641 = getelementptr { i32, [ 0 x i32 ] }* %b1635, i32 0, i32 1, i32 1
  %_lhs1643 = load { i32, [ 0 x i32 ] }** %b1635
  %bop1644 = add i32 %bop1640, %_lhs1643
  ret i32 %bop1644
}


define i32 @f (){

__fresh747:
  %_lhs1620 = load i32* @a1619
  %bop1621 = add i32 %_lhs1620, 1
  store i32 %bop1621, i32* @a1619
  %_lhs1622 = load i32* @a1619
  ret i32 %_lhs1622
}


