declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh343:
  ret void
}


define i32 @program (i32 %argc1898, { i32, [ 0 x i8* ] }* %argv1896){

__fresh340:
  %argc_slot1899 = alloca i32
  store i32 %argc1898, i32* %argc_slot1899
  %argv_slot1897 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1896, { i32, [ 0 x i8* ] }** %argv_slot1897
  %array_ptr1900 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array1901 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1900 to { i32, [ 0 x i32 ] }* 
  %index_ptr1902 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr1902
  %index_ptr1903 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr1903
  %index_ptr1904 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr1904
  %index_ptr1905 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr1905
  %index_ptr1906 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr1906
  %index_ptr1907 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr1907
  %index_ptr1908 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr1908
  %index_ptr1909 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr1909
  %ar1910 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1901, { i32, [ 0 x i32 ] }** %ar1910
  %_lhs1911 = load { i32, [ 0 x i32 ] }** %ar1910
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs1911, i32 8 )
  %i1912 = alloca i32
  store i32 0, i32* %i1912
  br label %__cond339

__cond339:
  %_lhs1913 = load i32* %i1912
  %bop1914 = icmp slt i32 %_lhs1913, 8
  br i1 %bop1914, label %__body338, label %__post337

__fresh341:
  br label %__body338

__body338:
  %index_ptr1916 = getelementptr { i32, [ 0 x i32 ] }** %ar1910, i32 %_lhs1915
  %_lhs1915 = load i32* %i1912
  %_lhs1917 = load { i32, [ 0 x i32 ] }** %ar1910
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs1917 )
  %_lhs1918 = load i32* %i1912
  %bop1919 = add i32 %_lhs1918, 1
  store i32 %bop1919, i32* %i1912
  br label %__cond339

__fresh342:
  br label %__post337

__post337:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a1871, i32 %s1869){

__fresh334:
  %a_slot1872 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1871, { i32, [ 0 x i32 ] }** %a_slot1872
  %s_slot1870 = alloca i32
  store i32 %s1869, i32* %s_slot1870
  %t1873 = alloca i32
  store i32 0, i32* %t1873
  %mi1874 = alloca i32
  store i32 0, i32* %mi1874
  %i1875 = alloca i32
  store i32 0, i32* %i1875
  br label %__cond333

__cond333:
  %_lhs1876 = load i32* %i1875
  %_lhs1877 = load i32* %s_slot1870
  %bop1878 = icmp slt i32 %_lhs1876, %_lhs1877
  br i1 %bop1878, label %__body332, label %__post331

__fresh335:
  br label %__body332

__body332:
  %_lhs1881 = load i32* %s_slot1870
  %_lhs1880 = load i32* %i1875
  %_lhs1879 = load { i32, [ 0 x i32 ] }** %a_slot1872
  %ret1882 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs1879, i32 %_lhs1880, i32 %_lhs1881 )
  store i32 %ret1882, i32* %mi1874
  %index_ptr1884 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1872, i32 %_lhs1883
  %_lhs1883 = load i32* %i1875
  %_lhs1885 = load { i32, [ 0 x i32 ] }** %a_slot1872
  store { i32, [ 0 x i32 ] }* %_lhs1885, i32* %t1873
  %index_ptr1887 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1872, i32 %_lhs1886
  %_lhs1886 = load i32* %i1875
  %index_ptr1889 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1872, i32 %_lhs1888
  %_lhs1888 = load i32* %mi1874
  %_lhs1890 = load { i32, [ 0 x i32 ] }** %a_slot1872
  store { i32, [ 0 x i32 ] }* %_lhs1890, { i32, [ 0 x i32 ] }** %a_slot1872
  %index_ptr1892 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1872, i32 %_lhs1891
  %_lhs1891 = load i32* %mi1874
  %_lhs1893 = load i32* %t1873
  store i32 %_lhs1893, { i32, [ 0 x i32 ] }** %a_slot1872
  %_lhs1894 = load i32* %i1875
  %bop1895 = add i32 %_lhs1894, 1
  store i32 %bop1895, i32* %i1875
  br label %__cond333

__fresh336:
  br label %__post331

__post331:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a1844, i32 %s1842, i32 %b1840){

__fresh326:
  %a_slot1845 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1844, { i32, [ 0 x i32 ] }** %a_slot1845
  %s_slot1843 = alloca i32
  store i32 %s1842, i32* %s_slot1843
  %b_slot1841 = alloca i32
  store i32 %b1840, i32* %b_slot1841
  %_lhs1846 = load i32* %s_slot1843
  %i1847 = alloca i32
  store i32 %_lhs1846, i32* %i1847
  %index_ptr1849 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1845, i32 %_lhs1848
  %_lhs1848 = load i32* %s_slot1843
  %_lhs1850 = load { i32, [ 0 x i32 ] }** %a_slot1845
  %min1851 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1850, i32* %min1851
  %_lhs1852 = load i32* %s_slot1843
  %mi1853 = alloca i32
  store i32 %_lhs1852, i32* %mi1853
  br label %__cond322

__cond322:
  %_lhs1854 = load i32* %i1847
  %_lhs1855 = load i32* %b_slot1841
  %bop1856 = icmp slt i32 %_lhs1854, %_lhs1855
  br i1 %bop1856, label %__body321, label %__post320

__fresh327:
  br label %__body321

__body321:
  %index_ptr1858 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1845, i32 %_lhs1857
  %_lhs1857 = load i32* %i1847
  %_lhs1859 = load { i32, [ 0 x i32 ] }** %a_slot1845
  %_lhs1860 = load i32* %min1851
  %bop1861 = icmp slt { i32, [ 0 x i32 ] }* %_lhs1859, %_lhs1860
  br i1 %bop1861, label %__then325, label %__else324

__fresh328:
  br label %__then325

__then325:
  %index_ptr1863 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1845, i32 %_lhs1862
  %_lhs1862 = load i32* %i1847
  %_lhs1864 = load { i32, [ 0 x i32 ] }** %a_slot1845
  store { i32, [ 0 x i32 ] }* %_lhs1864, i32* %min1851
  %_lhs1865 = load i32* %i1847
  store i32 %_lhs1865, i32* %mi1853
  br label %__merge323

__fresh329:
  br label %__else324

__else324:
  br label %__merge323

__merge323:
  %_lhs1866 = load i32* %i1847
  %bop1867 = add i32 %_lhs1866, 1
  store i32 %bop1867, i32* %i1847
  br label %__cond322

__fresh330:
  br label %__post320

__post320:
  %_lhs1868 = load i32* %mi1853
  ret i32 %_lhs1868
}


