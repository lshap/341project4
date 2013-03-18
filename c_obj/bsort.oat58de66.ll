declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1979.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string1979 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1979.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh556:
  ret void
}


define i32 @program (i32 %argc1960, { i32, [ 0 x i8* ] }* %argv1958){

__fresh552:
  %argc_slot1961 = alloca i32
  store i32 %argc1960, i32* %argc_slot1961
  %argv_slot1959 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1958, { i32, [ 0 x i8* ] }** %argv_slot1959
  %array_ptr1962 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array1963 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1962 to { i32, [ 0 x i32 ] }* 
  %index_ptr1964 = getelementptr { i32, [ 0 x i32 ] }* %array1963, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr1964
  store i32 0, i32* %index_ptr1965
  br label %__compare549

__fresh553:
  br label %__compare549

__compare549:
  %comparison_result1966 = icmp slt i32* %index_ptr1965, 8
  br i1 %comparison_result1966, label %__body550, label %__end551

__fresh554:
  br label %__body550

__body550:
  store i32* %index_ptr1965, i32 %i1967
  %index_ptr1965 = add i32* %index_ptr1965, 1
  br label %__compare549

__fresh555:
  br label %__end551

__end551:
  %a1968 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array1963, { i32, [ 0 x i32 ] }** %a1968
  %index_ptr1969 = getelementptr { i32, [ 0 x i32 ] }** %a1968, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  store i32 121, { i32, [ 0 x i32 ] }** %a1968
  %index_ptr1970 = getelementptr { i32, [ 0 x i32 ] }** %a1968, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  store i32 125, { i32, [ 0 x i32 ] }** %a1968
  %index_ptr1971 = getelementptr { i32, [ 0 x i32 ] }** %a1968, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  store i32 120, { i32, [ 0 x i32 ] }** %a1968
  %index_ptr1972 = getelementptr { i32, [ 0 x i32 ] }** %a1968, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  store i32 111, { i32, [ 0 x i32 ] }** %a1968
  %index_ptr1973 = getelementptr { i32, [ 0 x i32 ] }** %a1968, i32 4
  call void @oat_array_bounds_check( i32 0, i32 4 )
  store i32 116, { i32, [ 0 x i32 ] }** %a1968
  %index_ptr1974 = getelementptr { i32, [ 0 x i32 ] }** %a1968, i32 5
  call void @oat_array_bounds_check( i32 0, i32 5 )
  store i32 110, { i32, [ 0 x i32 ] }** %a1968
  %index_ptr1975 = getelementptr { i32, [ 0 x i32 ] }** %a1968, i32 6
  call void @oat_array_bounds_check( i32 0, i32 6 )
  store i32 117, { i32, [ 0 x i32 ] }** %a1968
  %index_ptr1976 = getelementptr { i32, [ 0 x i32 ] }** %a1968, i32 7
  call void @oat_array_bounds_check( i32 0, i32 7 )
  store i32 119, { i32, [ 0 x i32 ] }** %a1968
  %_lhs1977 = load { i32, [ 0 x i32 ] }** %a1968
  %ret1978 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1977 )
  call void @print_string( i8* %ret1978 )
  %strval1980 = load i8** @_oat_string1979
  call void @print_string( i8* %strval1980 )
  %_lhs1982 = load { i32, [ 0 x i32 ] }** %a1968
  %len_ptr1983 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1982, i32 0, i32 0
  %len1984 = load i32* %len_ptr1983
  %_lhs1981 = load { i32, [ 0 x i32 ] }** %a1968
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs1981, i32 %len1984 )
  %_lhs1985 = load { i32, [ 0 x i32 ] }** %a1968
  %ret1986 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1985 )
  call void @print_string( i8* %ret1986 )
  %unop1987 = sub i32 0, 1
  ret i32 %unop1987
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers1921, i32 %array_size1919){

__fresh542:
  %numbers_slot1922 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers1921, { i32, [ 0 x i32 ] }** %numbers_slot1922
  %array_size_slot1920 = alloca i32
  store i32 %array_size1919, i32* %array_size_slot1920
  %temp1923 = alloca i32
  store i32 0, i32* %temp1923
  %_lhs1924 = load i32* %array_size_slot1920
  %bop1925 = sub i32 %_lhs1924, 1
  %i1926 = alloca i32
  store i32 %bop1925, i32* %i1926
  br label %__cond535

__cond535:
  %_lhs1927 = load i32* %i1926
  %bop1928 = icmp sgt i32 %_lhs1927, 0
  br i1 %bop1928, label %__body534, label %__post533

__fresh543:
  br label %__body534

__body534:
  %j1929 = alloca i32
  store i32 1, i32* %j1929
  br label %__cond538

__cond538:
  %_lhs1930 = load i32* %j1929
  %_lhs1931 = load i32* %i1926
  %bop1932 = icmp sle i32 %_lhs1930, %_lhs1931
  br i1 %bop1932, label %__body537, label %__post536

__fresh544:
  br label %__body537

__body537:
  %_lhs1933 = load i32* %j1929
  %bop1934 = sub i32 %_lhs1933, 1
  %index_ptr1935 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1922, i32 %bop1934
  call void @oat_array_bounds_check( i32 0, i32 %bop1934 )
  %_lhs1936 = load { i32, [ 0 x i32 ] }** %numbers_slot1922
  %_lhs1937 = load i32* %j1929
  %index_ptr1938 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1922, i32 %_lhs1937
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1937 )
  %_lhs1939 = load { i32, [ 0 x i32 ] }** %numbers_slot1922
  %bop1940 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1936, %_lhs1939
  br i1 %bop1940, label %__then541, label %__else540

__fresh545:
  br label %__then541

__then541:
  %_lhs1941 = load i32* %j1929
  %bop1942 = sub i32 %_lhs1941, 1
  %index_ptr1943 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1922, i32 %bop1942
  call void @oat_array_bounds_check( i32 0, i32 %bop1942 )
  %_lhs1944 = load { i32, [ 0 x i32 ] }** %numbers_slot1922
  store { i32, [ 0 x i32 ] }* %_lhs1944, i32* %temp1923
  %_lhs1945 = load i32* %j1929
  %bop1946 = sub i32 %_lhs1945, 1
  %index_ptr1947 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1922, i32 %bop1946
  call void @oat_array_bounds_check( i32 0, i32 %bop1946 )
  %_lhs1948 = load i32* %j1929
  %index_ptr1949 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1922, i32 %_lhs1948
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1948 )
  %_lhs1950 = load { i32, [ 0 x i32 ] }** %numbers_slot1922
  store { i32, [ 0 x i32 ] }* %_lhs1950, { i32, [ 0 x i32 ] }** %numbers_slot1922
  %_lhs1951 = load i32* %j1929
  %index_ptr1952 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot1922, i32 %_lhs1951
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1951 )
  %_lhs1953 = load i32* %temp1923
  store i32 %_lhs1953, { i32, [ 0 x i32 ] }** %numbers_slot1922
  br label %__merge539

__fresh546:
  br label %__else540

__else540:
  br label %__merge539

__merge539:
  %_lhs1954 = load i32* %j1929
  %bop1955 = add i32 %_lhs1954, 1
  store i32 %bop1955, i32* %j1929
  br label %__cond538

__fresh547:
  br label %__post536

__post536:
  %_lhs1956 = load i32* %i1926
  %bop1957 = sub i32 %_lhs1956, 1
  store i32 %bop1957, i32* %i1926
  br label %__cond535

__fresh548:
  br label %__post533

__post533:
  ret void
}


