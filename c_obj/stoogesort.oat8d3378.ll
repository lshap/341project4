declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh319:
  ret void
}


define i32 @program (i32 %argc1955, { i32, [ 0 x i8* ] }* %argv1953){

__fresh316:
  %argc_slot1956 = alloca i32
  store i32 %argc1955, i32* %argc_slot1956
  %argv_slot1954 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1953, { i32, [ 0 x i8* ] }** %argv_slot1954
  %array_ptr1957 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array1958 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1957 to { i32, [ 0 x i32 ] }* 
  %index_ptr1959 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1959
  %index_ptr1960 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr1960
  %index_ptr1961 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr1961
  %index_ptr1962 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr1962
  %unop1963 = sub i32 0, 6
  %index_ptr1964 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 4
  store i32 %unop1963, i32* %index_ptr1964
  %index_ptr1965 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr1965
  %index_ptr1966 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr1966
  %index_ptr1967 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr1967
  %unop1968 = sub i32 0, 2
  %index_ptr1969 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 8
  store i32 %unop1968, i32* %index_ptr1969
  %unop1970 = sub i32 0, 5
  %index_ptr1971 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 9
  store i32 %unop1970, i32* %index_ptr1971
  %index_ptr1972 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr1972
  %index_ptr1973 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr1973
  %index_ptr1974 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr1974
  %unop1975 = sub i32 0, 3
  %index_ptr1976 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 13
  store i32 %unop1975, i32* %index_ptr1976
  %index_ptr1977 = getelementptr { i32, [ 0 x i32 ] }* %array1958, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr1977
  %nums1978 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1958, { i32, [ 0 x i32 ] }** %nums1978
  %i1979 = alloca i32
  store i32 0, i32* %i1979
  %_lhs1980 = load { i32, [ 0 x i32 ] }** %nums1978
  %len_ptr1981 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1980, i32 0, i32 0
  %len1982 = load i32* %len_ptr1981
  %n1983 = alloca i32
  store i32 %len1982, i32* %n1983
  %_lhs1985 = load i32* %n1983
  %bop1986 = sub i32 %_lhs1985, 1
  %_lhs1984 = load { i32, [ 0 x i32 ] }** %nums1978
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1984, i32 0, i32 %bop1986 )
  store i32 0, i32* %i1979
  br label %__cond315

__cond315:
  %_lhs1987 = load i32* %i1979
  %_lhs1988 = load i32* %n1983
  %bop1989 = sub i32 %_lhs1988, 1
  %bop1990 = icmp sle i32 %_lhs1987, %bop1989
  br i1 %bop1990, label %__body314, label %__post313

__fresh317:
  br label %__body314

__body314:
  %_lhs1991 = load i32* %i1979
  %index_ptr1992 = getelementptr { i32, [ 0 x i32 ] }** %nums1978, i32 %_lhs1991
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1991 )
  %_lhs1994 = load { i32, [ 0 x i32 ] }** %nums1978
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs1994 )
  %_lhs1995 = load i32* %i1979
  %bop1996 = add i32 %_lhs1995, 1
  store i32 %bop1996, i32* %i1979
  br label %__cond315

__fresh318:
  br label %__post313

__post313:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a1902, i32 %i1900, i32 %j1898){

__fresh308:
  %a_slot1903 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1902, { i32, [ 0 x i32 ] }** %a_slot1903
  %i_slot1901 = alloca i32
  store i32 %i1900, i32* %i_slot1901
  %j_slot1899 = alloca i32
  store i32 %j1898, i32* %j_slot1899
  %t1904 = alloca i32
  store i32 0, i32* %t1904
  %_lhs1905 = load i32* %j_slot1899
  %index_ptr1906 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1903, i32 %_lhs1905
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1905 )
  %_lhs1908 = load { i32, [ 0 x i32 ] }** %a_slot1903
  %_lhs1909 = load i32* %i_slot1901
  %index_ptr1910 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1903, i32 %_lhs1909
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1909 )
  %_lhs1912 = load { i32, [ 0 x i32 ] }** %a_slot1903
  %bop1913 = icmp slt { i32, [ 0 x i32 ] }* %_lhs1908, %_lhs1912
  br i1 %bop1913, label %__then304, label %__else303

__fresh309:
  br label %__then304

__then304:
  %_lhs1914 = load i32* %i_slot1901
  %index_ptr1915 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1903, i32 %_lhs1914
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1914 )
  %_lhs1917 = load { i32, [ 0 x i32 ] }** %a_slot1903
  store { i32, [ 0 x i32 ] }* %_lhs1917, i32* %t1904
  %_lhs1918 = load i32* %i_slot1901
  %index_ptr1919 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1903, i32 %_lhs1918
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1918 )
  %_lhs1921 = load i32* %j_slot1899
  %index_ptr1922 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1903, i32 %_lhs1921
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1921 )
  %_lhs1924 = load { i32, [ 0 x i32 ] }** %a_slot1903
  store { i32, [ 0 x i32 ] }* %_lhs1924, { i32, [ 0 x i32 ] }** %a_slot1903
  %_lhs1925 = load i32* %j_slot1899
  %index_ptr1926 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1903, i32 %_lhs1925
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1925 )
  %_lhs1928 = load i32* %t1904
  store i32 %_lhs1928, { i32, [ 0 x i32 ] }** %a_slot1903
  br label %__merge302

__fresh310:
  br label %__else303

__else303:
  br label %__merge302

__merge302:
  %_lhs1929 = load i32* %j_slot1899
  %_lhs1930 = load i32* %i_slot1901
  %bop1931 = sub i32 %_lhs1929, %_lhs1930
  %bop1932 = icmp sgt i32 %bop1931, 1
  br i1 %bop1932, label %__then307, label %__else306

__fresh311:
  br label %__then307

__then307:
  %_lhs1933 = load i32* %j_slot1899
  %_lhs1934 = load i32* %i_slot1901
  %bop1935 = sub i32 %_lhs1933, %_lhs1934
  %bop1936 = add i32 %bop1935, 1
  %bop1937 = ashr i32 %bop1936, 1
  store i32 %bop1937, i32* %t1904
  %_lhs1940 = load i32* %j_slot1899
  %_lhs1941 = load i32* %t1904
  %bop1942 = sub i32 %_lhs1940, %_lhs1941
  %_lhs1939 = load i32* %i_slot1901
  %_lhs1938 = load { i32, [ 0 x i32 ] }** %a_slot1903
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1938, i32 %_lhs1939, i32 %bop1942 )
  %_lhs1947 = load i32* %j_slot1899
  %_lhs1944 = load i32* %i_slot1901
  %_lhs1945 = load i32* %t1904
  %bop1946 = add i32 %_lhs1944, %_lhs1945
  %_lhs1943 = load { i32, [ 0 x i32 ] }** %a_slot1903
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1943, i32 %bop1946, i32 %_lhs1947 )
  %_lhs1950 = load i32* %j_slot1899
  %_lhs1951 = load i32* %t1904
  %bop1952 = sub i32 %_lhs1950, %_lhs1951
  %_lhs1949 = load i32* %i_slot1901
  %_lhs1948 = load { i32, [ 0 x i32 ] }** %a_slot1903
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1948, i32 %_lhs1949, i32 %bop1952 )
  br label %__merge305

__fresh312:
  br label %__else306

__else306:
  br label %__merge305

__merge305:
  ret void
}


