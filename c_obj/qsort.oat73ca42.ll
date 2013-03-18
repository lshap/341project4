declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1927.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1927 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1927.str., i32 0, i32 0), align 4
@_oat_string1922.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1922 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1922.str., i32 0, i32 0), align 4
@_oat_string1918.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1918 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1918.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh532:
  ret void
}


define i32 @program (i32 %argc1904, { i32, [ 0 x i8* ] }* %argv1902){

__fresh531:
  %argc_slot1905 = alloca i32
  store i32 %argc1904, i32* %argc_slot1905
  %argv_slot1903 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1902, { i32, [ 0 x i8* ] }** %argv_slot1903
  %array_ptr1906 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1907 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1906 to { i32, [ 0 x i32 ] }* 
  %index_ptr1908 = getelementptr { i32, [ 0 x i32 ] }* %array1907, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1908
  %index_ptr1909 = getelementptr { i32, [ 0 x i32 ] }* %array1907, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1909
  %index_ptr1910 = getelementptr { i32, [ 0 x i32 ] }* %array1907, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1910
  %index_ptr1911 = getelementptr { i32, [ 0 x i32 ] }* %array1907, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1911
  %index_ptr1912 = getelementptr { i32, [ 0 x i32 ] }* %array1907, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1912
  %index_ptr1913 = getelementptr { i32, [ 0 x i32 ] }* %array1907, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1913
  %index_ptr1914 = getelementptr { i32, [ 0 x i32 ] }* %array1907, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1914
  %index_ptr1915 = getelementptr { i32, [ 0 x i32 ] }* %array1907, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1915
  %index_ptr1916 = getelementptr { i32, [ 0 x i32 ] }* %array1907, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1916
  %a1917 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1907, { i32, [ 0 x i32 ] }** %a1917
  %strval1919 = load i8** @_oat_string1918
  call void @print_string( i8* %strval1919 )
  %_lhs1920 = load { i32, [ 0 x i32 ] }** %a1917
  %ret1921 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1920 )
  call void @print_string( i8* %ret1921 )
  %strval1923 = load i8** @_oat_string1922
  call void @print_string( i8* %strval1923 )
  %_lhs1924 = load { i32, [ 0 x i32 ] }** %a1917
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1924, i32 0, i32 8 )
  %_lhs1925 = load { i32, [ 0 x i32 ] }** %a1917
  %ret1926 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1925 )
  call void @print_string( i8* %ret1926 )
  %strval1928 = load i8** @_oat_string1927
  call void @print_string( i8* %strval1928 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1837, i32 %l1835, i32 %r1833){

__fresh520:
  %a_slot1838 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1837, { i32, [ 0 x i32 ] }** %a_slot1838
  %l_slot1836 = alloca i32
  store i32 %l1835, i32* %l_slot1836
  %r_slot1834 = alloca i32
  store i32 %r1833, i32* %r_slot1834
  %_lhs1839 = load i32* %l_slot1836
  %index_ptr1840 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1839
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1839 )
  %_lhs1841 = load { i32, [ 0 x i32 ] }** %a_slot1838
  %pivot1842 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1841, i32* %pivot1842
  %_lhs1843 = load i32* %l_slot1836
  %i1844 = alloca i32
  store i32 %_lhs1843, i32* %i1844
  %_lhs1845 = load i32* %r_slot1834
  %bop1846 = add i32 %_lhs1845, 1
  %j1847 = alloca i32
  store i32 %bop1846, i32* %j1847
  %t1848 = alloca i32
  store i32 0, i32* %t1848
  %done1849 = alloca i32
  store i32 0, i32* %done1849
  br label %__cond507

__cond507:
  %_lhs1850 = load i32* %done1849
  %bop1851 = icmp eq i32 %_lhs1850, 0
  br i1 %bop1851, label %__body506, label %__post505

__fresh521:
  br label %__body506

__body506:
  %_lhs1852 = load i32* %i1844
  %bop1853 = add i32 %_lhs1852, 1
  store i32 %bop1853, i32* %i1844
  br label %__cond510

__cond510:
  %_lhs1854 = load i32* %i1844
  %index_ptr1855 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1854
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1854 )
  %_lhs1856 = load { i32, [ 0 x i32 ] }** %a_slot1838
  %_lhs1857 = load i32* %pivot1842
  %bop1858 = icmp sle { i32, [ 0 x i32 ] }* %_lhs1856, %_lhs1857
  %_lhs1859 = load i32* %i1844
  %_lhs1860 = load i32* %r_slot1834
  %bop1861 = icmp sle i32 %_lhs1859, %_lhs1860
  %bop1862 = and i1 %bop1858, %bop1861
  br i1 %bop1862, label %__body509, label %__post508

__fresh522:
  br label %__body509

__body509:
  %_lhs1863 = load i32* %i1844
  %bop1864 = add i32 %_lhs1863, 1
  store i32 %bop1864, i32* %i1844
  br label %__cond510

__fresh523:
  br label %__post508

__post508:
  %_lhs1865 = load i32* %j1847
  %bop1866 = sub i32 %_lhs1865, 1
  store i32 %bop1866, i32* %j1847
  br label %__cond513

__cond513:
  %_lhs1867 = load i32* %j1847
  %index_ptr1868 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1867
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1867 )
  %_lhs1869 = load { i32, [ 0 x i32 ] }** %a_slot1838
  %_lhs1870 = load i32* %pivot1842
  %bop1871 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1869, %_lhs1870
  br i1 %bop1871, label %__body512, label %__post511

__fresh524:
  br label %__body512

__body512:
  %_lhs1872 = load i32* %j1847
  %bop1873 = sub i32 %_lhs1872, 1
  store i32 %bop1873, i32* %j1847
  br label %__cond513

__fresh525:
  br label %__post511

__post511:
  %_lhs1874 = load i32* %i1844
  %_lhs1875 = load i32* %j1847
  %bop1876 = icmp sge i32 %_lhs1874, %_lhs1875
  br i1 %bop1876, label %__then516, label %__else515

__fresh526:
  br label %__then516

__then516:
  store i32 1, i32* %done1849
  br label %__merge514

__fresh527:
  br label %__else515

__else515:
  br label %__merge514

__merge514:
  %_lhs1877 = load i32* %done1849
  %bop1878 = icmp eq i32 %_lhs1877, 0
  br i1 %bop1878, label %__then519, label %__else518

__fresh528:
  br label %__then519

__then519:
  %_lhs1879 = load i32* %i1844
  %index_ptr1880 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1879
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1879 )
  %_lhs1881 = load { i32, [ 0 x i32 ] }** %a_slot1838
  store { i32, [ 0 x i32 ] }* %_lhs1881, i32* %t1848
  %_lhs1882 = load i32* %i1844
  %index_ptr1883 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1882
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1882 )
  %_lhs1884 = load i32* %j1847
  %index_ptr1885 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1884
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1884 )
  %_lhs1886 = load { i32, [ 0 x i32 ] }** %a_slot1838
  store { i32, [ 0 x i32 ] }* %_lhs1886, { i32, [ 0 x i32 ] }** %a_slot1838
  %_lhs1887 = load i32* %j1847
  %index_ptr1888 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1887
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1887 )
  %_lhs1889 = load i32* %t1848
  store i32 %_lhs1889, { i32, [ 0 x i32 ] }** %a_slot1838
  br label %__merge517

__fresh529:
  br label %__else518

__else518:
  br label %__merge517

__merge517:
  br label %__cond507

__fresh530:
  br label %__post505

__post505:
  %_lhs1890 = load i32* %l_slot1836
  %index_ptr1891 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1890
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1890 )
  %_lhs1892 = load { i32, [ 0 x i32 ] }** %a_slot1838
  store { i32, [ 0 x i32 ] }* %_lhs1892, i32* %t1848
  %_lhs1893 = load i32* %l_slot1836
  %index_ptr1894 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1893
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1893 )
  %_lhs1895 = load i32* %j1847
  %index_ptr1896 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1895
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1895 )
  %_lhs1897 = load { i32, [ 0 x i32 ] }** %a_slot1838
  store { i32, [ 0 x i32 ] }* %_lhs1897, { i32, [ 0 x i32 ] }** %a_slot1838
  %_lhs1898 = load i32* %j1847
  %index_ptr1899 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1838, i32 %_lhs1898
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1898 )
  %_lhs1900 = load i32* %t1848
  store i32 %_lhs1900, { i32, [ 0 x i32 ] }** %a_slot1838
  %_lhs1901 = load i32* %j1847
  ret i32 %_lhs1901
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1815, i32 %l1813, i32 %r1811){

__fresh502:
  %a_slot1816 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1815, { i32, [ 0 x i32 ] }** %a_slot1816
  %l_slot1814 = alloca i32
  store i32 %l1813, i32* %l_slot1814
  %r_slot1812 = alloca i32
  store i32 %r1811, i32* %r_slot1812
  %j1817 = alloca i32
  store i32 0, i32* %j1817
  %_lhs1818 = load i32* %l_slot1814
  %_lhs1819 = load i32* %r_slot1812
  %bop1820 = icmp slt i32 %_lhs1818, %_lhs1819
  br i1 %bop1820, label %__then501, label %__else500

__fresh503:
  br label %__then501

__then501:
  %_lhs1823 = load i32* %r_slot1812
  %_lhs1822 = load i32* %l_slot1814
  %_lhs1821 = load { i32, [ 0 x i32 ] }** %a_slot1816
  %ret1824 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1821, i32 %_lhs1822, i32 %_lhs1823 )
  store i32 %ret1824, i32* %j1817
  %_lhs1827 = load i32* %j1817
  %bop1828 = sub i32 %_lhs1827, 1
  %_lhs1826 = load i32* %l_slot1814
  %_lhs1825 = load { i32, [ 0 x i32 ] }** %a_slot1816
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1825, i32 %_lhs1826, i32 %bop1828 )
  %_lhs1832 = load i32* %r_slot1812
  %_lhs1830 = load i32* %j1817
  %bop1831 = add i32 %_lhs1830, 1
  %_lhs1829 = load { i32, [ 0 x i32 ] }** %a_slot1816
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1829, i32 %bop1831, i32 %_lhs1832 )
  br label %__merge499

__fresh504:
  br label %__else500

__else500:
  br label %__merge499

__merge499:
  ret void
}


