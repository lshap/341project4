declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh607:
  ret void
}


define i32 @program (i32 %argc1696, { i32, [ 0 x i8* ] }* %argv1694){

__fresh606:
  %argc_slot1697 = alloca i32
  store i32 %argc1696, i32* %argc_slot1697
  %argv_slot1695 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1694, { i32, [ 0 x i8* ] }** %argv_slot1695
  %array_ptr1698 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1699 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1698 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1700 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1701 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1700 to { i32, [ 0 x i32 ] }* 
  %index_ptr1702 = getelementptr { i32, [ 0 x i32 ] }* %array1701, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1702
  %index_ptr1703 = getelementptr { i32, [ 0 x i32 ] }* %array1701, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1703
  %index_ptr1704 = getelementptr { i32, [ 0 x i32 ] }* %array1701, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1704
  %index_ptr1705 = getelementptr { i32, [ 0 x i32 ] }* %array1701, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1705
  %index_ptr1706 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1699, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1701, { i32, [ 0 x i32 ] }** %index_ptr1706
  %array_ptr1707 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1708 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1707 to { i32, [ 0 x i32 ] }* 
  %index_ptr1709 = getelementptr { i32, [ 0 x i32 ] }* %array1708, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1709
  %index_ptr1710 = getelementptr { i32, [ 0 x i32 ] }* %array1708, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1710
  %index_ptr1711 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1699, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1708, { i32, [ 0 x i32 ] }** %index_ptr1711
  %array_ptr1712 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1713 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1712 to { i32, [ 0 x i32 ] }* 
  %index_ptr1714 = getelementptr { i32, [ 0 x i32 ] }* %array1713, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1714
  %index_ptr1715 = getelementptr { i32, [ 0 x i32 ] }* %array1713, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1715
  %index_ptr1716 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1699, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1713, { i32, [ 0 x i32 ] }** %index_ptr1716
  %array_ptr1717 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1718 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1717 to { i32, [ 0 x i32 ] }* 
  %index_ptr1719 = getelementptr { i32, [ 0 x i32 ] }* %array1718, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1719
  %index_ptr1720 = getelementptr { i32, [ 0 x i32 ] }* %array1718, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1720
  %index_ptr1721 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1699, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1718, { i32, [ 0 x i32 ] }** %index_ptr1721
  %arr1722 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1699, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1722
  %size_ptr1724 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1722, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1724, i32 0 )
  %index_ptr1723 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1722, i32 0, i32 1, i32 0
  %_lhs1725 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1722
  %len_ptr1726 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1725, i32 0, i32 0
  %len1727 = load i32* %len_ptr1726
  %len1728 = alloca i32
  store i32 %len1727, i32* %len1728
  %_lhs1729 = load i32* %len1728
  ret i32 %_lhs1729
}


