declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2027.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2027 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2027.str., i32 0, i32 0), align 4
@_oat_string2023.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2023 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2023.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh802:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2063, i32 %low2061, i32 %high2059, i32 %mid2057){

__fresh788:
  %a_slot2064 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2063, { i32, [ 0 x i32 ] }** %a_slot2064
  %low_slot2062 = alloca i32
  store i32 %low2061, i32* %low_slot2062
  %high_slot2060 = alloca i32
  store i32 %high2059, i32* %high_slot2060
  %mid_slot2058 = alloca i32
  store i32 %mid2057, i32* %mid_slot2058
  %i2065 = alloca i32
  store i32 0, i32* %i2065
  %j2066 = alloca i32
  store i32 0, i32* %j2066
  %k2067 = alloca i32
  store i32 0, i32* %k2067
  %array_ptr2068 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2069 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2068 to { i32, [ 0 x i32 ] }* 
  %index_ptr2070 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 0
  store i32 50, i32* %index_ptr2070
  store i32 0, i32* %index_ptr2071
  br label %__compare770

__fresh789:
  br label %__compare770

__compare770:
  %comparison_result2072 = icmp slt i32* %index_ptr2071, 50
  br i1 %comparison_result2072, label %__body771, label %__end772

__fresh790:
  br label %__body771

__body771:
  store i32* %index_ptr2071, i32* %i2073
  %index_ptr2071 = add i32* %index_ptr2071, 1
  br label %__compare770

__fresh791:
  br label %__end772

__end772:
  %c2074 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array2069, { i32, [ 0 x i32 ] }** %c2074
  %_lhs2075 = load i32* %low_slot2062
  store i32 %_lhs2075, i32* %i2065
  %_lhs2076 = load i32* %mid_slot2058
  %bop2077 = add i32 %_lhs2076, 1
  store i32 %bop2077, i32* %j2066
  %_lhs2078 = load i32* %low_slot2062
  store i32 %_lhs2078, i32* %k2067
  br label %__cond775

__cond775:
  %_lhs2079 = load i32* %i2065
  %_lhs2080 = load i32* %mid_slot2058
  %bop2081 = icmp sle i32 %_lhs2079, %_lhs2080
  %_lhs2082 = load i32* %j2066
  %_lhs2083 = load i32* %high_slot2060
  %bop2084 = icmp sle i32 %_lhs2082, %_lhs2083
  %bop2085 = and i1 %bop2081, %bop2084
  br i1 %bop2085, label %__body774, label %__post773

__fresh792:
  br label %__body774

__body774:
  %_lhs2086 = load i32* %i2065
  %index_ptr2087 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2064, i32 %_lhs2086
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2086 )
  %_lhs2088 = load { i32, [ 0 x i32 ] }** %a_slot2064
  %_lhs2089 = load i32* %j2066
  %index_ptr2090 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2064, i32 %_lhs2089
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2089 )
  %_lhs2091 = load { i32, [ 0 x i32 ] }** %a_slot2064
  %bop2092 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2088, %_lhs2091
  br i1 %bop2092, label %__then778, label %__else777

__fresh793:
  br label %__then778

__then778:
  %_lhs2093 = load i32* %k2067
  %index_ptr2094 = getelementptr { i32, [ 0 x i32 ] }** %c2074, i32 %_lhs2093
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2093 )
  %_lhs2095 = load i32* %i2065
  %index_ptr2096 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2064, i32 %_lhs2095
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2095 )
  %_lhs2097 = load { i32, [ 0 x i32 ] }** %a_slot2064
  store { i32, [ 0 x i32 ] }* %_lhs2097, { i32, [ 0 x i32 ] }** %c2074
  %_lhs2098 = load i32* %k2067
  %bop2099 = add i32 %_lhs2098, 1
  store i32 %bop2099, i32* %k2067
  %_lhs2100 = load i32* %i2065
  %bop2101 = add i32 %_lhs2100, 1
  store i32 %bop2101, i32* %i2065
  br label %__merge776

__fresh794:
  br label %__else777

__else777:
  %_lhs2102 = load i32* %k2067
  %index_ptr2103 = getelementptr { i32, [ 0 x i32 ] }** %c2074, i32 %_lhs2102
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2102 )
  %_lhs2104 = load i32* %j2066
  %index_ptr2105 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2064, i32 %_lhs2104
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2104 )
  %_lhs2106 = load { i32, [ 0 x i32 ] }** %a_slot2064
  store { i32, [ 0 x i32 ] }* %_lhs2106, { i32, [ 0 x i32 ] }** %c2074
  %_lhs2107 = load i32* %k2067
  %bop2108 = add i32 %_lhs2107, 1
  store i32 %bop2108, i32* %k2067
  %_lhs2109 = load i32* %j2066
  %bop2110 = add i32 %_lhs2109, 1
  store i32 %bop2110, i32* %j2066
  br label %__merge776

__merge776:
  br label %__cond775

__fresh795:
  br label %__post773

__post773:
  br label %__cond781

__cond781:
  %_lhs2111 = load i32* %i2065
  %_lhs2112 = load i32* %mid_slot2058
  %bop2113 = icmp sle i32 %_lhs2111, %_lhs2112
  br i1 %bop2113, label %__body780, label %__post779

__fresh796:
  br label %__body780

__body780:
  %_lhs2114 = load i32* %k2067
  %index_ptr2115 = getelementptr { i32, [ 0 x i32 ] }** %c2074, i32 %_lhs2114
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2114 )
  %_lhs2116 = load i32* %i2065
  %index_ptr2117 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2064, i32 %_lhs2116
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2116 )
  %_lhs2118 = load { i32, [ 0 x i32 ] }** %a_slot2064
  store { i32, [ 0 x i32 ] }* %_lhs2118, { i32, [ 0 x i32 ] }** %c2074
  %_lhs2119 = load i32* %k2067
  %bop2120 = add i32 %_lhs2119, 1
  store i32 %bop2120, i32* %k2067
  %_lhs2121 = load i32* %i2065
  %bop2122 = add i32 %_lhs2121, 1
  store i32 %bop2122, i32* %i2065
  br label %__cond781

__fresh797:
  br label %__post779

__post779:
  br label %__cond784

__cond784:
  %_lhs2123 = load i32* %j2066
  %_lhs2124 = load i32* %high_slot2060
  %bop2125 = icmp sle i32 %_lhs2123, %_lhs2124
  br i1 %bop2125, label %__body783, label %__post782

__fresh798:
  br label %__body783

__body783:
  %_lhs2126 = load i32* %k2067
  %index_ptr2127 = getelementptr { i32, [ 0 x i32 ] }** %c2074, i32 %_lhs2126
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2126 )
  %_lhs2128 = load i32* %j2066
  %index_ptr2129 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2064, i32 %_lhs2128
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2128 )
  %_lhs2130 = load { i32, [ 0 x i32 ] }** %a_slot2064
  store { i32, [ 0 x i32 ] }* %_lhs2130, { i32, [ 0 x i32 ] }** %c2074
  %_lhs2131 = load i32* %k2067
  %bop2132 = add i32 %_lhs2131, 1
  store i32 %bop2132, i32* %k2067
  %_lhs2133 = load i32* %j2066
  %bop2134 = add i32 %_lhs2133, 1
  store i32 %bop2134, i32* %j2066
  br label %__cond784

__fresh799:
  br label %__post782

__post782:
  %_lhs2135 = load i32* %low_slot2062
  store i32 %_lhs2135, i32* %i2065
  br label %__cond787

__cond787:
  %_lhs2136 = load i32* %i2065
  %_lhs2137 = load i32* %k2067
  %bop2138 = icmp slt i32 %_lhs2136, %_lhs2137
  br i1 %bop2138, label %__body786, label %__post785

__fresh800:
  br label %__body786

__body786:
  %_lhs2139 = load i32* %i2065
  %index_ptr2140 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2064, i32 %_lhs2139
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2139 )
  %_lhs2141 = load i32* %i2065
  %index_ptr2142 = getelementptr { i32, [ 0 x i32 ] }** %c2074, i32 %_lhs2141
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2141 )
  %_lhs2143 = load { i32, [ 0 x i32 ] }** %c2074
  store { i32, [ 0 x i32 ] }* %_lhs2143, { i32, [ 0 x i32 ] }** %a_slot2064
  %_lhs2144 = load i32* %i2065
  %bop2145 = add i32 %_lhs2144, 1
  store i32 %bop2145, i32* %i2065
  br label %__cond787

__fresh801:
  br label %__post785

__post785:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2036, i32 %low2034, i32 %high2032){

__fresh767:
  %a_slot2037 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2036, { i32, [ 0 x i32 ] }** %a_slot2037
  %low_slot2035 = alloca i32
  store i32 %low2034, i32* %low_slot2035
  %high_slot2033 = alloca i32
  store i32 %high2032, i32* %high_slot2033
  %mid2038 = alloca i32
  store i32 0, i32* %mid2038
  %_lhs2039 = load i32* %low_slot2035
  %_lhs2040 = load i32* %high_slot2033
  %bop2041 = icmp slt i32 %_lhs2039, %_lhs2040
  br i1 %bop2041, label %__then766, label %__else765

__fresh768:
  br label %__then766

__then766:
  %_lhs2042 = load i32* %low_slot2035
  %_lhs2043 = load i32* %high_slot2033
  %bop2044 = add i32 %_lhs2042, %_lhs2043
  %bop2045 = ashr i32 %bop2044, 1
  store i32 %bop2045, i32* %mid2038
  %_lhs2048 = load i32* %mid2038
  %_lhs2047 = load i32* %low_slot2035
  %_lhs2046 = load { i32, [ 0 x i32 ] }** %a_slot2037
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2046, i32 %_lhs2047, i32 %_lhs2048 )
  %_lhs2052 = load i32* %high_slot2033
  %_lhs2050 = load i32* %mid2038
  %bop2051 = add i32 %_lhs2050, 1
  %_lhs2049 = load { i32, [ 0 x i32 ] }** %a_slot2037
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2049, i32 %bop2051, i32 %_lhs2052 )
  %_lhs2056 = load i32* %mid2038
  %_lhs2055 = load i32* %high_slot2033
  %_lhs2054 = load i32* %low_slot2035
  %_lhs2053 = load { i32, [ 0 x i32 ] }** %a_slot2037
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2053, i32 %_lhs2054, i32 %_lhs2055, i32 %_lhs2056 )
  br label %__merge764

__fresh769:
  br label %__else765

__else765:
  br label %__merge764

__merge764:
  ret void
}


define i32 @program (i32 %argc2004, { i32, [ 0 x i8* ] }* %argv2002){

__fresh763:
  %argc_slot2005 = alloca i32
  store i32 %argc2004, i32* %argc_slot2005
  %argv_slot2003 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2002, { i32, [ 0 x i8* ] }** %argv_slot2003
  %i2006 = alloca i32
  store i32 0, i32* %i2006
  %array_ptr2007 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2008 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2007 to { i32, [ 0 x i32 ] }* 
  %index_ptr2009 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2009
  %index_ptr2010 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2010
  %index_ptr2011 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2011
  %index_ptr2012 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2012
  %index_ptr2013 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2013
  %index_ptr2014 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2014
  %index_ptr2015 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2015
  %index_ptr2016 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2016
  %index_ptr2017 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2017
  %index_ptr2018 = getelementptr { i32, [ 0 x i32 ] }* %array2008, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2018
  %a2019 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2008, { i32, [ 0 x i32 ] }** %a2019
  %_lhs2020 = load { i32, [ 0 x i32 ] }** %a2019
  %ret2021 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2020 )
  call void @print_string( i8* %ret2021 )
  %_lhs2022 = load { i32, [ 0 x i32 ] }** %a2019
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2022, i32 0, i32 9 )
  %strval2024 = load i8** @_oat_string2023
  call void @print_string( i8* %strval2024 )
  %_lhs2025 = load { i32, [ 0 x i32 ] }** %a2019
  %ret2026 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2025 )
  call void @print_string( i8* %ret2026 )
  %strval2028 = load i8** @_oat_string2027
  call void @print_string( i8* %strval2028 )
  %_lhs2029 = load i32* %i2006
  ret i32 %_lhs2029
}


