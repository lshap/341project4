declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1758.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1758 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1758.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh795:
  ret void
}


define i32 @program (i32 %argc1756, { i32, [ 0 x i8* ] }* %argv1754){

__fresh792:
  %argc_slot1757 = alloca i32
  store i32 %argc1756, i32* %argc_slot1757
  %argv_slot1755 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1754, { i32, [ 0 x i8* ] }** %argv_slot1755
  %strval1759 = load i8** @_oat_string1758
  %str1760 = alloca i8*
  store i8* %strval1759, i8** %str1760
  %_lhs1761 = load i8** %str1760
  %ret1762 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1761 )
  %arr1763 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1762, { i32, [ 0 x i32 ] }** %arr1763
  %s1764 = alloca i32
  store i32 0, i32* %s1764
  %i1765 = alloca i32
  store i32 0, i32* %i1765
  br label %__cond791

__cond791:
  %_lhs1766 = load i32* %i1765
  %bop1767 = icmp slt i32 %_lhs1766, 5
  br i1 %bop1767, label %__body790, label %__post789

__fresh793:
  br label %__body790

__body790:
  %_lhs1768 = load i32* %s1764
  %_lhs1769 = load i32* %i1765
  %size_ptr1771 = getelementptr { i32, [ 0 x i32 ] }* %arr1763, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1771, i32 %_lhs1769 )
  %index_ptr1770 = getelementptr { i32, [ 0 x i32 ] }* %arr1763, i32 0, i32 1, i32 %_lhs1769
  %_lhs1772 = load { i32, [ 0 x i32 ] }** %arr1763
  %bop1773 = add i32 %_lhs1768, %_lhs1772
  store i32 %bop1773, i32* %s1764
  %_lhs1774 = load i32* %i1765
  %bop1775 = add i32 %_lhs1774, 1
  store i32 %bop1775, i32* %i1765
  br label %__cond791

__fresh794:
  br label %__post789

__post789:
  %_lhs1776 = load i32* %s1764
  ret i32 %_lhs1776
}


