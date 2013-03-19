declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1992.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string1992 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1992.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh762:
  ret void
}


define i32 @program (i32 %argc1973, { i32, [ 0 x i8* ] }* %argv1971){

__fresh758:
  %argc_slot1974 = alloca i32
  store i32 %argc1973, i32* %argc_slot1974
  %argv_slot1972 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1971, { i32, [ 0 x i8* ] }** %argv_slot1972
  %array_ptr1975 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array1976 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1975 to { i32, [ 0 x i32 ] }* 
  %index_ptr1977 = getelementptr { i32, [ 0 x i32 ] }* %array1976, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr1977
  store i32 0, i32* %index_ptr1978
  br label %__compare755

__fresh759:
  br label %__compare755

__compare755:
  %comparison_result1979 = icmp slt i32* %index_ptr1978, 8
  br i1 %comparison_result1979, label %__body756, label %__end757

__fresh760:
  br label %__body756

__body756:
  store i32* %index_ptr1978, i32* %i1980
  %index_ptr1978 = add i32* %index_ptr1978, 1
  br label %__compare755

__fresh761:
  br label %__end757

__end757:
  %a1981 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1976, { i32, [ 0 x i32 ] }** %a1981
  %index_ptr1982 = getelementptr { i32, [ 0 x i32 ] }** %a1981, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  store i32 121, { i32, [ 0 x i32 ] }** %a1981
  %index_ptr1983 = getelementptr { i32, [ 0 x i32 ] }** %a1981, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  store i32 125, { i32, [ 0 x i32 ] }** %a1981
  %index_ptr1984 = getelementptr { i32, [ 0 x i32 ] }** %a1981, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  store i32 120, { i32, [ 0 x i32 ] }** %a1981
  %index_ptr1985 = getelementptr { i32, [ 0 x i32 ] }** %a1981, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  store i32 111, { i32, [ 0 x i32 ] }** %a1981
  %index_ptr1986 = getelementptr { i32, [ 0 x i32 ] }** %a1981, i32 4
  call void @oat_array_bounds_check( i32 0, i32 4 )
  store i32 116, { i32, [ 0 x i32 ] }** %a1981
  %index_ptr1987 = getelementptr { i32, [ 0 x i32 ] }** %a1981, i32 5
  call void @oat_array_bounds_check( i32 0, i32 5 )
  store i32 110, { i32, [ 0 x i32 ] }** %a1981
  %index_ptr1988 = getelementptr { i32, [ 0 x i32 ] }** %a1981, i32 6
  call void @oat_array_bounds_check( i32 0, i32 6 )
  store i32 117, { i32, [ 0 x i32 ] }** %a1981
  %index_ptr1989 = getelementptr { i32, [ 0 x i32 ] }** %a1981, i32 7
  call void @oat_array_bounds_check( i32 0, i32 7 )
  store i32 119, { i32, [ 0 x i32 ] }** %a1981
  %_lhs1990 = load { i32, [ 0 x i32 ] }** %a1981
  %ret1991 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1990 )
  call void @print_string( i8* %ret1991 )
  %strval1993 = load i8** @_oat_string1992
  call void @print_string( i8* %strval1993 )
  %_lhs1995 = load { i32, [ 0 x i32 ] }** %a1981
  %len_ptr1996 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1995, i32 0, i32 0
  %len1997 = load i32* %len_ptr1996
  %_lhs1994 = load { i32, [ 0 x i32 ] }** %a1981
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs1994, i32 %len1997 )
  %_lhs1998 = load { i32, [ 0 x i32 ] }** %a1981
  %ret1999 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1998 )
  call void @print_string( i8* %ret1999 )
  %unop2000 = sub i32 0, 1
  ret i32 %unop2000
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers1934, i32 %array_size1932){

__fresh748:
  %numbers_slot1935 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers1934, { i32, [ 0 x i32 ] }** %numbers_slot1935
  %array_size_slot1933 = alloca i32
  store i32 %array_size1932, i32* %array_size_slot1933
  %temp1936 = alloca i32
  store i32 0, i32* %temp1936
  %_lhs1937 = load i32* %array_size_slot1933
  %bop1938 = sub i32 %_lhs1937, 1
  %i1939 = alloca i32
  store i32 %bop1938, i32* %i1939
  br label %__cond741

__cond741:
  %_lhs1940 = load i32* %i1939
  %bop1941 = icmp sgt i32 %_lhs1940, 0
  br i1 %bop1941, label %__body740, label %__post739

__fresh749:
  br label %__body740

__body740:
  %j1942 = alloca i32
  store i32 1, i32* %j1942
  br label %__cond744

__cond744:
  %_lhs1943 = load i32* %j1942
  %_lhs1944 = load i32* %i1939
  %bop1945 = icmp sle i32 %_lhs1943, %_lhs1944
  br i1 %bop1945, label %__body743, label %__post742

__fresh750:
  br label %__body743

__body743:
  %_lhs1946 = load i32* %j1942
  %bop1947 = sub i32 %_lhs1946, 1
  %index_ptr1948 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1935, i32 %bop1947
  call void @oat_array_bounds_check( i32 0, i32 %bop1947 )
  %_lhs1949 = load { i32, [ 0 x i32 ] }** %numbers_slot1935
  %_lhs1950 = load i32* %j1942
  %index_ptr1951 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1935, i32 %_lhs1950
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1950 )
  %_lhs1952 = load { i32, [ 0 x i32 ] }** %numbers_slot1935
  %bop1953 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1949, %_lhs1952
  br i1 %bop1953, label %__then747, label %__else746

__fresh751:
  br label %__then747

__then747:
  %_lhs1954 = load i32* %j1942
  %bop1955 = sub i32 %_lhs1954, 1
  %index_ptr1956 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1935, i32 %bop1955
  call void @oat_array_bounds_check( i32 0, i32 %bop1955 )
  %_lhs1957 = load { i32, [ 0 x i32 ] }** %numbers_slot1935
  store { i32, [ 0 x i32 ] }* %_lhs1957, i32* %temp1936
  %_lhs1958 = load i32* %j1942
  %bop1959 = sub i32 %_lhs1958, 1
  %index_ptr1960 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1935, i32 %bop1959
  call void @oat_array_bounds_check( i32 0, i32 %bop1959 )
  %_lhs1961 = load i32* %j1942
  %index_ptr1962 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1935, i32 %_lhs1961
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1961 )
  %_lhs1963 = load { i32, [ 0 x i32 ] }** %numbers_slot1935
  store { i32, [ 0 x i32 ] }* %_lhs1963, { i32, [ 0 x i32 ] }** %numbers_slot1935
  %_lhs1964 = load i32* %j1942
  %index_ptr1965 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1935, i32 %_lhs1964
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1964 )
  %_lhs1966 = load i32* %temp1936
  store i32 %_lhs1966, { i32, [ 0 x i32 ] }** %numbers_slot1935
  br label %__merge745

__fresh752:
  br label %__else746

__else746:
  br label %__merge745

__merge745:
  %_lhs1967 = load i32* %j1942
  %bop1968 = add i32 %_lhs1967, 1
  store i32 %bop1968, i32* %j1942
  br label %__cond744

__fresh753:
  br label %__post742

__post742:
  %_lhs1969 = load i32* %i1939
  %bop1970 = sub i32 %_lhs1969, 1
  store i32 %bop1970, i32* %i1939
  br label %__cond741

__fresh754:
  br label %__post739

__post739:
  ret void
}


