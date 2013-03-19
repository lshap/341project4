declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1918.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1918 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1918.str., i32 0, i32 0), align 4
@_oat_string1913.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1913 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1913.str., i32 0, i32 0), align 4
@_oat_string1909.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1909 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1909.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh729:
  ret void
}


define i32 @program (i32 %argc1895, { i32, [ 0 x i8* ] }* %argv1893){

__fresh728:
  %argc_slot1896 = alloca i32
  store i32 %argc1895, i32* %argc_slot1896
  %argv_slot1894 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1893, { i32, [ 0 x i8* ] }** %argv_slot1894
  %array_ptr1897 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1898 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1897 to { i32, [ 0 x i32 ] }* 
  %index_ptr1899 = getelementptr { i32, [ 0 x i32 ] }* %array1898, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1899
  %index_ptr1900 = getelementptr { i32, [ 0 x i32 ] }* %array1898, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1900
  %index_ptr1901 = getelementptr { i32, [ 0 x i32 ] }* %array1898, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1901
  %index_ptr1902 = getelementptr { i32, [ 0 x i32 ] }* %array1898, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1902
  %index_ptr1903 = getelementptr { i32, [ 0 x i32 ] }* %array1898, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1903
  %index_ptr1904 = getelementptr { i32, [ 0 x i32 ] }* %array1898, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1904
  %index_ptr1905 = getelementptr { i32, [ 0 x i32 ] }* %array1898, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1905
  %index_ptr1906 = getelementptr { i32, [ 0 x i32 ] }* %array1898, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1906
  %index_ptr1907 = getelementptr { i32, [ 0 x i32 ] }* %array1898, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1907
  %a1908 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1898, { i32, [ 0 x i32 ] }** %a1908
  %strval1910 = load i8** @_oat_string1909
  call void @print_string( i8* %strval1910 )
  %_lhs1911 = load { i32, [ 0 x i32 ] }** %a1908
  %ret1912 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1911 )
  call void @print_string( i8* %ret1912 )
  %strval1914 = load i8** @_oat_string1913
  call void @print_string( i8* %strval1914 )
  %_lhs1915 = load { i32, [ 0 x i32 ] }** %a1908
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1915, i32 0, i32 8 )
  %_lhs1916 = load { i32, [ 0 x i32 ] }** %a1908
  %ret1917 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1916 )
  call void @print_string( i8* %ret1917 )
  %strval1919 = load i8** @_oat_string1918
  call void @print_string( i8* %strval1919 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1828, i32 %l1826, i32 %r1824){

__fresh717:
  %a_slot1829 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1828, { i32, [ 0 x i32 ] }** %a_slot1829
  %l_slot1827 = alloca i32
  store i32 %l1826, i32* %l_slot1827
  %r_slot1825 = alloca i32
  store i32 %r1824, i32* %r_slot1825
  %_lhs1830 = load i32* %l_slot1827
  %index_ptr1831 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1830
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1830 )
  %_lhs1832 = load { i32, [ 0 x i32 ] }** %a_slot1829
  %pivot1833 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1832, i32* %pivot1833
  %_lhs1834 = load i32* %l_slot1827
  %i1835 = alloca i32
  store i32 %_lhs1834, i32* %i1835
  %_lhs1836 = load i32* %r_slot1825
  %bop1837 = add i32 %_lhs1836, 1
  %j1838 = alloca i32
  store i32 %bop1837, i32* %j1838
  %t1839 = alloca i32
  store i32 0, i32* %t1839
  %done1840 = alloca i32
  store i32 0, i32* %done1840
  br label %__cond704

__cond704:
  %_lhs1841 = load i32* %done1840
  %bop1842 = icmp eq i32 %_lhs1841, 0
  br i1 %bop1842, label %__body703, label %__post702

__fresh718:
  br label %__body703

__body703:
  %_lhs1843 = load i32* %i1835
  %bop1844 = add i32 %_lhs1843, 1
  store i32 %bop1844, i32* %i1835
  br label %__cond707

__cond707:
  %_lhs1845 = load i32* %i1835
  %index_ptr1846 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1845
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1845 )
  %_lhs1847 = load { i32, [ 0 x i32 ] }** %a_slot1829
  %_lhs1848 = load i32* %pivot1833
  %bop1849 = icmp sle { i32, [ 0 x i32 ] }* %_lhs1847, %_lhs1848
  %_lhs1850 = load i32* %i1835
  %_lhs1851 = load i32* %r_slot1825
  %bop1852 = icmp sle i32 %_lhs1850, %_lhs1851
  %bop1853 = and i1 %bop1849, %bop1852
  br i1 %bop1853, label %__body706, label %__post705

__fresh719:
  br label %__body706

__body706:
  %_lhs1854 = load i32* %i1835
  %bop1855 = add i32 %_lhs1854, 1
  store i32 %bop1855, i32* %i1835
  br label %__cond707

__fresh720:
  br label %__post705

__post705:
  %_lhs1856 = load i32* %j1838
  %bop1857 = sub i32 %_lhs1856, 1
  store i32 %bop1857, i32* %j1838
  br label %__cond710

__cond710:
  %_lhs1858 = load i32* %j1838
  %index_ptr1859 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1858
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1858 )
  %_lhs1860 = load { i32, [ 0 x i32 ] }** %a_slot1829
  %_lhs1861 = load i32* %pivot1833
  %bop1862 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1860, %_lhs1861
  br i1 %bop1862, label %__body709, label %__post708

__fresh721:
  br label %__body709

__body709:
  %_lhs1863 = load i32* %j1838
  %bop1864 = sub i32 %_lhs1863, 1
  store i32 %bop1864, i32* %j1838
  br label %__cond710

__fresh722:
  br label %__post708

__post708:
  %_lhs1865 = load i32* %i1835
  %_lhs1866 = load i32* %j1838
  %bop1867 = icmp sge i32 %_lhs1865, %_lhs1866
  br i1 %bop1867, label %__then713, label %__else712

__fresh723:
  br label %__then713

__then713:
  store i32 1, i32* %done1840
  br label %__merge711

__fresh724:
  br label %__else712

__else712:
  br label %__merge711

__merge711:
  %_lhs1868 = load i32* %done1840
  %bop1869 = icmp eq i32 %_lhs1868, 0
  br i1 %bop1869, label %__then716, label %__else715

__fresh725:
  br label %__then716

__then716:
  %_lhs1870 = load i32* %i1835
  %index_ptr1871 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1870
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1870 )
  %_lhs1872 = load { i32, [ 0 x i32 ] }** %a_slot1829
  store { i32, [ 0 x i32 ] }* %_lhs1872, i32* %t1839
  %_lhs1873 = load i32* %i1835
  %index_ptr1874 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1873
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1873 )
  %_lhs1875 = load i32* %j1838
  %index_ptr1876 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1875
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1875 )
  %_lhs1877 = load { i32, [ 0 x i32 ] }** %a_slot1829
  store { i32, [ 0 x i32 ] }* %_lhs1877, { i32, [ 0 x i32 ] }** %a_slot1829
  %_lhs1878 = load i32* %j1838
  %index_ptr1879 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1878
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1878 )
  %_lhs1880 = load i32* %t1839
  store i32 %_lhs1880, { i32, [ 0 x i32 ] }** %a_slot1829
  br label %__merge714

__fresh726:
  br label %__else715

__else715:
  br label %__merge714

__merge714:
  br label %__cond704

__fresh727:
  br label %__post702

__post702:
  %_lhs1881 = load i32* %l_slot1827
  %index_ptr1882 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1881
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1881 )
  %_lhs1883 = load { i32, [ 0 x i32 ] }** %a_slot1829
  store { i32, [ 0 x i32 ] }* %_lhs1883, i32* %t1839
  %_lhs1884 = load i32* %l_slot1827
  %index_ptr1885 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1884
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1884 )
  %_lhs1886 = load i32* %j1838
  %index_ptr1887 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1886
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1886 )
  %_lhs1888 = load { i32, [ 0 x i32 ] }** %a_slot1829
  store { i32, [ 0 x i32 ] }* %_lhs1888, { i32, [ 0 x i32 ] }** %a_slot1829
  %_lhs1889 = load i32* %j1838
  %index_ptr1890 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1829, i32 %_lhs1889
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1889 )
  %_lhs1891 = load i32* %t1839
  store i32 %_lhs1891, { i32, [ 0 x i32 ] }** %a_slot1829
  %_lhs1892 = load i32* %j1838
  ret i32 %_lhs1892
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1806, i32 %l1804, i32 %r1802){

__fresh699:
  %a_slot1807 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1806, { i32, [ 0 x i32 ] }** %a_slot1807
  %l_slot1805 = alloca i32
  store i32 %l1804, i32* %l_slot1805
  %r_slot1803 = alloca i32
  store i32 %r1802, i32* %r_slot1803
  %j1808 = alloca i32
  store i32 0, i32* %j1808
  %_lhs1809 = load i32* %l_slot1805
  %_lhs1810 = load i32* %r_slot1803
  %bop1811 = icmp slt i32 %_lhs1809, %_lhs1810
  br i1 %bop1811, label %__then698, label %__else697

__fresh700:
  br label %__then698

__then698:
  %_lhs1814 = load i32* %r_slot1803
  %_lhs1813 = load i32* %l_slot1805
  %_lhs1812 = load { i32, [ 0 x i32 ] }** %a_slot1807
  %ret1815 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1812, i32 %_lhs1813, i32 %_lhs1814 )
  store i32 %ret1815, i32* %j1808
  %_lhs1818 = load i32* %j1808
  %bop1819 = sub i32 %_lhs1818, 1
  %_lhs1817 = load i32* %l_slot1805
  %_lhs1816 = load { i32, [ 0 x i32 ] }** %a_slot1807
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1816, i32 %_lhs1817, i32 %bop1819 )
  %_lhs1823 = load i32* %r_slot1803
  %_lhs1821 = load i32* %j1808
  %bop1822 = add i32 %_lhs1821, 1
  %_lhs1820 = load { i32, [ 0 x i32 ] }** %a_slot1807
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1820, i32 %bop1822, i32 %_lhs1823 )
  br label %__merge696

__fresh701:
  br label %__else697

__else697:
  br label %__merge696

__merge696:
  ret void
}


