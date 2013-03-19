declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh683:
  ret void
}


define i32 @program (i32 %argc1790, { i32, [ 0 x i8* ] }* %argv1788){

__fresh682:
  %argc_slot1791 = alloca i32
  store i32 %argc1790, i32* %argc_slot1791
  %argv_slot1789 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1788, { i32, [ 0 x i8* ] }** %argv_slot1789
  %index_ptr1792 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1789, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1793 = load { i32, [ 0 x i8* ] }** %argv_slot1789
  %ret1794 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs1793, i32 3, i32 5 )
  call void @print_string( i8* %ret1794 )
  ret i32 0
}


define i8* @sub (i8* %str1768, i32 %start1766, i32 %len1764){

__fresh678:
  %str_slot1769 = alloca i8*
  store i8* %str1768, i8** %str_slot1769
  %start_slot1767 = alloca i32
  store i32 %start1766, i32* %start_slot1767
  %len_slot1765 = alloca i32
  store i32 %len1764, i32* %len_slot1765
  %_lhs1770 = load i8** %str_slot1769
  %ret1771 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1770 )
  %arr1772 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1771, { i32, [ 0 x i32 ] }** %arr1772
  %_lhs1773 = load i32* %len_slot1765
  %array_ptr1774 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs1773 )
  %array1775 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1774 to { i32, [ 0 x i32 ] }* 
  %index_ptr1776 = getelementptr { i32, [ 0 x i32 ] }* %array1775, i32 0, i32 1, i32 0
  store i32 %_lhs1773, i32* %index_ptr1776
  store i32 0, i32* %index_ptr1777
  br label %__compare675

__fresh679:
  br label %__compare675

__compare675:
  %comparison_result1778 = icmp slt i32* %index_ptr1777, %_lhs1773
  br i1 %comparison_result1778, label %__body676, label %__end677

__fresh680:
  br label %__body676

__body676:
  store i32* %index_ptr1777, i32* %i1779
  %_lhs1780 = load i32* %i1779
  %_lhs1781 = load i32* %start_slot1767
  %bop1782 = add i32 %_lhs1780, %_lhs1781
  %index_ptr1783 = getelementptr { i32, [ 0 x i32 ] }** %arr1772, i32 %bop1782
  call void @oat_array_bounds_check( i32 0, i32 %bop1782 )
  %_lhs1784 = load { i32, [ 0 x i32 ] }** %arr1772
  %index_ptr1777 = add i32* %index_ptr1777, 1
  br label %__compare675

__fresh681:
  br label %__end677

__end677:
  %r1785 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1775, { i32, [ 0 x i32 ] }** %r1785
  %_lhs1786 = load { i32, [ 0 x i32 ] }** %r1785
  %ret1787 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1786 )
  ret i8* %ret1787
}


