declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2018.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2018 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2018.str., i32 0, i32 0), align 4
@_oat_string2014.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2014 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2014.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh801:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2054, i32 %low2052, i32 %high2050, i32 %mid2048){

__fresh787:
  %a_slot2055 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2054, { i32, [ 0 x i32 ] }** %a_slot2055
  %low_slot2053 = alloca i32
  store i32 %low2052, i32* %low_slot2053
  %high_slot2051 = alloca i32
  store i32 %high2050, i32* %high_slot2051
  %mid_slot2049 = alloca i32
  store i32 %mid2048, i32* %mid_slot2049
  %i2056 = alloca i32
  store i32 0, i32* %i2056
  %j2057 = alloca i32
  store i32 0, i32* %j2057
  %k2058 = alloca i32
  store i32 0, i32* %k2058
  %array_ptr2059 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2060 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2059 to { i32, [ 0 x i32 ] }* 
  %index_ptr2061 = getelementptr { i32, [ 0 x i32 ] }* %array2060, i32 0, i32 1, i32 0
  store i32 50, i32* %index_ptr2061
  store i32 0, i32* %index_ptr2062
  br label %__compare769

__fresh788:
  br label %__compare769

__compare769:
  %comparison_result2063 = icmp slt i32* %index_ptr2062, 50
  br i1 %comparison_result2063, label %__body770, label %__end771

__fresh789:
  br label %__body770

__body770:
  store i32* %index_ptr2062, i32* %i2064
  %index_ptr2062 = add i32* %index_ptr2062, 1
  br label %__compare769

__fresh790:
  br label %__end771

__end771:
  %c2065 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array2060, { i32, [ 0 x i32 ] }** %c2065
  %_lhs2066 = load i32* %low_slot2053
  store i32 %_lhs2066, i32* %i2056
  %_lhs2067 = load i32* %mid_slot2049
  %bop2068 = add i32 %_lhs2067, 1
  store i32 %bop2068, i32* %j2057
  %_lhs2069 = load i32* %low_slot2053
  store i32 %_lhs2069, i32* %k2058
  br label %__cond774

__cond774:
  %_lhs2070 = load i32* %i2056
  %_lhs2071 = load i32* %mid_slot2049
  %bop2072 = icmp sle i32 %_lhs2070, %_lhs2071
  %_lhs2073 = load i32* %j2057
  %_lhs2074 = load i32* %high_slot2051
  %bop2075 = icmp sle i32 %_lhs2073, %_lhs2074
  %bop2076 = and i1 %bop2072, %bop2075
  br i1 %bop2076, label %__body773, label %__post772

__fresh791:
  br label %__body773

__body773:
  %_lhs2077 = load i32* %i2056
  %index_ptr2078 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2055, i32 %_lhs2077
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2077 )
  %_lhs2079 = load { i32, [ 0 x i32 ] }** %a_slot2055
  %_lhs2080 = load i32* %j2057
  %index_ptr2081 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2055, i32 %_lhs2080
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2080 )
  %_lhs2082 = load { i32, [ 0 x i32 ] }** %a_slot2055
  %bop2083 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2079, %_lhs2082
  br i1 %bop2083, label %__then777, label %__else776

__fresh792:
  br label %__then777

__then777:
  %_lhs2084 = load i32* %k2058
  %index_ptr2085 = getelementptr { i32, [ 0 x i32 ] }** %c2065, i32 %_lhs2084
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2084 )
  %_lhs2086 = load i32* %i2056
  %index_ptr2087 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2055, i32 %_lhs2086
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2086 )
  %_lhs2088 = load { i32, [ 0 x i32 ] }** %a_slot2055
  store { i32, [ 0 x i32 ] }* %_lhs2088, { i32, [ 0 x i32 ] }** %c2065
  %_lhs2089 = load i32* %k2058
  %bop2090 = add i32 %_lhs2089, 1
  store i32 %bop2090, i32* %k2058
  %_lhs2091 = load i32* %i2056
  %bop2092 = add i32 %_lhs2091, 1
  store i32 %bop2092, i32* %i2056
  br label %__merge775

__fresh793:
  br label %__else776

__else776:
  %_lhs2093 = load i32* %k2058
  %index_ptr2094 = getelementptr { i32, [ 0 x i32 ] }** %c2065, i32 %_lhs2093
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2093 )
  %_lhs2095 = load i32* %j2057
  %index_ptr2096 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2055, i32 %_lhs2095
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2095 )
  %_lhs2097 = load { i32, [ 0 x i32 ] }** %a_slot2055
  store { i32, [ 0 x i32 ] }* %_lhs2097, { i32, [ 0 x i32 ] }** %c2065
  %_lhs2098 = load i32* %k2058
  %bop2099 = add i32 %_lhs2098, 1
  store i32 %bop2099, i32* %k2058
  %_lhs2100 = load i32* %j2057
  %bop2101 = add i32 %_lhs2100, 1
  store i32 %bop2101, i32* %j2057
  br label %__merge775

__merge775:
  br label %__cond774

__fresh794:
  br label %__post772

__post772:
  br label %__cond780

__cond780:
  %_lhs2102 = load i32* %i2056
  %_lhs2103 = load i32* %mid_slot2049
  %bop2104 = icmp sle i32 %_lhs2102, %_lhs2103
  br i1 %bop2104, label %__body779, label %__post778

__fresh795:
  br label %__body779

__body779:
  %_lhs2105 = load i32* %k2058
  %index_ptr2106 = getelementptr { i32, [ 0 x i32 ] }** %c2065, i32 %_lhs2105
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2105 )
  %_lhs2107 = load i32* %i2056
  %index_ptr2108 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2055, i32 %_lhs2107
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2107 )
  %_lhs2109 = load { i32, [ 0 x i32 ] }** %a_slot2055
  store { i32, [ 0 x i32 ] }* %_lhs2109, { i32, [ 0 x i32 ] }** %c2065
  %_lhs2110 = load i32* %k2058
  %bop2111 = add i32 %_lhs2110, 1
  store i32 %bop2111, i32* %k2058
  %_lhs2112 = load i32* %i2056
  %bop2113 = add i32 %_lhs2112, 1
  store i32 %bop2113, i32* %i2056
  br label %__cond780

__fresh796:
  br label %__post778

__post778:
  br label %__cond783

__cond783:
  %_lhs2114 = load i32* %j2057
  %_lhs2115 = load i32* %high_slot2051
  %bop2116 = icmp sle i32 %_lhs2114, %_lhs2115
  br i1 %bop2116, label %__body782, label %__post781

__fresh797:
  br label %__body782

__body782:
  %_lhs2117 = load i32* %k2058
  %index_ptr2118 = getelementptr { i32, [ 0 x i32 ] }** %c2065, i32 %_lhs2117
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2117 )
  %_lhs2119 = load i32* %j2057
  %index_ptr2120 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2055, i32 %_lhs2119
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2119 )
  %_lhs2121 = load { i32, [ 0 x i32 ] }** %a_slot2055
  store { i32, [ 0 x i32 ] }* %_lhs2121, { i32, [ 0 x i32 ] }** %c2065
  %_lhs2122 = load i32* %k2058
  %bop2123 = add i32 %_lhs2122, 1
  store i32 %bop2123, i32* %k2058
  %_lhs2124 = load i32* %j2057
  %bop2125 = add i32 %_lhs2124, 1
  store i32 %bop2125, i32* %j2057
  br label %__cond783

__fresh798:
  br label %__post781

__post781:
  %_lhs2126 = load i32* %low_slot2053
  store i32 %_lhs2126, i32* %i2056
  br label %__cond786

__cond786:
  %_lhs2127 = load i32* %i2056
  %_lhs2128 = load i32* %k2058
  %bop2129 = icmp slt i32 %_lhs2127, %_lhs2128
  br i1 %bop2129, label %__body785, label %__post784

__fresh799:
  br label %__body785

__body785:
  %_lhs2130 = load i32* %i2056
  %index_ptr2131 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2055, i32 %_lhs2130
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2130 )
  %_lhs2132 = load i32* %i2056
  %index_ptr2133 = getelementptr { i32, [ 0 x i32 ] }** %c2065, i32 %_lhs2132
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2132 )
  %_lhs2134 = load { i32, [ 0 x i32 ] }** %c2065
  store { i32, [ 0 x i32 ] }* %_lhs2134, { i32, [ 0 x i32 ] }** %a_slot2055
  %_lhs2135 = load i32* %i2056
  %bop2136 = add i32 %_lhs2135, 1
  store i32 %bop2136, i32* %i2056
  br label %__cond786

__fresh800:
  br label %__post784

__post784:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2027, i32 %low2025, i32 %high2023){

__fresh766:
  %a_slot2028 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2027, { i32, [ 0 x i32 ] }** %a_slot2028
  %low_slot2026 = alloca i32
  store i32 %low2025, i32* %low_slot2026
  %high_slot2024 = alloca i32
  store i32 %high2023, i32* %high_slot2024
  %mid2029 = alloca i32
  store i32 0, i32* %mid2029
  %_lhs2030 = load i32* %low_slot2026
  %_lhs2031 = load i32* %high_slot2024
  %bop2032 = icmp slt i32 %_lhs2030, %_lhs2031
  br i1 %bop2032, label %__then765, label %__else764

__fresh767:
  br label %__then765

__then765:
  %_lhs2033 = load i32* %low_slot2026
  %_lhs2034 = load i32* %high_slot2024
  %bop2035 = add i32 %_lhs2033, %_lhs2034
  %bop2036 = ashr i32 %bop2035, 1
  store i32 %bop2036, i32* %mid2029
  %_lhs2039 = load i32* %mid2029
  %_lhs2038 = load i32* %low_slot2026
  %_lhs2037 = load { i32, [ 0 x i32 ] }** %a_slot2028
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2037, i32 %_lhs2038, i32 %_lhs2039 )
  %_lhs2043 = load i32* %high_slot2024
  %_lhs2041 = load i32* %mid2029
  %bop2042 = add i32 %_lhs2041, 1
  %_lhs2040 = load { i32, [ 0 x i32 ] }** %a_slot2028
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2040, i32 %bop2042, i32 %_lhs2043 )
  %_lhs2047 = load i32* %mid2029
  %_lhs2046 = load i32* %high_slot2024
  %_lhs2045 = load i32* %low_slot2026
  %_lhs2044 = load { i32, [ 0 x i32 ] }** %a_slot2028
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2044, i32 %_lhs2045, i32 %_lhs2046, i32 %_lhs2047 )
  br label %__merge763

__fresh768:
  br label %__else764

__else764:
  br label %__merge763

__merge763:
  ret void
}


define i32 @program (i32 %argc1995, { i32, [ 0 x i8* ] }* %argv1993){

__fresh762:
  %argc_slot1996 = alloca i32
  store i32 %argc1995, i32* %argc_slot1996
  %argv_slot1994 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1993, { i32, [ 0 x i8* ] }** %argv_slot1994
  %i1997 = alloca i32
  store i32 0, i32* %i1997
  %array_ptr1998 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1999 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1998 to { i32, [ 0 x i32 ] }* 
  %index_ptr2000 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2000
  %index_ptr2001 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2001
  %index_ptr2002 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2002
  %index_ptr2003 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2003
  %index_ptr2004 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2004
  %index_ptr2005 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2005
  %index_ptr2006 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2006
  %index_ptr2007 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2007
  %index_ptr2008 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2008
  %index_ptr2009 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2009
  %a2010 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1999, { i32, [ 0 x i32 ] }** %a2010
  %_lhs2011 = load { i32, [ 0 x i32 ] }** %a2010
  %ret2012 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2011 )
  call void @print_string( i8* %ret2012 )
  %_lhs2013 = load { i32, [ 0 x i32 ] }** %a2010
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2013, i32 0, i32 9 )
  %strval2015 = load i8** @_oat_string2014
  call void @print_string( i8* %strval2015 )
  %_lhs2016 = load { i32, [ 0 x i32 ] }** %a2010
  %ret2017 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2016 )
  call void @print_string( i8* %ret2017 )
  %strval2019 = load i8** @_oat_string2018
  call void @print_string( i8* %strval2019 )
  %_lhs2020 = load i32* %i1997
  ret i32 %_lhs2020
}


