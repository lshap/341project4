declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2104.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2104 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2104.str., i32 0, i32 0), align 4
@_oat_string2099.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2099 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2099.str., i32 0, i32 0), align 4
@_oat_string2095.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2095 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2095.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh743:
  ret void
}


define i32 @program (i32 %argc2081, { i32, [ 0 x i8* ] }* %argv2079){

__fresh742:
  %argc_slot2082 = alloca i32
  store i32 %argc2081, i32* %argc_slot2082
  %argv_slot2080 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2079, { i32, [ 0 x i8* ] }** %argv_slot2080
  %array_ptr2083 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2084 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2083 to { i32, [ 0 x i32 ] }* 
  %index_ptr2085 = getelementptr { i32, [ 0 x i32 ] }* %array2084, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2085
  %index_ptr2086 = getelementptr { i32, [ 0 x i32 ] }* %array2084, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2086
  %index_ptr2087 = getelementptr { i32, [ 0 x i32 ] }* %array2084, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2087
  %index_ptr2088 = getelementptr { i32, [ 0 x i32 ] }* %array2084, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2088
  %index_ptr2089 = getelementptr { i32, [ 0 x i32 ] }* %array2084, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2089
  %index_ptr2090 = getelementptr { i32, [ 0 x i32 ] }* %array2084, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2090
  %index_ptr2091 = getelementptr { i32, [ 0 x i32 ] }* %array2084, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2091
  %index_ptr2092 = getelementptr { i32, [ 0 x i32 ] }* %array2084, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2092
  %index_ptr2093 = getelementptr { i32, [ 0 x i32 ] }* %array2084, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2093
  %a2094 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2084, { i32, [ 0 x i32 ] }** %a2094
  %strval2096 = load i8** @_oat_string2095
  call void @print_string( i8* %strval2096 )
  %_lhs2097 = load { i32, [ 0 x i32 ] }** %a2094
  %ret2098 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2097 )
  call void @print_string( i8* %ret2098 )
  %strval2100 = load i8** @_oat_string2099
  call void @print_string( i8* %strval2100 )
  %_lhs2101 = load { i32, [ 0 x i32 ] }** %a2094
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2101, i32 0, i32 8 )
  %_lhs2102 = load { i32, [ 0 x i32 ] }** %a2094
  %ret2103 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2102 )
  call void @print_string( i8* %ret2103 )
  %strval2105 = load i8** @_oat_string2104
  call void @print_string( i8* %strval2105 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a2003, i32 %l2001, i32 %r1999){

__fresh731:
  %a_slot2004 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2003, { i32, [ 0 x i32 ] }** %a_slot2004
  %l_slot2002 = alloca i32
  store i32 %l2001, i32* %l_slot2002
  %r_slot2000 = alloca i32
  store i32 %r1999, i32* %r_slot2000
  %_lhs2005 = load i32* %l_slot2002
  %size_ptr2007 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2007, i32 %_lhs2005 )
  %index_ptr2006 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2005
  %_lhs2008 = load { i32, [ 0 x i32 ] }** %a_slot2004
  %pivot2009 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2008, i32* %pivot2009
  %_lhs2010 = load i32* %l_slot2002
  %i2011 = alloca i32
  store i32 %_lhs2010, i32* %i2011
  %_lhs2012 = load i32* %r_slot2000
  %bop2013 = add i32 %_lhs2012, 1
  %j2014 = alloca i32
  store i32 %bop2013, i32* %j2014
  %t2015 = alloca i32
  store i32 0, i32* %t2015
  %done2016 = alloca i32
  store i32 0, i32* %done2016
  br label %__cond718

__cond718:
  %_lhs2017 = load i32* %done2016
  %bop2018 = icmp eq i32 %_lhs2017, 0
  br i1 %bop2018, label %__body717, label %__post716

__fresh732:
  br label %__body717

__body717:
  %_lhs2019 = load i32* %i2011
  %bop2020 = add i32 %_lhs2019, 1
  store i32 %bop2020, i32* %i2011
  br label %__cond721

__cond721:
  %_lhs2021 = load i32* %i2011
  %size_ptr2023 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2023, i32 %_lhs2021 )
  %index_ptr2022 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2021
  %_lhs2024 = load { i32, [ 0 x i32 ] }** %a_slot2004
  %_lhs2025 = load i32* %pivot2009
  %bop2026 = icmp sle { i32, [ 0 x i32 ] }* %_lhs2024, %_lhs2025
  %_lhs2027 = load i32* %i2011
  %_lhs2028 = load i32* %r_slot2000
  %bop2029 = icmp sle i32 %_lhs2027, %_lhs2028
  %bop2030 = and i1 %bop2026, %bop2029
  br i1 %bop2030, label %__body720, label %__post719

__fresh733:
  br label %__body720

__body720:
  %_lhs2031 = load i32* %i2011
  %bop2032 = add i32 %_lhs2031, 1
  store i32 %bop2032, i32* %i2011
  br label %__cond721

__fresh734:
  br label %__post719

__post719:
  %_lhs2033 = load i32* %j2014
  %bop2034 = sub i32 %_lhs2033, 1
  store i32 %bop2034, i32* %j2014
  br label %__cond724

__cond724:
  %_lhs2035 = load i32* %j2014
  %size_ptr2037 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2037, i32 %_lhs2035 )
  %index_ptr2036 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2035
  %_lhs2038 = load { i32, [ 0 x i32 ] }** %a_slot2004
  %_lhs2039 = load i32* %pivot2009
  %bop2040 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs2038, %_lhs2039
  br i1 %bop2040, label %__body723, label %__post722

__fresh735:
  br label %__body723

__body723:
  %_lhs2041 = load i32* %j2014
  %bop2042 = sub i32 %_lhs2041, 1
  store i32 %bop2042, i32* %j2014
  br label %__cond724

__fresh736:
  br label %__post722

__post722:
  %_lhs2043 = load i32* %i2011
  %_lhs2044 = load i32* %j2014
  %bop2045 = icmp sge i32 %_lhs2043, %_lhs2044
  br i1 %bop2045, label %__then727, label %__else726

__fresh737:
  br label %__then727

__then727:
  store i32 1, i32* %done2016
  br label %__merge725

__fresh738:
  br label %__else726

__else726:
  br label %__merge725

__merge725:
  %_lhs2046 = load i32* %done2016
  %bop2047 = icmp eq i32 %_lhs2046, 0
  br i1 %bop2047, label %__then730, label %__else729

__fresh739:
  br label %__then730

__then730:
  %_lhs2048 = load i32* %i2011
  %size_ptr2050 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2050, i32 %_lhs2048 )
  %index_ptr2049 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2048
  %_lhs2051 = load { i32, [ 0 x i32 ] }** %a_slot2004
  store { i32, [ 0 x i32 ] }* %_lhs2051, i32* %t2015
  %_lhs2052 = load i32* %i2011
  %size_ptr2054 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2054, i32 %_lhs2052 )
  %index_ptr2053 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2052
  %_lhs2055 = load i32* %j2014
  %size_ptr2057 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2057, i32 %_lhs2055 )
  %index_ptr2056 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2055
  %_lhs2058 = load { i32, [ 0 x i32 ] }** %a_slot2004
  store { i32, [ 0 x i32 ] }* %_lhs2058, { i32, [ 0 x i32 ] }** %a_slot2004
  %_lhs2059 = load i32* %j2014
  %size_ptr2061 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2061, i32 %_lhs2059 )
  %index_ptr2060 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2059
  %_lhs2062 = load i32* %t2015
  store i32 %_lhs2062, { i32, [ 0 x i32 ] }** %a_slot2004
  br label %__merge728

__fresh740:
  br label %__else729

__else729:
  br label %__merge728

__merge728:
  br label %__cond718

__fresh741:
  br label %__post716

__post716:
  %_lhs2063 = load i32* %l_slot2002
  %size_ptr2065 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2065, i32 %_lhs2063 )
  %index_ptr2064 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2063
  %_lhs2066 = load { i32, [ 0 x i32 ] }** %a_slot2004
  store { i32, [ 0 x i32 ] }* %_lhs2066, i32* %t2015
  %_lhs2067 = load i32* %l_slot2002
  %size_ptr2069 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2069, i32 %_lhs2067 )
  %index_ptr2068 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2067
  %_lhs2070 = load i32* %j2014
  %size_ptr2072 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2072, i32 %_lhs2070 )
  %index_ptr2071 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2070
  %_lhs2073 = load { i32, [ 0 x i32 ] }** %a_slot2004
  store { i32, [ 0 x i32 ] }* %_lhs2073, { i32, [ 0 x i32 ] }** %a_slot2004
  %_lhs2074 = load i32* %j2014
  %size_ptr2076 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2076, i32 %_lhs2074 )
  %index_ptr2075 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2004, i32 0, i32 1, i32 %_lhs2074
  %_lhs2077 = load i32* %t2015
  store i32 %_lhs2077, { i32, [ 0 x i32 ] }** %a_slot2004
  %_lhs2078 = load i32* %j2014
  ret i32 %_lhs2078
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1981, i32 %l1979, i32 %r1977){

__fresh713:
  %a_slot1982 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1981, { i32, [ 0 x i32 ] }** %a_slot1982
  %l_slot1980 = alloca i32
  store i32 %l1979, i32* %l_slot1980
  %r_slot1978 = alloca i32
  store i32 %r1977, i32* %r_slot1978
  %j1983 = alloca i32
  store i32 0, i32* %j1983
  %_lhs1984 = load i32* %l_slot1980
  %_lhs1985 = load i32* %r_slot1978
  %bop1986 = icmp slt i32 %_lhs1984, %_lhs1985
  br i1 %bop1986, label %__then712, label %__else711

__fresh714:
  br label %__then712

__then712:
  %_lhs1989 = load i32* %r_slot1978
  %_lhs1988 = load i32* %l_slot1980
  %_lhs1987 = load { i32, [ 0 x i32 ] }** %a_slot1982
  %ret1990 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1987, i32 %_lhs1988, i32 %_lhs1989 )
  store i32 %ret1990, i32* %j1983
  %_lhs1993 = load i32* %j1983
  %bop1994 = sub i32 %_lhs1993, 1
  %_lhs1992 = load i32* %l_slot1980
  %_lhs1991 = load { i32, [ 0 x i32 ] }** %a_slot1982
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1991, i32 %_lhs1992, i32 %bop1994 )
  %_lhs1998 = load i32* %r_slot1978
  %_lhs1996 = load i32* %j1983
  %bop1997 = add i32 %_lhs1996, 1
  %_lhs1995 = load { i32, [ 0 x i32 ] }** %a_slot1982
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1995, i32 %bop1997, i32 %_lhs1998 )
  br label %__merge710

__fresh715:
  br label %__else711

__else711:
  br label %__merge710

__merge710:
  ret void
}


