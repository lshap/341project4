declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2103.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2103 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2103.str., i32 0, i32 0), align 4
@_oat_string2099.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2099 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2099.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh389:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2085, i32 %n2083){

__fresh384:
  %ar_slot2086 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2085, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2086
  %n_slot2084 = alloca i32
  store i32 %n2083, i32* %n_slot2084
  %i2087 = alloca i32
  store i32 0, i32* %i2087
  br label %__cond380

__cond380:
  %_lhs2088 = load i32* %i2087
  %_lhs2089 = load i32* %n_slot2084
  %bop2090 = icmp slt i32 %_lhs2088, %_lhs2089
  br i1 %bop2090, label %__body379, label %__post378

__fresh385:
  br label %__body379

__body379:
  %j2091 = alloca i32
  store i32 0, i32* %j2091
  br label %__cond383

__cond383:
  %_lhs2092 = load i32* %j2091
  %bop2093 = icmp slt i32 %_lhs2092, 4
  br i1 %bop2093, label %__body382, label %__post381

__fresh386:
  br label %__body382

__body382:
  %_lhs2094 = load i32* %j2091
  %_lhs2095 = load i32* %i2087
  %index_ptr2096 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2086, i32 %_lhs2095
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2095 )
  %index_ptr2097 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2086, i32 %_lhs2094
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2094 )
  %_lhs2098 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2086
  call void @print_int( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2098 )
  %strval2100 = load i8** @_oat_string2099
  call void @print_string( i8* %strval2100 )
  %_lhs2101 = load i32* %j2091
  %bop2102 = add i32 %_lhs2101, 1
  store i32 %bop2102, i32* %j2091
  br label %__cond383

__fresh387:
  br label %__post381

__post381:
  %strval2104 = load i8** @_oat_string2103
  call void @print_string( i8* %strval2104 )
  %_lhs2105 = load i32* %i2087
  %bop2106 = add i32 %_lhs2105, 1
  store i32 %bop2106, i32* %i2087
  br label %__cond380

__fresh388:
  br label %__post378

__post378:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12061, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22059, i32 %row2057, i32 %col2055){

__fresh375:
  %a1_slot2062 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12061, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2062
  %a2_slot2060 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22059, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2060
  %row_slot2058 = alloca i32
  store i32 %row2057, i32* %row_slot2058
  %col_slot2056 = alloca i32
  store i32 %col2055, i32* %col_slot2056
  %sum2063 = alloca i32
  store i32 0, i32* %sum2063
  %k2064 = alloca i32
  store i32 0, i32* %k2064
  br label %__cond374

__cond374:
  %_lhs2065 = load i32* %k2064
  %bop2066 = icmp slt i32 %_lhs2065, 3
  br i1 %bop2066, label %__body373, label %__post372

__fresh376:
  br label %__body373

__body373:
  %_lhs2067 = load i32* %sum2063
  %_lhs2068 = load i32* %k2064
  %_lhs2069 = load i32* %row_slot2058
  %index_ptr2070 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2062, i32 %_lhs2069
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2069 )
  %index_ptr2071 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2062, i32 %_lhs2068
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2068 )
  %_lhs2072 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2062
  %_lhs2073 = load i32* %col_slot2056
  %_lhs2074 = load i32* %k2064
  %index_ptr2075 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2060, i32 %_lhs2074
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2074 )
  %index_ptr2076 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2060, i32 %_lhs2073
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2073 )
  %_lhs2077 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2060
  %bop2078 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2072, %_lhs2077
  %bop2079 = add i32 %_lhs2067, %bop2078
  store i32 %bop2079, i32* %sum2063
  %_lhs2080 = load i32* %k2064
  %bop2081 = add i32 %_lhs2080, 1
  store i32 %bop2081, i32* %k2064
  br label %__cond374

__fresh377:
  br label %__post372

__post372:
  %_lhs2082 = load i32* %sum2063
  ret i32 %_lhs2082
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12034, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22032, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32030){

__fresh367:
  %a1_slot2035 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12034, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2035
  %a2_slot2033 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22032, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2033
  %a3_slot2031 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32030, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2031
  %i2036 = alloca i32
  store i32 0, i32* %i2036
  br label %__cond363

__cond363:
  %_lhs2037 = load i32* %i2036
  %bop2038 = icmp slt i32 %_lhs2037, 2
  br i1 %bop2038, label %__body362, label %__post361

__fresh368:
  br label %__body362

__body362:
  %j2039 = alloca i32
  store i32 0, i32* %j2039
  br label %__cond366

__cond366:
  %_lhs2040 = load i32* %j2039
  %bop2041 = icmp slt i32 %_lhs2040, 4
  br i1 %bop2041, label %__body365, label %__post364

__fresh369:
  br label %__body365

__body365:
  %_lhs2042 = load i32* %j2039
  %_lhs2043 = load i32* %i2036
  %index_ptr2044 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2031, i32 %_lhs2043
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2043 )
  %index_ptr2045 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2031, i32 %_lhs2042
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2042 )
  %_lhs2049 = load i32* %j2039
  %_lhs2048 = load i32* %i2036
  %_lhs2047 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2033
  %_lhs2046 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2035
  %ret2050 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2046, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2047, i32 %_lhs2048, i32 %_lhs2049 )
  store i32 %ret2050, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2031
  %_lhs2051 = load i32* %j2039
  %bop2052 = add i32 %_lhs2051, 1
  store i32 %bop2052, i32* %j2039
  br label %__cond366

__fresh370:
  br label %__post364

__post364:
  %_lhs2053 = load i32* %i2036
  %bop2054 = add i32 %_lhs2053, 1
  store i32 %bop2054, i32* %i2036
  br label %__cond363

__fresh371:
  br label %__post361

__post361:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a11992, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a21990, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a31988){

__fresh354:
  %a1_slot1993 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a11992, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1993
  %a2_slot1991 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a21990, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1991
  %a3_slot1989 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a31988, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1989
  %i1994 = alloca i32
  store i32 0, i32* %i1994
  br label %__cond347

__cond347:
  %_lhs1995 = load i32* %i1994
  %bop1996 = icmp slt i32 %_lhs1995, 2
  br i1 %bop1996, label %__body346, label %__post345

__fresh355:
  br label %__body346

__body346:
  %j1997 = alloca i32
  store i32 0, i32* %j1997
  br label %__cond350

__cond350:
  %_lhs1998 = load i32* %j1997
  %bop1999 = icmp slt i32 %_lhs1998, 4
  br i1 %bop1999, label %__body349, label %__post348

__fresh356:
  br label %__body349

__body349:
  %k2000 = alloca i32
  store i32 0, i32* %k2000
  br label %__cond353

__cond353:
  %_lhs2001 = load i32* %k2000
  %bop2002 = icmp slt i32 %_lhs2001, 3
  br i1 %bop2002, label %__body352, label %__post351

__fresh357:
  br label %__body352

__body352:
  %_lhs2003 = load i32* %j1997
  %_lhs2004 = load i32* %i1994
  %index_ptr2005 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1989, i32 %_lhs2004
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2004 )
  %index_ptr2006 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1989, i32 %_lhs2003
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2003 )
  %_lhs2007 = load i32* %j1997
  %_lhs2008 = load i32* %i1994
  %index_ptr2009 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1989, i32 %_lhs2008
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2008 )
  %index_ptr2010 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1989, i32 %_lhs2007
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2007 )
  %_lhs2011 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1989
  %_lhs2012 = load i32* %k2000
  %_lhs2013 = load i32* %i1994
  %index_ptr2014 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1993, i32 %_lhs2013
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2013 )
  %index_ptr2015 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1993, i32 %_lhs2012
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2012 )
  %_lhs2016 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1993
  %_lhs2017 = load i32* %j1997
  %_lhs2018 = load i32* %k2000
  %index_ptr2019 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1991, i32 %_lhs2018
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2018 )
  %index_ptr2020 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1991, i32 %_lhs2017
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2017 )
  %_lhs2021 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1991
  %bop2022 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2016, %_lhs2021
  %bop2023 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2011, %bop2022
  store i32 %bop2023, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1989
  %_lhs2024 = load i32* %k2000
  %bop2025 = add i32 %_lhs2024, 1
  store i32 %bop2025, i32* %k2000
  br label %__cond353

__fresh358:
  br label %__post351

__post351:
  %_lhs2026 = load i32* %j1997
  %bop2027 = add i32 %_lhs2026, 1
  store i32 %bop2027, i32* %j1997
  br label %__cond350

__fresh359:
  br label %__post348

__post348:
  %_lhs2028 = load i32* %i1994
  %bop2029 = add i32 %_lhs2028, 1
  store i32 %bop2029, i32* %i1994
  br label %__cond347

__fresh360:
  br label %__post345

__post345:
  ret void
}


define i32 @program (i32 %argc1922, { i32, [ 0 x i8* ] }* %argv1920){

__fresh344:
  %argc_slot1923 = alloca i32
  store i32 %argc1922, i32* %argc_slot1923
  %argv_slot1921 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1920, { i32, [ 0 x i8* ] }** %argv_slot1921
  %array_ptr1924 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1925 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1924 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1926 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1927 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1926 to { i32, [ 0 x i32 ] }* 
  %index_ptr1928 = getelementptr { i32, [ 0 x i32 ] }* %array1927, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1928
  %index_ptr1929 = getelementptr { i32, [ 0 x i32 ] }* %array1927, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1929
  %index_ptr1930 = getelementptr { i32, [ 0 x i32 ] }* %array1927, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr1930
  %index_ptr1931 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1925, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1927, { i32, [ 0 x i32 ] }** %index_ptr1931
  %array_ptr1932 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1933 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1932 to { i32, [ 0 x i32 ] }* 
  %index_ptr1934 = getelementptr { i32, [ 0 x i32 ] }* %array1933, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1934
  %index_ptr1935 = getelementptr { i32, [ 0 x i32 ] }* %array1933, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1935
  %index_ptr1936 = getelementptr { i32, [ 0 x i32 ] }* %array1933, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr1936
  %index_ptr1937 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1925, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1933, { i32, [ 0 x i32 ] }** %index_ptr1937
  %a1938 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1925, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1938
  %array_ptr1939 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1940 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1939 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1941 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1942 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1941 to { i32, [ 0 x i32 ] }* 
  %index_ptr1943 = getelementptr { i32, [ 0 x i32 ] }* %array1942, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1943
  %index_ptr1944 = getelementptr { i32, [ 0 x i32 ] }* %array1942, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1944
  %index_ptr1945 = getelementptr { i32, [ 0 x i32 ] }* %array1942, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr1945
  %index_ptr1946 = getelementptr { i32, [ 0 x i32 ] }* %array1942, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr1946
  %index_ptr1947 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1940, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1942, { i32, [ 0 x i32 ] }** %index_ptr1947
  %array_ptr1948 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1949 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1948 to { i32, [ 0 x i32 ] }* 
  %index_ptr1950 = getelementptr { i32, [ 0 x i32 ] }* %array1949, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1950
  %index_ptr1951 = getelementptr { i32, [ 0 x i32 ] }* %array1949, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1951
  %index_ptr1952 = getelementptr { i32, [ 0 x i32 ] }* %array1949, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1952
  %index_ptr1953 = getelementptr { i32, [ 0 x i32 ] }* %array1949, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr1953
  %index_ptr1954 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1940, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1949, { i32, [ 0 x i32 ] }** %index_ptr1954
  %array_ptr1955 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1956 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1955 to { i32, [ 0 x i32 ] }* 
  %index_ptr1957 = getelementptr { i32, [ 0 x i32 ] }* %array1956, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1957
  %index_ptr1958 = getelementptr { i32, [ 0 x i32 ] }* %array1956, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1958
  %index_ptr1959 = getelementptr { i32, [ 0 x i32 ] }* %array1956, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr1959
  %index_ptr1960 = getelementptr { i32, [ 0 x i32 ] }* %array1956, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr1960
  %index_ptr1961 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1940, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1956, { i32, [ 0 x i32 ] }** %index_ptr1961
  %b1962 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1940, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1962
  %array_ptr1963 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1964 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1963 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1965 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1966 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1965 to { i32, [ 0 x i32 ] }* 
  %index_ptr1967 = getelementptr { i32, [ 0 x i32 ] }* %array1966, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1967
  %index_ptr1968 = getelementptr { i32, [ 0 x i32 ] }* %array1966, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1968
  %index_ptr1969 = getelementptr { i32, [ 0 x i32 ] }* %array1966, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1969
  %index_ptr1970 = getelementptr { i32, [ 0 x i32 ] }* %array1966, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1970
  %index_ptr1971 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1964, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1966, { i32, [ 0 x i32 ] }** %index_ptr1971
  %array_ptr1972 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1973 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1972 to { i32, [ 0 x i32 ] }* 
  %index_ptr1974 = getelementptr { i32, [ 0 x i32 ] }* %array1973, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1974
  %index_ptr1975 = getelementptr { i32, [ 0 x i32 ] }* %array1973, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1975
  %index_ptr1976 = getelementptr { i32, [ 0 x i32 ] }* %array1973, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1976
  %index_ptr1977 = getelementptr { i32, [ 0 x i32 ] }* %array1973, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1977
  %index_ptr1978 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1964, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1973, { i32, [ 0 x i32 ] }** %index_ptr1978
  %c1979 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1964, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1979
  %_lhs1982 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1979
  %_lhs1981 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1962
  %_lhs1980 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1938
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1980, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1981, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1982 )
  %_lhs1983 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1979
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1983, i32 2 )
  %_lhs1986 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1979
  %_lhs1985 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1962
  %_lhs1984 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1938
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1984, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1985, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1986 )
  %_lhs1987 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1979
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1987, i32 2 )
  ret i32 0
}


