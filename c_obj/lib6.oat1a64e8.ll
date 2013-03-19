declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11626 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11626.init
define void @oat_init (){

__fresh624:
  call void @arr11626.init(  )
  ret void
}


define i32 @program (i32 %argc1629, { i32, [ 0 x i8* ] }* %argv1627){

__fresh621:
  %argc_slot1630 = alloca i32
  store i32 %argc1629, i32* %argc_slot1630
  %argv_slot1628 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1627, { i32, [ 0 x i8* ] }** %argv_slot1628
  %_lhs1631 = load { i32, [ 0 x i32 ] }** @arr11626
  %ret1632 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1631 )
  %str1633 = alloca i8*
  store i8* %ret1632, i8** %str1633
  %_lhs1634 = load i8** %str1633
  %ret1635 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1634 )
  %arr21636 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1635, { i32, [ 0 x i32 ] }** %arr21636
  %s1637 = alloca i32
  store i32 0, i32* %s1637
  %i1638 = alloca i32
  store i32 0, i32* %i1638
  br label %__cond620

__cond620:
  %_lhs1639 = load i32* %i1638
  %bop1640 = icmp slt i32 %_lhs1639, 5
  br i1 %bop1640, label %__body619, label %__post618

__fresh622:
  br label %__body619

__body619:
  %_lhs1641 = load i32* %s1637
  %_lhs1642 = load i32* %i1638
  %index_ptr1643 = getelementptr { i32, [ 0 x i32 ] }** %arr21636, i32 %_lhs1642
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1642 )
  %_lhs1644 = load { i32, [ 0 x i32 ] }** %arr21636
  %bop1645 = add i32 %_lhs1641, %_lhs1644
  store i32 %bop1645, i32* %s1637
  %_lhs1646 = load i32* %i1638
  %bop1647 = add i32 %_lhs1646, 1
  store i32 %bop1647, i32* %i1638
  br label %__cond620

__fresh623:
  br label %__post618

__post618:
  %_lhs1648 = load i32* %s1637
  ret i32 %_lhs1648
}


define void @arr11626.init (){

__fresh617:
  %array_ptr1619 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1620 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1619 to { i32, [ 0 x i32 ] }* 
  %index_ptr1621 = getelementptr { i32, [ 0 x i32 ] }* %array1620, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1621
  %index_ptr1622 = getelementptr { i32, [ 0 x i32 ] }* %array1620, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1622
  %index_ptr1623 = getelementptr { i32, [ 0 x i32 ] }* %array1620, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1623
  %index_ptr1624 = getelementptr { i32, [ 0 x i32 ] }* %array1620, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1624
  %index_ptr1625 = getelementptr { i32, [ 0 x i32 ] }* %array1620, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1625
  store { i32, [ 0 x i32 ] }* %array1620, { i32, [ 0 x i32 ] }** @arr11626
  ret void
}


