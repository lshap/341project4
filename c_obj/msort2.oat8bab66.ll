declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2064.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2064 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2064.str., i32 0, i32 0), align 4
@_oat_string2060.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2060 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2060.str., i32 0, i32 0), align 4
@a2051 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2051.init
define void @oat_init (){

__fresh548:
  call void @a2051.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2100, i32 %low2098, i32 %high2096, i32 %mid2094){

__fresh534:
  %a_slot2101 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2100, { i32, [ 0 x i32 ] }** %a_slot2101
  %low_slot2099 = alloca i32
  store i32 %low2098, i32* %low_slot2099
  %high_slot2097 = alloca i32
  store i32 %high2096, i32* %high_slot2097
  %mid_slot2095 = alloca i32
  store i32 %mid2094, i32* %mid_slot2095
  %i2102 = alloca i32
  store i32 0, i32* %i2102
  %j2103 = alloca i32
  store i32 0, i32* %j2103
  %k2104 = alloca i32
  store i32 0, i32* %k2104
  %array_ptr2105 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2106 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2105 to { i32, [ 0 x i32 ] }* 
  %index_ptr2107 = getelementptr { i32, [ 0 x i32 ] }* %array2106, i32 0, i32 1, i32 0
  store i32 50, i32* %index_ptr2107
  store i32 0, i32* %index_ptr2108
  br label %__compare516

__fresh535:
  br label %__compare516

__compare516:
  %comparison_result2109 = icmp slt i32* %index_ptr2108, 50
  br i1 %comparison_result2109, label %__body517, label %__end518

__fresh536:
  br label %__body517

__body517:
  store i32* %index_ptr2108, i32 %i2110
  %index_ptr2108 = add i32* %index_ptr2108, 1
  br label %__compare516

__fresh537:
  br label %__end518

__end518:
  %c2111 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array2106, { i32, [ 0 x i32 ] }** %c2111
  %_lhs2112 = load i32* %low_slot2099
  store i32 %_lhs2112, i32* %i2102
  %_lhs2113 = load i32* %mid_slot2095
  %bop2114 = add i32 %_lhs2113, 1
  store i32 %bop2114, i32* %j2103
  %_lhs2115 = load i32* %low_slot2099
  store i32 %_lhs2115, i32* %k2104
  br label %__cond521

__cond521:
  %_lhs2116 = load i32* %i2102
  %_lhs2117 = load i32* %mid_slot2095
  %bop2118 = icmp sle i32 %_lhs2116, %_lhs2117
  %_lhs2119 = load i32* %j2103
  %_lhs2120 = load i32* %high_slot2097
  %bop2121 = icmp sle i32 %_lhs2119, %_lhs2120
  %bop2122 = and i1 %bop2118, %bop2121
  br i1 %bop2122, label %__body520, label %__post519

__fresh538:
  br label %__body520

__body520:
  %_lhs2123 = load i32* %i2102
  %index_ptr2124 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2101, i32 %_lhs2123
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2123 )
  %_lhs2125 = load { i32, [ 0 x i32 ] }** %a_slot2101
  %_lhs2126 = load i32* %j2103
  %index_ptr2127 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2101, i32 %_lhs2126
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2126 )
  %_lhs2128 = load { i32, [ 0 x i32 ] }** %a_slot2101
  %bop2129 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2125, %_lhs2128
  br i1 %bop2129, label %__then524, label %__else523

__fresh539:
  br label %__then524

__then524:
  %_lhs2130 = load i32* %k2104
  %index_ptr2131 = getelementptr { i32, [ 0 x i32 ] }** %c2111, i32 %_lhs2130
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2130 )
  %_lhs2132 = load i32* %i2102
  %index_ptr2133 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2101, i32 %_lhs2132
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2132 )
  %_lhs2134 = load { i32, [ 0 x i32 ] }** %a_slot2101
  store { i32, [ 0 x i32 ] }* %_lhs2134, { i32, [ 0 x i32 ] }** %c2111
  %_lhs2135 = load i32* %k2104
  %bop2136 = add i32 %_lhs2135, 1
  store i32 %bop2136, i32* %k2104
  %_lhs2137 = load i32* %i2102
  %bop2138 = add i32 %_lhs2137, 1
  store i32 %bop2138, i32* %i2102
  br label %__merge522

__fresh540:
  br label %__else523

__else523:
  %_lhs2139 = load i32* %k2104
  %index_ptr2140 = getelementptr { i32, [ 0 x i32 ] }** %c2111, i32 %_lhs2139
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2139 )
  %_lhs2141 = load i32* %j2103
  %index_ptr2142 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2101, i32 %_lhs2141
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2141 )
  %_lhs2143 = load { i32, [ 0 x i32 ] }** %a_slot2101
  store { i32, [ 0 x i32 ] }* %_lhs2143, { i32, [ 0 x i32 ] }** %c2111
  %_lhs2144 = load i32* %k2104
  %bop2145 = add i32 %_lhs2144, 1
  store i32 %bop2145, i32* %k2104
  %_lhs2146 = load i32* %j2103
  %bop2147 = add i32 %_lhs2146, 1
  store i32 %bop2147, i32* %j2103
  br label %__merge522

__merge522:
  br label %__cond521

__fresh541:
  br label %__post519

__post519:
  br label %__cond527

__cond527:
  %_lhs2148 = load i32* %i2102
  %_lhs2149 = load i32* %mid_slot2095
  %bop2150 = icmp sle i32 %_lhs2148, %_lhs2149
  br i1 %bop2150, label %__body526, label %__post525

__fresh542:
  br label %__body526

__body526:
  %_lhs2151 = load i32* %k2104
  %index_ptr2152 = getelementptr { i32, [ 0 x i32 ] }** %c2111, i32 %_lhs2151
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2151 )
  %_lhs2153 = load i32* %i2102
  %index_ptr2154 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2101, i32 %_lhs2153
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2153 )
  %_lhs2155 = load { i32, [ 0 x i32 ] }** %a_slot2101
  store { i32, [ 0 x i32 ] }* %_lhs2155, { i32, [ 0 x i32 ] }** %c2111
  %_lhs2156 = load i32* %k2104
  %bop2157 = add i32 %_lhs2156, 1
  store i32 %bop2157, i32* %k2104
  %_lhs2158 = load i32* %i2102
  %bop2159 = add i32 %_lhs2158, 1
  store i32 %bop2159, i32* %i2102
  br label %__cond527

__fresh543:
  br label %__post525

__post525:
  br label %__cond530

__cond530:
  %_lhs2160 = load i32* %j2103
  %_lhs2161 = load i32* %high_slot2097
  %bop2162 = icmp sle i32 %_lhs2160, %_lhs2161
  br i1 %bop2162, label %__body529, label %__post528

__fresh544:
  br label %__body529

__body529:
  %_lhs2163 = load i32* %k2104
  %index_ptr2164 = getelementptr { i32, [ 0 x i32 ] }** %c2111, i32 %_lhs2163
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2163 )
  %_lhs2165 = load i32* %j2103
  %index_ptr2166 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2101, i32 %_lhs2165
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2165 )
  %_lhs2167 = load { i32, [ 0 x i32 ] }** %a_slot2101
  store { i32, [ 0 x i32 ] }* %_lhs2167, { i32, [ 0 x i32 ] }** %c2111
  %_lhs2168 = load i32* %k2104
  %bop2169 = add i32 %_lhs2168, 1
  store i32 %bop2169, i32* %k2104
  %_lhs2170 = load i32* %j2103
  %bop2171 = add i32 %_lhs2170, 1
  store i32 %bop2171, i32* %j2103
  br label %__cond530

__fresh545:
  br label %__post528

__post528:
  %_lhs2172 = load i32* %low_slot2099
  store i32 %_lhs2172, i32* %i2102
  br label %__cond533

__cond533:
  %_lhs2173 = load i32* %i2102
  %_lhs2174 = load i32* %k2104
  %bop2175 = icmp slt i32 %_lhs2173, %_lhs2174
  br i1 %bop2175, label %__body532, label %__post531

__fresh546:
  br label %__body532

__body532:
  %_lhs2176 = load i32* %i2102
  %index_ptr2177 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2101, i32 %_lhs2176
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2176 )
  %_lhs2178 = load i32* %i2102
  %index_ptr2179 = getelementptr { i32, [ 0 x i32 ] }** %c2111, i32 %_lhs2178
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2178 )
  %_lhs2180 = load { i32, [ 0 x i32 ] }** %c2111
  store { i32, [ 0 x i32 ] }* %_lhs2180, { i32, [ 0 x i32 ] }** %a_slot2101
  %_lhs2181 = load i32* %i2102
  %bop2182 = add i32 %_lhs2181, 1
  store i32 %bop2182, i32* %i2102
  br label %__cond533

__fresh547:
  br label %__post531

__post531:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2073, i32 %low2071, i32 %high2069){

__fresh513:
  %a_slot2074 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2073, { i32, [ 0 x i32 ] }** %a_slot2074
  %low_slot2072 = alloca i32
  store i32 %low2071, i32* %low_slot2072
  %high_slot2070 = alloca i32
  store i32 %high2069, i32* %high_slot2070
  %mid2075 = alloca i32
  store i32 0, i32* %mid2075
  %_lhs2076 = load i32* %low_slot2072
  %_lhs2077 = load i32* %high_slot2070
  %bop2078 = icmp slt i32 %_lhs2076, %_lhs2077
  br i1 %bop2078, label %__then512, label %__else511

__fresh514:
  br label %__then512

__then512:
  %_lhs2079 = load i32* %low_slot2072
  %_lhs2080 = load i32* %high_slot2070
  %bop2081 = add i32 %_lhs2079, %_lhs2080
  %bop2082 = ashr i32 %bop2081, 1
  store i32 %bop2082, i32* %mid2075
  %_lhs2085 = load i32* %mid2075
  %_lhs2084 = load i32* %low_slot2072
  %_lhs2083 = load { i32, [ 0 x i32 ] }** %a_slot2074
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2083, i32 %_lhs2084, i32 %_lhs2085 )
  %_lhs2089 = load i32* %high_slot2070
  %_lhs2087 = load i32* %mid2075
  %bop2088 = add i32 %_lhs2087, 1
  %_lhs2086 = load { i32, [ 0 x i32 ] }** %a_slot2074
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2086, i32 %bop2088, i32 %_lhs2089 )
  %_lhs2093 = load i32* %mid2075
  %_lhs2092 = load i32* %high_slot2070
  %_lhs2091 = load i32* %low_slot2072
  %_lhs2090 = load { i32, [ 0 x i32 ] }** %a_slot2074
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2090, i32 %_lhs2091, i32 %_lhs2092, i32 %_lhs2093 )
  br label %__merge510

__fresh515:
  br label %__else511

__else511:
  br label %__merge510

__merge510:
  ret void
}


define i32 @program (i32 %argc2054, { i32, [ 0 x i8* ] }* %argv2052){

__fresh509:
  %argc_slot2055 = alloca i32
  store i32 %argc2054, i32* %argc_slot2055
  %argv_slot2053 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2052, { i32, [ 0 x i8* ] }** %argv_slot2053
  %i2056 = alloca i32
  store i32 0, i32* %i2056
  %_lhs2057 = load { i32, [ 0 x i32 ] }** @a2051
  %ret2058 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2057 )
  call void @print_string( i8* %ret2058 )
  %_lhs2059 = load { i32, [ 0 x i32 ] }** @a2051
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2059, i32 0, i32 9 )
  %strval2061 = load i8** @_oat_string2060
  call void @print_string( i8* %strval2061 )
  %_lhs2062 = load { i32, [ 0 x i32 ] }** @a2051
  %ret2063 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2062 )
  call void @print_string( i8* %ret2063 )
  %strval2065 = load i8** @_oat_string2064
  call void @print_string( i8* %strval2065 )
  %_lhs2066 = load i32* %i2056
  ret i32 %_lhs2066
}


define void @a2051.init (){

__fresh508:
  %array_ptr2039 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2040 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2039 to { i32, [ 0 x i32 ] }* 
  %index_ptr2041 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2041
  %index_ptr2042 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2042
  %index_ptr2043 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2043
  %index_ptr2044 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2044
  %index_ptr2045 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2045
  %index_ptr2046 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2046
  %index_ptr2047 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2047
  %index_ptr2048 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2048
  %index_ptr2049 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2049
  %index_ptr2050 = getelementptr { i32, [ 0 x i32 ] }* %array2040, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2050
  store { i32, [ 0 x i32 ] }* %array2040, { i32, [ 0 x i32 ] }** @a2051
  ret void
}


