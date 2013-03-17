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
