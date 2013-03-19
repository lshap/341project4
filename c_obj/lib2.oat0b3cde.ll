declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh763:
  ret void
}


define i32 @program (i32 %argc1662, { i32, [ 0 x i8* ] }* %argv1660){

__fresh762:
  %argc_slot1663 = alloca i32
  store i32 %argc1662, i32* %argc_slot1663
  %argv_slot1661 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1660, { i32, [ 0 x i8* ] }** %argv_slot1661
  %array_ptr1664 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1665 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1664 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1666 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1667 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1666 to { i32, [ 0 x i32 ] }* 
  %index_ptr1668 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1668
  %index_ptr1669 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1669
  %index_ptr1670 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1665, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1667, { i32, [ 0 x i32 ] }** %index_ptr1670
  %array_ptr1671 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1672 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1671 to { i32, [ 0 x i32 ] }* 
  %index_ptr1673 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1673
  %index_ptr1674 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1674
  %index_ptr1675 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1665, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1672, { i32, [ 0 x i32 ] }** %index_ptr1675
  %array_ptr1676 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1677 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1676 to { i32, [ 0 x i32 ] }* 
  %index_ptr1678 = getelementptr { i32, [ 0 x i32 ] }* %array1677, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1678
  %index_ptr1679 = getelementptr { i32, [ 0 x i32 ] }* %array1677, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1679
  %index_ptr1680 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1665, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1677, { i32, [ 0 x i32 ] }** %index_ptr1680
  %array_ptr1681 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1682 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1681 to { i32, [ 0 x i32 ] }* 
  %index_ptr1683 = getelementptr { i32, [ 0 x i32 ] }* %array1682, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1683
  %index_ptr1684 = getelementptr { i32, [ 0 x i32 ] }* %array1682, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1684
  %index_ptr1685 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1665, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1682, { i32, [ 0 x i32 ] }** %index_ptr1685
  %arr1686 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1665, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1686
  %size_ptr1688 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1686, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1688, i32 2 )
  %index_ptr1687 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1686, i32 0, i32 1, i32 2
  %_lhs1689 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1686
  %len_ptr1690 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1689, i32 0, i32 0
  %len1691 = load i32* %len_ptr1690
  %len1692 = alloca i32
  store i32 %len1691, i32* %len1692
  %_lhs1693 = load i32* %len1692
  ret i32 %_lhs1693
}


