declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh696:
  ret void
}


define i32 @program (i32 %argc1955, { i32, [ 0 x i8* ] }* %argv1953){

__fresh695:
  %argc_slot1956 = alloca i32
  store i32 %argc1955, i32* %argc_slot1956
  %argv_slot1954 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1953, { i32, [ 0 x i8* ] }** %argv_slot1954
  %size_ptr1958 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1954, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1958, i32 1 )
  %index_ptr1957 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1954, i32 0, i32 1, i32 1
  %_lhs1959 = load { i32, [ 0 x i8* ] }** %argv_slot1954
  %ret1960 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs1959, i32 3, i32 5 )
  call void @print_string( i8* %ret1960 )
  ret i32 0
}


define i8* @sub (i8* %str1932, i32 %start1930, i32 %len1928){

__fresh691:
  %str_slot1933 = alloca i8*
  store i8* %str1932, i8** %str_slot1933
  %start_slot1931 = alloca i32
  store i32 %start1930, i32* %start_slot1931
  %len_slot1929 = alloca i32
  store i32 %len1928, i32* %len_slot1929
  %_lhs1934 = load i8** %str_slot1933
  %ret1935 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1934 )
  %arr1936 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1935, { i32, [ 0 x i32 ] }** %arr1936
  %_lhs1937 = load i32* %len_slot1929
  %array_ptr1938 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs1937 )
  %array1939 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1938 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr1941
  br label %__compare688

__fresh692:
  br label %__compare688

__compare688:
  %comparison_result1942 = icmp slt i32* %index_ptr1941, %_lhs1937
  br i1 %comparison_result1942, label %__body689, label %__end690

__fresh693:
  br label %__body689

__body689:
  store i32* %index_ptr1941, i32* %i1943
  %_lhs1944 = load i32* %i1943
  %_lhs1945 = load i32* %start_slot1931
  %bop1946 = add i32 %_lhs1944, %_lhs1945
  %size_ptr1948 = getelementptr { i32, [ 0 x i32 ] }* %arr1936, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1948, i32 %bop1946 )
  %index_ptr1947 = getelementptr { i32, [ 0 x i32 ] }* %arr1936, i32 0, i32 1, i32 %bop1946
  %_lhs1949 = load { i32, [ 0 x i32 ] }** %arr1936
  %index_ptr1941 = add i32* %index_ptr1941, 1
  br label %__compare688

__fresh694:
  br label %__end690

__end690:
  %r1950 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1939, { i32, [ 0 x i32 ] }** %r1950
  %_lhs1951 = load { i32, [ 0 x i32 ] }** %r1950
  %ret1952 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1951 )
  ret i8* %ret1952
}


