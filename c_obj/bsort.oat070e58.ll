declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1983.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string1983 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1983.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh761:
  ret void
}


define i32 @program (i32 %argc1964, { i32, [ 0 x i8* ] }* %argv1962){

__fresh757:
  %argc_slot1965 = alloca i32
  store i32 %argc1964, i32* %argc_slot1965
  %argv_slot1963 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1962, { i32, [ 0 x i8* ] }** %argv_slot1963
  %array_ptr1966 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array1967 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1966 to { i32, [ 0 x i32 ] }* 
  %index_ptr1968 = getelementptr { i32, [ 0 x i32 ] }* %array1967, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr1968
  store i32 0, i32* %index_ptr1969
  br label %__compare754

__fresh758:
  br label %__compare754

__compare754:
  %comparison_result1970 = icmp slt i32* %index_ptr1969, 8
  br i1 %comparison_result1970, label %__body755, label %__end756

__fresh759:
  br label %__body755

__body755:
  store i32* %index_ptr1969, i32* %i1971
  %index_ptr1969 = add i32* %index_ptr1969, 1
  br label %__compare754

__fresh760:
  br label %__end756

__end756:
  %a1972 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array1967, { i32, [ 0 x i32 ] }** %a1972
  %index_ptr1973 = getelementptr { i32, [ 0 x i32 ] }** %a1972, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  store i32 121, { i32, [ 0 x i32 ] }** %a1972
  %index_ptr1974 = getelementptr { i32, [ 0 x i32 ] }** %a1972, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  store i32 125, { i32, [ 0 x i32 ] }** %a1972
  %index_ptr1975 = getelementptr { i32, [ 0 x i32 ] }** %a1972, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  store i32 120, { i32, [ 0 x i32 ] }** %a1972
  %index_ptr1976 = getelementptr { i32, [ 0 x i32 ] }** %a1972, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  store i32 111, { i32, [ 0 x i32 ] }** %a1972
  %index_ptr1977 = getelementptr { i32, [ 0 x i32 ] }** %a1972, i32 4
  call void @oat_array_bounds_check( i32 0, i32 4 )
  store i32 116, { i32, [ 0 x i32 ] }** %a1972
  %index_ptr1978 = getelementptr { i32, [ 0 x i32 ] }** %a1972, i32 5
  call void @oat_array_bounds_check( i32 0, i32 5 )
  store i32 110, { i32, [ 0 x i32 ] }** %a1972
  %index_ptr1979 = getelementptr { i32, [ 0 x i32 ] }** %a1972, i32 6
  call void @oat_array_bounds_check( i32 0, i32 6 )
  store i32 117, { i32, [ 0 x i32 ] }** %a1972
  %index_ptr1980 = getelementptr { i32, [ 0 x i32 ] }** %a1972, i32 7
  call void @oat_array_bounds_check( i32 0, i32 7 )
  store i32 119, { i32, [ 0 x i32 ] }** %a1972
  %_lhs1981 = load { i32, [ 0 x i32 ] }** %a1972
  %ret1982 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1981 )
  call void @print_string( i8* %ret1982 )
  %strval1984 = load i8** @_oat_string1983
  call void @print_string( i8* %strval1984 )
  %_lhs1986 = load { i32, [ 0 x i32 ] }** %a1972
  %len_ptr1987 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1986, i32 0, i32 0
  %len1988 = load i32* %len_ptr1987
  %_lhs1985 = load { i32, [ 0 x i32 ] }** %a1972
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs1985, i32 %len1988 )
  %_lhs1989 = load { i32, [ 0 x i32 ] }** %a1972
  %ret1990 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1989 )
  call void @print_string( i8* %ret1990 )
  %unop1991 = sub i32 0, 1
  ret i32 %unop1991
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers1925, i32 %array_size1923){

__fresh747:
  %numbers_slot1926 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers1925, { i32, [ 0 x i32 ] }** %numbers_slot1926
  %array_size_slot1924 = alloca i32
  store i32 %array_size1923, i32* %array_size_slot1924
  %temp1927 = alloca i32
  store i32 0, i32* %temp1927
  %_lhs1928 = load i32* %array_size_slot1924
  %bop1929 = sub i32 %_lhs1928, 1
  %i1930 = alloca i32
  store i32 %bop1929, i32* %i1930
  br label %__cond740

__cond740:
  %_lhs1931 = load i32* %i1930
  %bop1932 = icmp sgt i32 %_lhs1931, 0
  br i1 %bop1932, label %__body739, label %__post738

__fresh748:
  br label %__body739

__body739:
  %j1933 = alloca i32
  store i32 1, i32* %j1933
  br label %__cond743

__cond743:
  %_lhs1934 = load i32* %j1933
  %_lhs1935 = load i32* %i1930
  %bop1936 = icmp sle i32 %_lhs1934, %_lhs1935
  br i1 %bop1936, label %__body742, label %__post741

__fresh749:
  br label %__body742

__body742:
  %_lhs1937 = load i32* %j1933
  %bop1938 = sub i32 %_lhs1937, 1
  %index_ptr1939 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1926, i32 %bop1938
  call void @oat_array_bounds_check( i32 0, i32 %bop1938 )
  %_lhs1940 = load { i32, [ 0 x i32 ] }** %numbers_slot1926
  %_lhs1941 = load i32* %j1933
  %index_ptr1942 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1926, i32 %_lhs1941
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1941 )
  %_lhs1943 = load { i32, [ 0 x i32 ] }** %numbers_slot1926
  %bop1944 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1940, %_lhs1943
  br i1 %bop1944, label %__then746, label %__else745

__fresh750:
  br label %__then746

__then746:
  %_lhs1945 = load i32* %j1933
  %bop1946 = sub i32 %_lhs1945, 1
  %index_ptr1947 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1926, i32 %bop1946
  call void @oat_array_bounds_check( i32 0, i32 %bop1946 )
  %_lhs1948 = load { i32, [ 0 x i32 ] }** %numbers_slot1926
  store { i32, [ 0 x i32 ] }* %_lhs1948, i32* %temp1927
  %_lhs1949 = load i32* %j1933
  %bop1950 = sub i32 %_lhs1949, 1
  %index_ptr1951 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1926, i32 %bop1950
  call void @oat_array_bounds_check( i32 0, i32 %bop1950 )
  %_lhs1952 = load i32* %j1933
  %index_ptr1953 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1926, i32 %_lhs1952
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1952 )
  %_lhs1954 = load { i32, [ 0 x i32 ] }** %numbers_slot1926
  store { i32, [ 0 x i32 ] }* %_lhs1954, { i32, [ 0 x i32 ] }** %numbers_slot1926
  %_lhs1955 = load i32* %j1933
  %index_ptr1956 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1926, i32 %_lhs1955
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1955 )
  %_lhs1957 = load i32* %temp1927
  store i32 %_lhs1957, { i32, [ 0 x i32 ] }** %numbers_slot1926
  br label %__merge744

__fresh751:
  br label %__else745

__else745:
  br label %__merge744

__merge744:
  %_lhs1958 = load i32* %j1933
  %bop1959 = add i32 %_lhs1958, 1
  store i32 %bop1959, i32* %j1933
  br label %__cond743

__fresh752:
  br label %__post741

__post741:
  %_lhs1960 = load i32* %i1930
  %bop1961 = sub i32 %_lhs1960, 1
  store i32 %bop1961, i32* %i1930
  br label %__cond740

__fresh753:
  br label %__post738

__post738:
  ret void
}


