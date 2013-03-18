declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1920.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string1920 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1920.str., i32 0, i32 0), align 4
@_oat_string1916.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string1916 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1916.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh507:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a1956, i32 %low1954, i32 %high1952, i32 %mid1950){

__fresh493:
  %a_slot1957 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1956, { i32, [ 0 x i32 ] }** %a_slot1957
  %low_slot1955 = alloca i32
  store i32 %low1954, i32* %low_slot1955
  %high_slot1953 = alloca i32
  store i32 %high1952, i32* %high_slot1953
  %mid_slot1951 = alloca i32
  store i32 %mid1950, i32* %mid_slot1951
  %i1958 = alloca i32
  store i32 0, i32* %i1958
  %j1959 = alloca i32
  store i32 0, i32* %j1959
  %k1960 = alloca i32
  store i32 0, i32* %k1960
  %array_ptr1961 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array1962 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1961 to { i32, [ 0 x i32 ] }* 
  %index_ptr1963 = getelementptr { i32, [ 0 x i32 ] }* %array1962, i32 0, i32 1, i32 0
  store i32 50, i32* %index_ptr1963
  store i32 0, i32* %index_ptr1964
  br label %__compare475

__fresh494:
  br label %__compare475

__compare475:
  %comparison_result1965 = icmp slt i32* %index_ptr1964, 50
  br i1 %comparison_result1965, label %__body476, label %__end477

__fresh495:
  br label %__body476

__body476:
  store i32* %index_ptr1964, i32 %i1966
  %index_ptr1964 = add i32* %index_ptr1964, 1
  br label %__compare475

__fresh496:
  br label %__end477

__end477:
  %c1967 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1962, { i32, [ 0 x i32 ] }** %c1967
  %_lhs1968 = load i32* %low_slot1955
  store i32 %_lhs1968, i32* %i1958
  %_lhs1969 = load i32* %mid_slot1951
  %bop1970 = add i32 %_lhs1969, 1
  store i32 %bop1970, i32* %j1959
  %_lhs1971 = load i32* %low_slot1955
  store i32 %_lhs1971, i32* %k1960
  br label %__cond480

__cond480:
  %_lhs1972 = load i32* %i1958
  %_lhs1973 = load i32* %mid_slot1951
  %bop1974 = icmp sle i32 %_lhs1972, %_lhs1973
  %_lhs1975 = load i32* %j1959
  %_lhs1976 = load i32* %high_slot1953
  %bop1977 = icmp sle i32 %_lhs1975, %_lhs1976
  %bop1978 = and i1 %bop1974, %bop1977
  br i1 %bop1978, label %__body479, label %__post478

__fresh497:
  br label %__body479

__body479:
  %_lhs1979 = load i32* %i1958
  %index_ptr1980 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1957, i32 %_lhs1979
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1979 )
  %_lhs1981 = load { i32, [ 0 x i32 ] }** %a_slot1957
  %_lhs1982 = load i32* %j1959
  %index_ptr1983 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1957, i32 %_lhs1982
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1982 )
  %_lhs1984 = load { i32, [ 0 x i32 ] }** %a_slot1957
  %bop1985 = icmp slt { i32, [ 0 x i32 ] }* %_lhs1981, %_lhs1984
  br i1 %bop1985, label %__then483, label %__else482

__fresh498:
  br label %__then483

__then483:
  %_lhs1986 = load i32* %k1960
  %index_ptr1987 = getelementptr { i32, [ 0 x i32 ] }** %c1967, i32 %_lhs1986
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1986 )
  %_lhs1988 = load i32* %i1958
  %index_ptr1989 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1957, i32 %_lhs1988
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1988 )
  %_lhs1990 = load { i32, [ 0 x i32 ] }** %a_slot1957
  store { i32, [ 0 x i32 ] }* %_lhs1990, { i32, [ 0 x i32 ] }** %c1967
  %_lhs1991 = load i32* %k1960
  %bop1992 = add i32 %_lhs1991, 1
  store i32 %bop1992, i32* %k1960
  %_lhs1993 = load i32* %i1958
  %bop1994 = add i32 %_lhs1993, 1
  store i32 %bop1994, i32* %i1958
  br label %__merge481

__fresh499:
  br label %__else482

__else482:
  %_lhs1995 = load i32* %k1960
  %index_ptr1996 = getelementptr { i32, [ 0 x i32 ] }** %c1967, i32 %_lhs1995
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1995 )
  %_lhs1997 = load i32* %j1959
  %index_ptr1998 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1957, i32 %_lhs1997
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1997 )
  %_lhs1999 = load { i32, [ 0 x i32 ] }** %a_slot1957
  store { i32, [ 0 x i32 ] }* %_lhs1999, { i32, [ 0 x i32 ] }** %c1967
  %_lhs2000 = load i32* %k1960
  %bop2001 = add i32 %_lhs2000, 1
  store i32 %bop2001, i32* %k1960
  %_lhs2002 = load i32* %j1959
  %bop2003 = add i32 %_lhs2002, 1
  store i32 %bop2003, i32* %j1959
  br label %__merge481

__merge481:
  br label %__cond480

__fresh500:
  br label %__post478

__post478:
  br label %__cond486

__cond486:
  %_lhs2004 = load i32* %i1958
  %_lhs2005 = load i32* %mid_slot1951
  %bop2006 = icmp sle i32 %_lhs2004, %_lhs2005
  br i1 %bop2006, label %__body485, label %__post484

__fresh501:
  br label %__body485

__body485:
  %_lhs2007 = load i32* %k1960
  %index_ptr2008 = getelementptr { i32, [ 0 x i32 ] }** %c1967, i32 %_lhs2007
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2007 )
  %_lhs2009 = load i32* %i1958
  %index_ptr2010 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1957, i32 %_lhs2009
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2009 )
  %_lhs2011 = load { i32, [ 0 x i32 ] }** %a_slot1957
  store { i32, [ 0 x i32 ] }* %_lhs2011, { i32, [ 0 x i32 ] }** %c1967
  %_lhs2012 = load i32* %k1960
  %bop2013 = add i32 %_lhs2012, 1
  store i32 %bop2013, i32* %k1960
  %_lhs2014 = load i32* %i1958
  %bop2015 = add i32 %_lhs2014, 1
  store i32 %bop2015, i32* %i1958
  br label %__cond486

__fresh502:
  br label %__post484

__post484:
  br label %__cond489

__cond489:
  %_lhs2016 = load i32* %j1959
  %_lhs2017 = load i32* %high_slot1953
  %bop2018 = icmp sle i32 %_lhs2016, %_lhs2017
  br i1 %bop2018, label %__body488, label %__post487

__fresh503:
  br label %__body488

__body488:
  %_lhs2019 = load i32* %k1960
  %index_ptr2020 = getelementptr { i32, [ 0 x i32 ] }** %c1967, i32 %_lhs2019
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2019 )
  %_lhs2021 = load i32* %j1959
  %index_ptr2022 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1957, i32 %_lhs2021
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2021 )
  %_lhs2023 = load { i32, [ 0 x i32 ] }** %a_slot1957
  store { i32, [ 0 x i32 ] }* %_lhs2023, { i32, [ 0 x i32 ] }** %c1967
  %_lhs2024 = load i32* %k1960
  %bop2025 = add i32 %_lhs2024, 1
  store i32 %bop2025, i32* %k1960
  %_lhs2026 = load i32* %j1959
  %bop2027 = add i32 %_lhs2026, 1
  store i32 %bop2027, i32* %j1959
  br label %__cond489

__fresh504:
  br label %__post487

__post487:
  %_lhs2028 = load i32* %low_slot1955
  store i32 %_lhs2028, i32* %i1958
  br label %__cond492

__cond492:
  %_lhs2029 = load i32* %i1958
  %_lhs2030 = load i32* %k1960
  %bop2031 = icmp slt i32 %_lhs2029, %_lhs2030
  br i1 %bop2031, label %__body491, label %__post490

__fresh505:
  br label %__body491

__body491:
  %_lhs2032 = load i32* %i1958
  %index_ptr2033 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1957, i32 %_lhs2032
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2032 )
  %_lhs2034 = load i32* %i1958
  %index_ptr2035 = getelementptr { i32, [ 0 x i32 ] }** %c1967, i32 %_lhs2034
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2034 )
  %_lhs2036 = load { i32, [ 0 x i32 ] }** %c1967
  store { i32, [ 0 x i32 ] }* %_lhs2036, { i32, [ 0 x i32 ] }** %a_slot1957
  %_lhs2037 = load i32* %i1958
  %bop2038 = add i32 %_lhs2037, 1
  store i32 %bop2038, i32* %i1958
  br label %__cond492

__fresh506:
  br label %__post490

__post490:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a1929, i32 %low1927, i32 %high1925){

__fresh472:
  %a_slot1930 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1929, { i32, [ 0 x i32 ] }** %a_slot1930
  %low_slot1928 = alloca i32
  store i32 %low1927, i32* %low_slot1928
  %high_slot1926 = alloca i32
  store i32 %high1925, i32* %high_slot1926
  %mid1931 = alloca i32
  store i32 0, i32* %mid1931
  %_lhs1932 = load i32* %low_slot1928
  %_lhs1933 = load i32* %high_slot1926
  %bop1934 = icmp slt i32 %_lhs1932, %_lhs1933
  br i1 %bop1934, label %__then471, label %__else470

__fresh473:
  br label %__then471

__then471:
  %_lhs1935 = load i32* %low_slot1928
  %_lhs1936 = load i32* %high_slot1926
  %bop1937 = add i32 %_lhs1935, %_lhs1936
  %bop1938 = ashr i32 %bop1937, 1
  store i32 %bop1938, i32* %mid1931
  %_lhs1941 = load i32* %mid1931
  %_lhs1940 = load i32* %low_slot1928
  %_lhs1939 = load { i32, [ 0 x i32 ] }** %a_slot1930
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs1939, i32 %_lhs1940, i32 %_lhs1941 )
  %_lhs1945 = load i32* %high_slot1926
  %_lhs1943 = load i32* %mid1931
  %bop1944 = add i32 %_lhs1943, 1
  %_lhs1942 = load { i32, [ 0 x i32 ] }** %a_slot1930
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs1942, i32 %bop1944, i32 %_lhs1945 )
  %_lhs1949 = load i32* %mid1931
  %_lhs1948 = load i32* %high_slot1926
  %_lhs1947 = load i32* %low_slot1928
  %_lhs1946 = load { i32, [ 0 x i32 ] }** %a_slot1930
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs1946, i32 %_lhs1947, i32 %_lhs1948, i32 %_lhs1949 )
  br label %__merge469

__fresh474:
  br label %__else470

__else470:
  br label %__merge469

__merge469:
  ret void
}


define i32 @program (i32 %argc1897, { i32, [ 0 x i8* ] }* %argv1895){

__fresh468:
  %argc_slot1898 = alloca i32
  store i32 %argc1897, i32* %argc_slot1898
  %argv_slot1896 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1895, { i32, [ 0 x i8* ] }** %argv_slot1896
  %i1899 = alloca i32
  store i32 0, i32* %i1899
  %array_ptr1900 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1901 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1900 to { i32, [ 0 x i32 ] }* 
  %index_ptr1902 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1902
  %index_ptr1903 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1903
  %index_ptr1904 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1904
  %index_ptr1905 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1905
  %index_ptr1906 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1906
  %index_ptr1907 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1907
  %index_ptr1908 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1908
  %index_ptr1909 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1909
  %index_ptr1910 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1910
  %index_ptr1911 = getelementptr { i32, [ 0 x i32 ] }* %array1901, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1911
  %a1912 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1901, { i32, [ 0 x i32 ] }** %a1912
  %_lhs1913 = load { i32, [ 0 x i32 ] }** %a1912
  %ret1914 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1913 )
  call void @print_string( i8* %ret1914 )
  %_lhs1915 = load { i32, [ 0 x i32 ] }** %a1912
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs1915, i32 0, i32 9 )
  %strval1917 = load i8** @_oat_string1916
  call void @print_string( i8* %strval1917 )
  %_lhs1918 = load { i32, [ 0 x i32 ] }** %a1912
  %ret1919 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1918 )
  call void @print_string( i8* %ret1919 )
  %strval1921 = load i8** @_oat_string1920
  call void @print_string( i8* %strval1921 )
  %_lhs1922 = load i32* %i1899
  ret i32 %_lhs1922
}


