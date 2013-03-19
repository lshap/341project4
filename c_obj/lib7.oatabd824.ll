declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh817:
  ret void
}


define i32 @program (i32 %argc1811, { i32, [ 0 x i8* ] }* %argv1809){

__fresh814:
  %argc_slot1812 = alloca i32
  store i32 %argc1811, i32* %argc_slot1812
  %argv_slot1810 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1809, { i32, [ 0 x i8* ] }** %argv_slot1810
  %array_ptr1813 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1814 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1813 to { i32, [ 0 x i32 ] }* 
  %index_ptr1815 = getelementptr { i32, [ 0 x i32 ] }* %array1814, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1815
  %index_ptr1816 = getelementptr { i32, [ 0 x i32 ] }* %array1814, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1816
  %index_ptr1817 = getelementptr { i32, [ 0 x i32 ] }* %array1814, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1817
  %index_ptr1818 = getelementptr { i32, [ 0 x i32 ] }* %array1814, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1818
  %index_ptr1819 = getelementptr { i32, [ 0 x i32 ] }* %array1814, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1819
  %arr11820 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1814, { i32, [ 0 x i32 ] }** %arr11820
  %_lhs1821 = load { i32, [ 0 x i32 ] }** %arr11820
  %ret1822 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1821 )
  %str1823 = alloca i8*
  store i8* %ret1822, i8** %str1823
  %_lhs1824 = load i8** %str1823
  %ret1825 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1824 )
  %arr21826 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1825, { i32, [ 0 x i32 ] }** %arr21826
  %s1827 = alloca i32
  store i32 0, i32* %s1827
  %i1828 = alloca i32
  store i32 0, i32* %i1828
  br label %__cond813

__cond813:
  %_lhs1829 = load i32* %i1828
  %bop1830 = icmp slt i32 %_lhs1829, 5
  br i1 %bop1830, label %__body812, label %__post811

__fresh815:
  br label %__body812

__body812:
  %_lhs1831 = load i32* %s1827
  %_lhs1832 = load i32* %i1828
  %size_ptr1834 = getelementptr { i32, [ 0 x i32 ] }* %arr21826, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1834, i32 %_lhs1832 )
  %index_ptr1833 = getelementptr { i32, [ 0 x i32 ] }* %arr21826, i32 0, i32 1, i32 %_lhs1832
  %_lhs1835 = load { i32, [ 0 x i32 ] }** %arr21826
  %bop1836 = add i32 %_lhs1831, %_lhs1835
  store i32 %bop1836, i32* %s1827
  %_lhs1837 = load i32* %i1828
  %bop1838 = add i32 %_lhs1837, 1
  store i32 %bop1838, i32* %i1828
  br label %__cond813

__fresh816:
  br label %__post811

__post811:
  %_lhs1839 = load i32* %s1827
  ret i32 %_lhs1839
}


