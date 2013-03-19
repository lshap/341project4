declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh635:
  ret void
}


define i32 @program (i32 %argc1651, { i32, [ 0 x i8* ] }* %argv1649){

__fresh632:
  %argc_slot1652 = alloca i32
  store i32 %argc1651, i32* %argc_slot1652
  %argv_slot1650 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1649, { i32, [ 0 x i8* ] }** %argv_slot1650
  %array_ptr1653 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1654 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1653 to { i32, [ 0 x i32 ] }* 
  %index_ptr1655 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1655
  %index_ptr1656 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1656
  %index_ptr1657 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1657
  %index_ptr1658 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1658
  %index_ptr1659 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1659
  %arr11660 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1654, { i32, [ 0 x i32 ] }** %arr11660
  %_lhs1661 = load { i32, [ 0 x i32 ] }** %arr11660
  %ret1662 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1661 )
  %str1663 = alloca i8*
  store i8* %ret1662, i8** %str1663
  %_lhs1664 = load i8** %str1663
  %ret1665 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1664 )
  %arr21666 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1665, { i32, [ 0 x i32 ] }** %arr21666
  %s1667 = alloca i32
  store i32 0, i32* %s1667
  %i1668 = alloca i32
  store i32 0, i32* %i1668
  br label %__cond631

__cond631:
  %_lhs1669 = load i32* %i1668
  %bop1670 = icmp slt i32 %_lhs1669, 5
  br i1 %bop1670, label %__body630, label %__post629

__fresh633:
  br label %__body630

__body630:
  %_lhs1671 = load i32* %s1667
  %_lhs1672 = load i32* %i1668
  %index_ptr1673 = getelementptr { i32, [ 0 x i32 ] }** %arr21666, i32 %_lhs1672
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1672 )
  %_lhs1674 = load { i32, [ 0 x i32 ] }** %arr21666
  %bop1675 = add i32 %_lhs1671, %_lhs1674
  store i32 %bop1675, i32* %s1667
  %_lhs1676 = load i32* %i1668
  %bop1677 = add i32 %_lhs1676, 1
  store i32 %bop1677, i32* %i1668
  br label %__cond631

__fresh634:
  br label %__post629

__post629:
  %_lhs1678 = load i32* %s1667
  ret i32 %_lhs1678
}


