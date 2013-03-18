declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2014.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2014 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2014.str., i32 0, i32 0), align 4
@_oat_string2010.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2010 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2010.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh596:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2050, i32 %low2048, i32 %high2046, i32 %mid2044){

__fresh582:
  %a_slot2051 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2050, { i32, [ 0 x i32 ] }** %a_slot2051
  %low_slot2049 = alloca i32
  store i32 %low2048, i32* %low_slot2049
  %high_slot2047 = alloca i32
  store i32 %high2046, i32* %high_slot2047
  %mid_slot2045 = alloca i32
  store i32 %mid2044, i32* %mid_slot2045
  %i2052 = alloca i32
  store i32 0, i32* %i2052
  %j2053 = alloca i32
  store i32 0, i32* %j2053
  %k2054 = alloca i32
  store i32 0, i32* %k2054
  %array_ptr2055 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2056 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2055 to { i32, [ 0 x i32 ] }* 
  %index_ptr2057 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 0
  store i32 50, i32* %index_ptr2057
  store i32 0, i32* %index_ptr2058
  br label %__compare564

__fresh583:
  br label %__compare564

__compare564:
  %comparison_result2059 = icmp slt i32* %index_ptr2058, 50
  br i1 %comparison_result2059, label %__body565, label %__end566

__fresh584:
  br label %__body565

__body565:
  store i32* %index_ptr2058, i32 %i2060
  %index_ptr2058 = add i32* %index_ptr2058, 1
  br label %__compare564

__fresh585:
  br label %__end566

__end566:
  %c2061 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array2056, { i32, [ 0 x i32 ] }** %c2061
  %_lhs2062 = load i32* %low_slot2049
  store i32 %_lhs2062, i32* %i2052
  %_lhs2063 = load i32* %mid_slot2045
  %bop2064 = add i32 %_lhs2063, 1
  store i32 %bop2064, i32* %j2053
  %_lhs2065 = load i32* %low_slot2049
  store i32 %_lhs2065, i32* %k2054
  br label %__cond569

__cond569:
  %_lhs2066 = load i32* %i2052
  %_lhs2067 = load i32* %mid_slot2045
  %bop2068 = icmp sle i32 %_lhs2066, %_lhs2067
  %_lhs2069 = load i32* %j2053
  %_lhs2070 = load i32* %high_slot2047
  %bop2071 = icmp sle i32 %_lhs2069, %_lhs2070
  %bop2072 = and i1 %bop2068, %bop2071
  br i1 %bop2072, label %__body568, label %__post567

__fresh586:
  br label %__body568

__body568:
  %_lhs2073 = load i32* %i2052
  %index_ptr2074 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2051, i32 %_lhs2073
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2073 )
  %_lhs2075 = load { i32, [ 0 x i32 ] }** %a_slot2051
  %_lhs2076 = load i32* %j2053
  %index_ptr2077 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2051, i32 %_lhs2076
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2076 )
  %_lhs2078 = load { i32, [ 0 x i32 ] }** %a_slot2051
  %bop2079 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2075, %_lhs2078
  br i1 %bop2079, label %__then572, label %__else571

__fresh587:
  br label %__then572

__then572:
  %_lhs2080 = load i32* %k2054
  %index_ptr2081 = getelementptr { i32, [ 0 x i32 ] }** %c2061, i32 %_lhs2080
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2080 )
  %_lhs2082 = load i32* %i2052
  %index_ptr2083 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2051, i32 %_lhs2082
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2082 )
  %_lhs2084 = load { i32, [ 0 x i32 ] }** %a_slot2051
  store { i32, [ 0 x i32 ] }* %_lhs2084, { i32, [ 0 x i32 ] }** %c2061
  %_lhs2085 = load i32* %k2054
  %bop2086 = add i32 %_lhs2085, 1
  store i32 %bop2086, i32* %k2054
  %_lhs2087 = load i32* %i2052
  %bop2088 = add i32 %_lhs2087, 1
  store i32 %bop2088, i32* %i2052
  br label %__merge570

__fresh588:
  br label %__else571

__else571:
  %_lhs2089 = load i32* %k2054
  %index_ptr2090 = getelementptr { i32, [ 0 x i32 ] }** %c2061, i32 %_lhs2089
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2089 )
  %_lhs2091 = load i32* %j2053
  %index_ptr2092 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2051, i32 %_lhs2091
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2091 )
  %_lhs2093 = load { i32, [ 0 x i32 ] }** %a_slot2051
  store { i32, [ 0 x i32 ] }* %_lhs2093, { i32, [ 0 x i32 ] }** %c2061
  %_lhs2094 = load i32* %k2054
  %bop2095 = add i32 %_lhs2094, 1
  store i32 %bop2095, i32* %k2054
  %_lhs2096 = load i32* %j2053
  %bop2097 = add i32 %_lhs2096, 1
  store i32 %bop2097, i32* %j2053
  br label %__merge570

__merge570:
  br label %__cond569

__fresh589:
  br label %__post567

__post567:
  br label %__cond575

__cond575:
  %_lhs2098 = load i32* %i2052
  %_lhs2099 = load i32* %mid_slot2045
  %bop2100 = icmp sle i32 %_lhs2098, %_lhs2099
  br i1 %bop2100, label %__body574, label %__post573

__fresh590:
  br label %__body574

__body574:
  %_lhs2101 = load i32* %k2054
  %index_ptr2102 = getelementptr { i32, [ 0 x i32 ] }** %c2061, i32 %_lhs2101
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2101 )
  %_lhs2103 = load i32* %i2052
  %index_ptr2104 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2051, i32 %_lhs2103
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2103 )
  %_lhs2105 = load { i32, [ 0 x i32 ] }** %a_slot2051
  store { i32, [ 0 x i32 ] }* %_lhs2105, { i32, [ 0 x i32 ] }** %c2061
  %_lhs2106 = load i32* %k2054
  %bop2107 = add i32 %_lhs2106, 1
  store i32 %bop2107, i32* %k2054
  %_lhs2108 = load i32* %i2052
  %bop2109 = add i32 %_lhs2108, 1
  store i32 %bop2109, i32* %i2052
  br label %__cond575

__fresh591:
  br label %__post573

__post573:
  br label %__cond578

__cond578:
  %_lhs2110 = load i32* %j2053
  %_lhs2111 = load i32* %high_slot2047
  %bop2112 = icmp sle i32 %_lhs2110, %_lhs2111
  br i1 %bop2112, label %__body577, label %__post576

__fresh592:
  br label %__body577

__body577:
  %_lhs2113 = load i32* %k2054
  %index_ptr2114 = getelementptr { i32, [ 0 x i32 ] }** %c2061, i32 %_lhs2113
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2113 )
  %_lhs2115 = load i32* %j2053
  %index_ptr2116 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2051, i32 %_lhs2115
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2115 )
  %_lhs2117 = load { i32, [ 0 x i32 ] }** %a_slot2051
  store { i32, [ 0 x i32 ] }* %_lhs2117, { i32, [ 0 x i32 ] }** %c2061
  %_lhs2118 = load i32* %k2054
  %bop2119 = add i32 %_lhs2118, 1
  store i32 %bop2119, i32* %k2054
  %_lhs2120 = load i32* %j2053
  %bop2121 = add i32 %_lhs2120, 1
  store i32 %bop2121, i32* %j2053
  br label %__cond578

__fresh593:
  br label %__post576

__post576:
  %_lhs2122 = load i32* %low_slot2049
  store i32 %_lhs2122, i32* %i2052
  br label %__cond581

__cond581:
  %_lhs2123 = load i32* %i2052
  %_lhs2124 = load i32* %k2054
  %bop2125 = icmp slt i32 %_lhs2123, %_lhs2124
  br i1 %bop2125, label %__body580, label %__post579

__fresh594:
  br label %__body580

__body580:
  %_lhs2126 = load i32* %i2052
  %index_ptr2127 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2051, i32 %_lhs2126
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2126 )
  %_lhs2128 = load i32* %i2052
  %index_ptr2129 = getelementptr { i32, [ 0 x i32 ] }** %c2061, i32 %_lhs2128
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2128 )
  %_lhs2130 = load { i32, [ 0 x i32 ] }** %c2061
  store { i32, [ 0 x i32 ] }* %_lhs2130, { i32, [ 0 x i32 ] }** %a_slot2051
  %_lhs2131 = load i32* %i2052
  %bop2132 = add i32 %_lhs2131, 1
  store i32 %bop2132, i32* %i2052
  br label %__cond581

__fresh595:
  br label %__post579

__post579:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2023, i32 %low2021, i32 %high2019){

__fresh561:
  %a_slot2024 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2023, { i32, [ 0 x i32 ] }** %a_slot2024
  %low_slot2022 = alloca i32
  store i32 %low2021, i32* %low_slot2022
  %high_slot2020 = alloca i32
  store i32 %high2019, i32* %high_slot2020
  %mid2025 = alloca i32
  store i32 0, i32* %mid2025
  %_lhs2026 = load i32* %low_slot2022
  %_lhs2027 = load i32* %high_slot2020
  %bop2028 = icmp slt i32 %_lhs2026, %_lhs2027
  br i1 %bop2028, label %__then560, label %__else559

__fresh562:
  br label %__then560

__then560:
  %_lhs2029 = load i32* %low_slot2022
  %_lhs2030 = load i32* %high_slot2020
  %bop2031 = add i32 %_lhs2029, %_lhs2030
  %bop2032 = ashr i32 %bop2031, 1
  store i32 %bop2032, i32* %mid2025
  %_lhs2035 = load i32* %mid2025
  %_lhs2034 = load i32* %low_slot2022
  %_lhs2033 = load { i32, [ 0 x i32 ] }** %a_slot2024
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2033, i32 %_lhs2034, i32 %_lhs2035 )
  %_lhs2039 = load i32* %high_slot2020
  %_lhs2037 = load i32* %mid2025
  %bop2038 = add i32 %_lhs2037, 1
  %_lhs2036 = load { i32, [ 0 x i32 ] }** %a_slot2024
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2036, i32 %bop2038, i32 %_lhs2039 )
  %_lhs2043 = load i32* %mid2025
  %_lhs2042 = load i32* %high_slot2020
  %_lhs2041 = load i32* %low_slot2022
  %_lhs2040 = load { i32, [ 0 x i32 ] }** %a_slot2024
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2040, i32 %_lhs2041, i32 %_lhs2042, i32 %_lhs2043 )
  br label %__merge558

__fresh563:
  br label %__else559

__else559:
  br label %__merge558

__merge558:
  ret void
}


define i32 @program (i32 %argc1991, { i32, [ 0 x i8* ] }* %argv1989){

__fresh557:
  %argc_slot1992 = alloca i32
  store i32 %argc1991, i32* %argc_slot1992
  %argv_slot1990 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1989, { i32, [ 0 x i8* ] }** %argv_slot1990
  %i1993 = alloca i32
  store i32 0, i32* %i1993
  %array_ptr1994 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1995 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1994 to { i32, [ 0 x i32 ] }* 
  %index_ptr1996 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1996
  %index_ptr1997 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1997
  %index_ptr1998 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1998
  %index_ptr1999 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1999
  %index_ptr2000 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2000
  %index_ptr2001 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2001
  %index_ptr2002 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2002
  %index_ptr2003 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2003
  %index_ptr2004 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2004
  %index_ptr2005 = getelementptr { i32, [ 0 x i32 ] }* %array1995, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2005
  %a2006 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1995, { i32, [ 0 x i32 ] }** %a2006
  %_lhs2007 = load { i32, [ 0 x i32 ] }** %a2006
  %ret2008 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2007 )
  call void @print_string( i8* %ret2008 )
  %_lhs2009 = load { i32, [ 0 x i32 ] }** %a2006
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2009, i32 0, i32 9 )
  %strval2011 = load i8** @_oat_string2010
  call void @print_string( i8* %strval2011 )
  %_lhs2012 = load { i32, [ 0 x i32 ] }** %a2006
  %ret2013 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2012 )
  call void @print_string( i8* %ret2013 )
  %strval2015 = load i8** @_oat_string2014
  call void @print_string( i8* %strval2015 )
  %_lhs2016 = load i32* %i1993
  ret i32 %_lhs2016
}


