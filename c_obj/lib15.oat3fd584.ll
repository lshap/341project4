declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh490:
  ret void
}


define i32 @program (i32 %argc1777, { i32, [ 0 x i8* ] }* %argv1775){

__fresh489:
  %argc_slot1778 = alloca i32
  store i32 %argc1777, i32* %argc_slot1778
  %argv_slot1776 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1775, { i32, [ 0 x i8* ] }** %argv_slot1776
  %index_ptr1779 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1776, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1780 = load { i32, [ 0 x i8* ] }** %argv_slot1776
  %ret1781 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs1780, i32 3, i32 5 )
  call void @print_string( i8* %ret1781 )
  ret i32 0
}


define i8* @sub (i8* %str1756, i32 %start1754, i32 %len1752){

__fresh485:
  %str_slot1757 = alloca i8*
  store i8* %str1756, i8** %str_slot1757
  %start_slot1755 = alloca i32
  store i32 %start1754, i32* %start_slot1755
  %len_slot1753 = alloca i32
  store i32 %len1752, i32* %len_slot1753
  %_lhs1758 = load i8** %str_slot1757
  %ret1759 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1758 )
  %arr1760 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1759, { i32, [ 0 x i32 ] }** %arr1760
  %_lhs1761 = load i32* %len_slot1753
  %array_ptr1762 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs1761 )
  %array1763 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1762 to { i32, [ 0 x i32 ] }* 
  %index_ptr1764 = getelementptr { i32, [ 0 x i32 ] }* %array1763, i32 0, i32 1, i32 0
  store i32 %_lhs1761, i32* %index_ptr1764
  store i32 0, i32* %index_ptr1765
  br label %__compare482

__fresh486:
  br label %__compare482

__compare482:
  %comparison_result1766 = icmp slt i32* %index_ptr1765, %_lhs1761
  br i1 %comparison_result1766, label %__body483, label %__end484

__fresh487:
  br label %__body483

__body483:
  store i32* %index_ptr1765, i32 %i1767
  %_lhs1768 = load i32* %start_slot1755
  %bop1769 = add i32 4, %_lhs1768
  %index_ptr1770 = getelementptr { i32, [ 0 x i32 ] }** %arr1760, i32 %bop1769
  call void @oat_array_bounds_check( i32 0, i32 %bop1769 )
  %_lhs1771 = load { i32, [ 0 x i32 ] }** %arr1760
  %index_ptr1765 = add i32* %index_ptr1765, 1
  br label %__compare482

__fresh488:
  br label %__end484

__end484:
  %r1772 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array1763, { i32, [ 0 x i32 ] }** %r1772
  %_lhs1773 = load { i32, [ 0 x i32 ] }** %r1772
  %ret1774 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1773 )
  ret i8* %ret1774
}


