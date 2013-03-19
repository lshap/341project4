declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh634:
  ret void
}


define i32 @program (i32 %argc1642, { i32, [ 0 x i8* ] }* %argv1640){

__fresh631:
  %argc_slot1643 = alloca i32
  store i32 %argc1642, i32* %argc_slot1643
  %argv_slot1641 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1640, { i32, [ 0 x i8* ] }** %argv_slot1641
  %array_ptr1644 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1645 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1644 to { i32, [ 0 x i32 ] }* 
  %index_ptr1646 = getelementptr { i32, [ 0 x i32 ] }* %array1645, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1646
  %index_ptr1647 = getelementptr { i32, [ 0 x i32 ] }* %array1645, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1647
  %index_ptr1648 = getelementptr { i32, [ 0 x i32 ] }* %array1645, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1648
  %index_ptr1649 = getelementptr { i32, [ 0 x i32 ] }* %array1645, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1649
  %index_ptr1650 = getelementptr { i32, [ 0 x i32 ] }* %array1645, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1650
  %arr11651 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1645, { i32, [ 0 x i32 ] }** %arr11651
  %_lhs1652 = load { i32, [ 0 x i32 ] }** %arr11651
  %ret1653 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1652 )
  %str1654 = alloca i8*
  store i8* %ret1653, i8** %str1654
  %_lhs1655 = load i8** %str1654
  %ret1656 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1655 )
  %arr21657 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1656, { i32, [ 0 x i32 ] }** %arr21657
  %s1658 = alloca i32
  store i32 0, i32* %s1658
  %i1659 = alloca i32
  store i32 0, i32* %i1659
  br label %__cond630

__cond630:
  %_lhs1660 = load i32* %i1659
  %bop1661 = icmp slt i32 %_lhs1660, 5
  br i1 %bop1661, label %__body629, label %__post628

__fresh632:
  br label %__body629

__body629:
  %_lhs1662 = load i32* %s1658
  %_lhs1663 = load i32* %i1659
  %index_ptr1664 = getelementptr { i32, [ 0 x i32 ] }** %arr21657, i32 %_lhs1663
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1663 )
  %_lhs1665 = load { i32, [ 0 x i32 ] }** %arr21657
  %bop1666 = add i32 %_lhs1662, %_lhs1665
  store i32 %bop1666, i32* %s1658
  %_lhs1667 = load i32* %i1659
  %bop1668 = add i32 %_lhs1667, 1
  store i32 %bop1668, i32* %i1659
  br label %__cond630

__fresh633:
  br label %__post628

__post628:
  %_lhs1669 = load i32* %s1658
  ret i32 %_lhs1669
}


