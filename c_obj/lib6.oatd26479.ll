declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11785 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11785.init
define void @oat_init (){

__fresh805:
  call void @arr11785.init(  )
  ret void
}


define i32 @program (i32 %argc1788, { i32, [ 0 x i8* ] }* %argv1786){

__fresh802:
  %argc_slot1789 = alloca i32
  store i32 %argc1788, i32* %argc_slot1789
  %argv_slot1787 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1786, { i32, [ 0 x i8* ] }** %argv_slot1787
  %_lhs1790 = load { i32, [ 0 x i32 ] }** @arr11785
  %ret1791 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1790 )
  %str1792 = alloca i8*
  store i8* %ret1791, i8** %str1792
  %_lhs1793 = load i8** %str1792
  %ret1794 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1793 )
  %arr21795 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1794, { i32, [ 0 x i32 ] }** %arr21795
  %s1796 = alloca i32
  store i32 0, i32* %s1796
  %i1797 = alloca i32
  store i32 0, i32* %i1797
  br label %__cond801

__cond801:
  %_lhs1798 = load i32* %i1797
  %bop1799 = icmp slt i32 %_lhs1798, 5
  br i1 %bop1799, label %__body800, label %__post799

__fresh803:
  br label %__body800

__body800:
  %_lhs1800 = load i32* %s1796
  %_lhs1801 = load i32* %i1797
  %size_ptr1803 = getelementptr { i32, [ 0 x i32 ] }* %arr21795, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1803, i32 %_lhs1801 )
  %index_ptr1802 = getelementptr { i32, [ 0 x i32 ] }* %arr21795, i32 0, i32 1, i32 %_lhs1801
  %_lhs1804 = load { i32, [ 0 x i32 ] }** %arr21795
  %bop1805 = add i32 %_lhs1800, %_lhs1804
  store i32 %bop1805, i32* %s1796
  %_lhs1806 = load i32* %i1797
  %bop1807 = add i32 %_lhs1806, 1
  store i32 %bop1807, i32* %i1797
  br label %__cond801

__fresh804:
  br label %__post799

__post799:
  %_lhs1808 = load i32* %s1796
  ret i32 %_lhs1808
}


define void @arr11785.init (){

__fresh798:
  %array_ptr1778 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1779 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1778 to { i32, [ 0 x i32 ] }* 
  %index_ptr1780 = getelementptr { i32, [ 0 x i32 ] }* %array1779, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1780
  %index_ptr1781 = getelementptr { i32, [ 0 x i32 ] }* %array1779, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1781
  %index_ptr1782 = getelementptr { i32, [ 0 x i32 ] }* %array1779, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1782
  %index_ptr1783 = getelementptr { i32, [ 0 x i32 ] }* %array1779, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1783
  %index_ptr1784 = getelementptr { i32, [ 0 x i32 ] }* %array1779, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1784
  store { i32, [ 0 x i32 ] }* %array1779, { i32, [ 0 x i32 ] }** @arr11785
  ret void
}


