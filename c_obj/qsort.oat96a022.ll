declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1914.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1914 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1914.str., i32 0, i32 0), align 4
@_oat_string1909.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1909 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1909.str., i32 0, i32 0), align 4
@_oat_string1905.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1905 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1905.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh532:
  ret void
}


define i32 @program (i32 %argc1891, { i32, [ 0 x i8* ] }* %argv1889){

__fresh531:
  %argc_slot1892 = alloca i32
  store i32 %argc1891, i32* %argc_slot1892
  %argv_slot1890 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1889, { i32, [ 0 x i8* ] }** %argv_slot1890
  %array_ptr1893 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1894 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1893 to { i32, [ 0 x i32 ] }* 
  %index_ptr1895 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1895
  %index_ptr1896 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1896
  %index_ptr1897 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1897
  %index_ptr1898 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1898
  %index_ptr1899 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1899
  %index_ptr1900 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1900
  %index_ptr1901 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1901
  %index_ptr1902 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1902
  %index_ptr1903 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1903
  %a1904 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1894, { i32, [ 0 x i32 ] }** %a1904
  %strval1906 = load i8** @_oat_string1905
  call void @print_string( i8* %strval1906 )
  %_lhs1907 = load { i32, [ 0 x i32 ] }** %a1904
  %ret1908 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1907 )
  call void @print_string( i8* %ret1908 )
  %strval1910 = load i8** @_oat_string1909
  call void @print_string( i8* %strval1910 )
  %_lhs1911 = load { i32, [ 0 x i32 ] }** %a1904
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1911, i32 0, i32 8 )
  %_lhs1912 = load { i32, [ 0 x i32 ] }** %a1904
  %ret1913 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1912 )
  call void @print_string( i8* %ret1913 )
  %strval1915 = load i8** @_oat_string1914
  call void @print_string( i8* %strval1915 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1824, i32 %l1822, i32 %r1820){

__fresh520:
  %a_slot1825 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1824, { i32, [ 0 x i32 ] }** %a_slot1825
  %l_slot1823 = alloca i32
  store i32 %l1822, i32* %l_slot1823
  %r_slot1821 = alloca i32
  store i32 %r1820, i32* %r_slot1821
  %_lhs1826 = load i32* %l_slot1823
  %index_ptr1827 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1826
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1826 )
  %_lhs1828 = load { i32, [ 0 x i32 ] }** %a_slot1825
  %pivot1829 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1828, i32* %pivot1829
  %_lhs1830 = load i32* %l_slot1823
  %i1831 = alloca i32
  store i32 %_lhs1830, i32* %i1831
  %_lhs1832 = load i32* %r_slot1821
  %bop1833 = add i32 %_lhs1832, 1
  %j1834 = alloca i32
  store i32 %bop1833, i32* %j1834
  %t1835 = alloca i32
  store i32 0, i32* %t1835
  %done1836 = alloca i32
  store i32 0, i32* %done1836
  br label %__cond507

__cond507:
  %_lhs1837 = load i32* %done1836
  %bop1838 = icmp eq i32 %_lhs1837, 0
  br i1 %bop1838, label %__body506, label %__post505

__fresh521:
  br label %__body506

__body506:
  %_lhs1839 = load i32* %i1831
  %bop1840 = add i32 %_lhs1839, 1
  store i32 %bop1840, i32* %i1831
  br label %__cond510

__cond510:
  %_lhs1841 = load i32* %i1831
  %index_ptr1842 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1841
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1841 )
  %_lhs1843 = load { i32, [ 0 x i32 ] }** %a_slot1825
  %_lhs1844 = load i32* %pivot1829
  %bop1845 = icmp sle { i32, [ 0 x i32 ] }* %_lhs1843, %_lhs1844
  %_lhs1846 = load i32* %i1831
  %_lhs1847 = load i32* %r_slot1821
  %bop1848 = icmp sle i32 %_lhs1846, %_lhs1847
  %bop1849 = and i1 %bop1845, %bop1848
  br i1 %bop1849, label %__body509, label %__post508

__fresh522:
  br label %__body509

__body509:
  %_lhs1850 = load i32* %i1831
  %bop1851 = add i32 %_lhs1850, 1
  store i32 %bop1851, i32* %i1831
  br label %__cond510

__fresh523:
  br label %__post508

__post508:
  %_lhs1852 = load i32* %j1834
  %bop1853 = sub i32 %_lhs1852, 1
  store i32 %bop1853, i32* %j1834
  br label %__cond513

__cond513:
  %_lhs1854 = load i32* %j1834
  %index_ptr1855 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1854
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1854 )
  %_lhs1856 = load { i32, [ 0 x i32 ] }** %a_slot1825
  %_lhs1857 = load i32* %pivot1829
  %bop1858 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1856, %_lhs1857
  br i1 %bop1858, label %__body512, label %__post511

__fresh524:
  br label %__body512

__body512:
  %_lhs1859 = load i32* %j1834
  %bop1860 = sub i32 %_lhs1859, 1
  store i32 %bop1860, i32* %j1834
  br label %__cond513

__fresh525:
  br label %__post511

__post511:
  %_lhs1861 = load i32* %i1831
  %_lhs1862 = load i32* %j1834
  %bop1863 = icmp sge i32 %_lhs1861, %_lhs1862
  br i1 %bop1863, label %__then516, label %__else515

__fresh526:
  br label %__then516

__then516:
  store i32 1, i32* %done1836
  br label %__merge514

__fresh527:
  br label %__else515

__else515:
  br label %__merge514

__merge514:
  %_lhs1864 = load i32* %done1836
  %bop1865 = icmp eq i32 %_lhs1864, 0
  br i1 %bop1865, label %__then519, label %__else518

__fresh528:
  br label %__then519

__then519:
  %_lhs1866 = load i32* %i1831
  %index_ptr1867 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1866
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1866 )
  %_lhs1868 = load { i32, [ 0 x i32 ] }** %a_slot1825
  store { i32, [ 0 x i32 ] }* %_lhs1868, i32* %t1835
  %_lhs1869 = load i32* %i1831
  %index_ptr1870 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1869
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1869 )
  %_lhs1871 = load i32* %j1834
  %index_ptr1872 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1871
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1871 )
  %_lhs1873 = load { i32, [ 0 x i32 ] }** %a_slot1825
  store { i32, [ 0 x i32 ] }* %_lhs1873, { i32, [ 0 x i32 ] }** %a_slot1825
  %_lhs1874 = load i32* %j1834
  %index_ptr1875 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1874
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1874 )
  %_lhs1876 = load i32* %t1835
  store i32 %_lhs1876, { i32, [ 0 x i32 ] }** %a_slot1825
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
  %_lhs1877 = load i32* %l_slot1823
  %index_ptr1878 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1877
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1877 )
  %_lhs1879 = load { i32, [ 0 x i32 ] }** %a_slot1825
  store { i32, [ 0 x i32 ] }* %_lhs1879, i32* %t1835
  %_lhs1880 = load i32* %l_slot1823
  %index_ptr1881 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1880
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1880 )
  %_lhs1882 = load i32* %j1834
  %index_ptr1883 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1882
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1882 )
  %_lhs1884 = load { i32, [ 0 x i32 ] }** %a_slot1825
  store { i32, [ 0 x i32 ] }* %_lhs1884, { i32, [ 0 x i32 ] }** %a_slot1825
  %_lhs1885 = load i32* %j1834
  %index_ptr1886 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1825, i32 %_lhs1885
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1885 )
  %_lhs1887 = load i32* %t1835
  store i32 %_lhs1887, { i32, [ 0 x i32 ] }** %a_slot1825
  %_lhs1888 = load i32* %j1834
  ret i32 %_lhs1888
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1802, i32 %l1800, i32 %r1798){

__fresh502:
  %a_slot1803 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1802, { i32, [ 0 x i32 ] }** %a_slot1803
  %l_slot1801 = alloca i32
  store i32 %l1800, i32* %l_slot1801
  %r_slot1799 = alloca i32
  store i32 %r1798, i32* %r_slot1799
  %j1804 = alloca i32
  store i32 0, i32* %j1804
  %_lhs1805 = load i32* %l_slot1801
  %_lhs1806 = load i32* %r_slot1799
  %bop1807 = icmp slt i32 %_lhs1805, %_lhs1806
  br i1 %bop1807, label %__then501, label %__else500

__fresh503:
  br label %__then501

__then501:
  %_lhs1810 = load i32* %r_slot1799
  %_lhs1809 = load i32* %l_slot1801
  %_lhs1808 = load { i32, [ 0 x i32 ] }** %a_slot1803
  %ret1811 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1808, i32 %_lhs1809, i32 %_lhs1810 )
  store i32 %ret1811, i32* %j1804
  %_lhs1814 = load i32* %j1804
  %bop1815 = sub i32 %_lhs1814, 1
  %_lhs1813 = load i32* %l_slot1801
  %_lhs1812 = load { i32, [ 0 x i32 ] }** %a_slot1803
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1812, i32 %_lhs1813, i32 %bop1815 )
  %_lhs1819 = load i32* %r_slot1799
  %_lhs1817 = load i32* %j1804
  %bop1818 = add i32 %_lhs1817, 1
  %_lhs1816 = load { i32, [ 0 x i32 ] }** %a_slot1803
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1816, i32 %bop1818, i32 %_lhs1819 )
  br label %__merge499

__fresh504:
  br label %__else500

__else500:
  br label %__merge499

__merge499:
  ret void
}


