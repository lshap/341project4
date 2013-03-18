declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1885.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string1885 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1885.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh467:
  ret void
}


define i32 @program (i32 %argc1866, { i32, [ 0 x i8* ] }* %argv1864){

__fresh463:
  %argc_slot1867 = alloca i32
  store i32 %argc1866, i32* %argc_slot1867
  %argv_slot1865 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1864, { i32, [ 0 x i8* ] }** %argv_slot1865
  %array_ptr1868 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array1869 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1868 to { i32, [ 0 x i32 ] }* 
  %index_ptr1870 = getelementptr { i32, [ 0 x i32 ] }* %array1869, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr1870
  store i32 0, i32* %index_ptr1871
  br label %__compare460

__fresh464:
  br label %__compare460

__compare460:
  %comparison_result1872 = icmp slt i32* %index_ptr1871, 8
  br i1 %comparison_result1872, label %__body461, label %__end462

__fresh465:
  br label %__body461

__body461:
  store i32* %index_ptr1871, i32 %i1873
  %index_ptr1871 = add i32* %index_ptr1871, 1
  br label %__compare460

__fresh466:
  br label %__end462

__end462:
  %a1874 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array1869, { i32, [ 0 x i32 ] }** %a1874
  %index_ptr1875 = getelementptr { i32, [ 0 x i32 ] }** %a1874, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  store i32 121, { i32, [ 0 x i32 ] }** %a1874
  %index_ptr1876 = getelementptr { i32, [ 0 x i32 ] }** %a1874, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  store i32 125, { i32, [ 0 x i32 ] }** %a1874
  %index_ptr1877 = getelementptr { i32, [ 0 x i32 ] }** %a1874, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  store i32 120, { i32, [ 0 x i32 ] }** %a1874
  %index_ptr1878 = getelementptr { i32, [ 0 x i32 ] }** %a1874, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  store i32 111, { i32, [ 0 x i32 ] }** %a1874
  %index_ptr1879 = getelementptr { i32, [ 0 x i32 ] }** %a1874, i32 4
  call void @oat_array_bounds_check( i32 0, i32 4 )
  store i32 116, { i32, [ 0 x i32 ] }** %a1874
  %index_ptr1880 = getelementptr { i32, [ 0 x i32 ] }** %a1874, i32 5
  call void @oat_array_bounds_check( i32 0, i32 5 )
  store i32 110, { i32, [ 0 x i32 ] }** %a1874
  %index_ptr1881 = getelementptr { i32, [ 0 x i32 ] }** %a1874, i32 6
  call void @oat_array_bounds_check( i32 0, i32 6 )
  store i32 117, { i32, [ 0 x i32 ] }** %a1874
  %index_ptr1882 = getelementptr { i32, [ 0 x i32 ] }** %a1874, i32 7
  call void @oat_array_bounds_check( i32 0, i32 7 )
  store i32 119, { i32, [ 0 x i32 ] }** %a1874
  %_lhs1883 = load { i32, [ 0 x i32 ] }** %a1874
  %ret1884 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1883 )
  call void @print_string( i8* %ret1884 )
  %strval1886 = load i8** @_oat_string1885
  call void @print_string( i8* %strval1886 )
  %_lhs1888 = load { i32, [ 0 x i32 ] }** %a1874
  %len_ptr1889 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1888, i32 0, i32 0
  %len1890 = load i32* %len_ptr1889
  %_lhs1887 = load { i32, [ 0 x i32 ] }** %a1874
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs1887, i32 %len1890 )
  %_lhs1891 = load { i32, [ 0 x i32 ] }** %a1874
  %ret1892 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1891 )
  call void @print_string( i8* %ret1892 )
  %unop1893 = sub i32 0, 1
  ret i32 %unop1893
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers1827, i32 %array_size1825){

__fresh453:
  %numbers_slot1828 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers1827, { i32, [ 0 x i32 ] }** %numbers_slot1828
  %array_size_slot1826 = alloca i32
  store i32 %array_size1825, i32* %array_size_slot1826
  %temp1829 = alloca i32
  store i32 0, i32* %temp1829
  %_lhs1830 = load i32* %array_size_slot1826
  %bop1831 = sub i32 %_lhs1830, 1
  %i1832 = alloca i32
  store i32 %bop1831, i32* %i1832
  br label %__cond446

__cond446:
  %_lhs1833 = load i32* %i1832
  %bop1834 = icmp sgt i32 %_lhs1833, 0
  br i1 %bop1834, label %__body445, label %__post444

__fresh454:
  br label %__body445

__body445:
  %j1835 = alloca i32
  store i32 1, i32* %j1835
  br label %__cond449

__cond449:
  %_lhs1836 = load i32* %j1835
  %_lhs1837 = load i32* %i1832
  %bop1838 = icmp sle i32 %_lhs1836, %_lhs1837
  br i1 %bop1838, label %__body448, label %__post447

__fresh455:
  br label %__body448

__body448:
  %_lhs1839 = load i32* %j1835
  %bop1840 = sub i32 %_lhs1839, 1
  %index_ptr1841 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1828, i32 %bop1840
  call void @oat_array_bounds_check( i32 0, i32 %bop1840 )
  %_lhs1842 = load { i32, [ 0 x i32 ] }** %numbers_slot1828
  %_lhs1843 = load i32* %j1835
  %index_ptr1844 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1828, i32 %_lhs1843
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1843 )
  %_lhs1845 = load { i32, [ 0 x i32 ] }** %numbers_slot1828
  %bop1846 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1842, %_lhs1845
  br i1 %bop1846, label %__then452, label %__else451

__fresh456:
  br label %__then452

__then452:
  %_lhs1847 = load i32* %j1835
  %bop1848 = sub i32 %_lhs1847, 1
  %index_ptr1849 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1828, i32 %bop1848
  call void @oat_array_bounds_check( i32 0, i32 %bop1848 )
  %_lhs1850 = load { i32, [ 0 x i32 ] }** %numbers_slot1828
  store { i32, [ 0 x i32 ] }* %_lhs1850, i32* %temp1829
  %_lhs1851 = load i32* %j1835
  %bop1852 = sub i32 %_lhs1851, 1
  %index_ptr1853 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1828, i32 %bop1852
  call void @oat_array_bounds_check( i32 0, i32 %bop1852 )
  %_lhs1854 = load i32* %j1835
  %index_ptr1855 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1828, i32 %_lhs1854
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1854 )
  %_lhs1856 = load { i32, [ 0 x i32 ] }** %numbers_slot1828
  store { i32, [ 0 x i32 ] }* %_lhs1856, { i32, [ 0 x i32 ] }** %numbers_slot1828
  %_lhs1857 = load i32* %j1835
  %index_ptr1858 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1828, i32 %_lhs1857
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1857 )
  %_lhs1859 = load i32* %temp1829
  store i32 %_lhs1859, { i32, [ 0 x i32 ] }** %numbers_slot1828
  br label %__merge450

__fresh457:
  br label %__else451

__else451:
  br label %__merge450

__merge450:
  %_lhs1860 = load i32* %j1835
  %bop1861 = add i32 %_lhs1860, 1
  store i32 %bop1861, i32* %j1835
  br label %__cond449

__fresh458:
  br label %__post447

__post447:
  %_lhs1862 = load i32* %i1832
  %bop1863 = sub i32 %_lhs1862, 1
  store i32 %bop1863, i32* %i1832
  br label %__cond446

__fresh459:
  br label %__post444

__post444:
  ret void
}


