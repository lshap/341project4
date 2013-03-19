declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh682:
  ret void
}


define i32 @program (i32 %argc1781, { i32, [ 0 x i8* ] }* %argv1779){

__fresh681:
  %argc_slot1782 = alloca i32
  store i32 %argc1781, i32* %argc_slot1782
  %argv_slot1780 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1779, { i32, [ 0 x i8* ] }** %argv_slot1780
  %index_ptr1783 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1780, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1784 = load { i32, [ 0 x i8* ] }** %argv_slot1780
  %ret1785 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs1784, i32 3, i32 5 )
  call void @print_string( i8* %ret1785 )
  ret i32 0
}


define i8* @sub (i8* %str1759, i32 %start1757, i32 %len1755){

__fresh677:
  %str_slot1760 = alloca i8*
  store i8* %str1759, i8** %str_slot1760
  %start_slot1758 = alloca i32
  store i32 %start1757, i32* %start_slot1758
  %len_slot1756 = alloca i32
  store i32 %len1755, i32* %len_slot1756
  %_lhs1761 = load i8** %str_slot1760
  %ret1762 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1761 )
  %arr1763 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1762, { i32, [ 0 x i32 ] }** %arr1763
  %_lhs1764 = load i32* %len_slot1756
  %array_ptr1765 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs1764 )
  %array1766 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1765 to { i32, [ 0 x i32 ] }* 
  %index_ptr1767 = getelementptr { i32, [ 0 x i32 ] }* %array1766, i32 0, i32 1, i32 0
  store i32 %_lhs1764, i32* %index_ptr1767
  store i32 0, i32* %index_ptr1768
  br label %__compare674

__fresh678:
  br label %__compare674

__compare674:
  %comparison_result1769 = icmp slt i32* %index_ptr1768, %_lhs1764
  br i1 %comparison_result1769, label %__body675, label %__end676

__fresh679:
  br label %__body675

__body675:
  store i32* %index_ptr1768, i32* %i1770
  %_lhs1771 = load i32* %i1770
  %_lhs1772 = load i32* %start_slot1758
  %bop1773 = add i32 %_lhs1771, %_lhs1772
  %index_ptr1774 = getelementptr { i32, [ 0 x i32 ] }** %arr1763, i32 %bop1773
  call void @oat_array_bounds_check( i32 0, i32 %bop1773 )
  %_lhs1775 = load { i32, [ 0 x i32 ] }** %arr1763
  %index_ptr1768 = add i32* %index_ptr1768, 1
  br label %__compare674

__fresh680:
  br label %__end676

__end676:
  %r1776 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array1766, { i32, [ 0 x i32 ] }** %r1776
  %_lhs1777 = load { i32, [ 0 x i32 ] }** %r1776
  %ret1778 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1777 )
  ret i8* %ret1778
}


