declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh343:
  ret void
}


define i32 @program (i32 %argc2062, { i32, [ 0 x i8* ] }* %argv2060){

__fresh340:
  %argc_slot2063 = alloca i32
  store i32 %argc2062, i32* %argc_slot2063
  %argv_slot2061 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2060, { i32, [ 0 x i8* ] }** %argv_slot2061
  %array_ptr2064 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2065 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2064 to { i32, [ 0 x i32 ] }* 
  %index_ptr2066 = getelementptr { i32, [ 0 x i32 ] }* %array2065, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2066
  %index_ptr2067 = getelementptr { i32, [ 0 x i32 ] }* %array2065, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2067
  %index_ptr2068 = getelementptr { i32, [ 0 x i32 ] }* %array2065, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2068
  %index_ptr2069 = getelementptr { i32, [ 0 x i32 ] }* %array2065, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2069
  %index_ptr2070 = getelementptr { i32, [ 0 x i32 ] }* %array2065, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2070
  %index_ptr2071 = getelementptr { i32, [ 0 x i32 ] }* %array2065, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2071
  %index_ptr2072 = getelementptr { i32, [ 0 x i32 ] }* %array2065, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2072
  %index_ptr2073 = getelementptr { i32, [ 0 x i32 ] }* %array2065, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2073
  %ar2074 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2065, { i32, [ 0 x i32 ] }** %ar2074
  %_lhs2075 = load { i32, [ 0 x i32 ] }** %ar2074
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2075, i32 8 )
  %i2076 = alloca i32
  store i32 0, i32* %i2076
  br label %__cond339

__cond339:
  %_lhs2077 = load i32* %i2076
  %bop2078 = icmp slt i32 %_lhs2077, 8
  br i1 %bop2078, label %__body338, label %__post337

__fresh341:
  br label %__body338

__body338:
  %_lhs2079 = load i32* %i2076
  %index_ptr2080 = getelementptr { i32, [ 0 x i32 ] }** %ar2074, i32 %_lhs2079
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2079 )
  %_lhs2082 = load { i32, [ 0 x i32 ] }** %ar2074
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2082 )
  %_lhs2083 = load i32* %i2076
  %bop2084 = add i32 %_lhs2083, 1
  store i32 %bop2084, i32* %i2076
  br label %__cond339

__fresh342:
  br label %__post337

__post337:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2031, i32 %s2029){

__fresh334:
  %a_slot2032 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2031, { i32, [ 0 x i32 ] }** %a_slot2032
  %s_slot2030 = alloca i32
  store i32 %s2029, i32* %s_slot2030
  %t2033 = alloca i32
  store i32 0, i32* %t2033
  %mi2034 = alloca i32
  store i32 0, i32* %mi2034
  %i2035 = alloca i32
  store i32 0, i32* %i2035
  br label %__cond333

__cond333:
  %_lhs2036 = load i32* %i2035
  %_lhs2037 = load i32* %s_slot2030
  %bop2038 = icmp slt i32 %_lhs2036, %_lhs2037
  br i1 %bop2038, label %__body332, label %__post331

__fresh335:
  br label %__body332

__body332:
  %_lhs2041 = load i32* %s_slot2030
  %_lhs2040 = load i32* %i2035
  %_lhs2039 = load { i32, [ 0 x i32 ] }** %a_slot2032
  %ret2042 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2039, i32 %_lhs2040, i32 %_lhs2041 )
  store i32 %ret2042, i32* %mi2034
  %_lhs2043 = load i32* %i2035
  %index_ptr2044 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2032, i32 %_lhs2043
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2043 )
  %_lhs2046 = load { i32, [ 0 x i32 ] }** %a_slot2032
  store { i32, [ 0 x i32 ] }* %_lhs2046, i32* %t2033
  %_lhs2047 = load i32* %i2035
  %index_ptr2048 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2032, i32 %_lhs2047
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2047 )
  %_lhs2050 = load i32* %mi2034
  %index_ptr2051 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2032, i32 %_lhs2050
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2050 )
  %_lhs2053 = load { i32, [ 0 x i32 ] }** %a_slot2032
  store { i32, [ 0 x i32 ] }* %_lhs2053, { i32, [ 0 x i32 ] }** %a_slot2032
  %_lhs2054 = load i32* %mi2034
  %index_ptr2055 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2032, i32 %_lhs2054
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2054 )
  %_lhs2057 = load i32* %t2033
  store i32 %_lhs2057, { i32, [ 0 x i32 ] }** %a_slot2032
  %_lhs2058 = load i32* %i2035
  %bop2059 = add i32 %_lhs2058, 1
  store i32 %bop2059, i32* %i2035
  br label %__cond333

__fresh336:
  br label %__post331

__post331:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2001, i32 %s1999, i32 %b1997){

__fresh326:
  %a_slot2002 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2001, { i32, [ 0 x i32 ] }** %a_slot2002
  %s_slot2000 = alloca i32
  store i32 %s1999, i32* %s_slot2000
  %b_slot1998 = alloca i32
  store i32 %b1997, i32* %b_slot1998
  %_lhs2003 = load i32* %s_slot2000
  %i2004 = alloca i32
  store i32 %_lhs2003, i32* %i2004
  %_lhs2005 = load i32* %s_slot2000
  %index_ptr2006 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2002, i32 %_lhs2005
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2005 )
  %_lhs2008 = load { i32, [ 0 x i32 ] }** %a_slot2002
  %min2009 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2008, i32* %min2009
  %_lhs2010 = load i32* %s_slot2000
  %mi2011 = alloca i32
  store i32 %_lhs2010, i32* %mi2011
  br label %__cond322

__cond322:
  %_lhs2012 = load i32* %i2004
  %_lhs2013 = load i32* %b_slot1998
  %bop2014 = icmp slt i32 %_lhs2012, %_lhs2013
  br i1 %bop2014, label %__body321, label %__post320

__fresh327:
  br label %__body321

__body321:
  %_lhs2015 = load i32* %i2004
  %index_ptr2016 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2002, i32 %_lhs2015
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2015 )
  %_lhs2018 = load { i32, [ 0 x i32 ] }** %a_slot2002
  %_lhs2019 = load i32* %min2009
  %bop2020 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2018, %_lhs2019
  br i1 %bop2020, label %__then325, label %__else324

__fresh328:
  br label %__then325

__then325:
  %_lhs2021 = load i32* %i2004
  %index_ptr2022 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2002, i32 %_lhs2021
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2021 )
  %_lhs2024 = load { i32, [ 0 x i32 ] }** %a_slot2002
  store { i32, [ 0 x i32 ] }* %_lhs2024, i32* %min2009
  %_lhs2025 = load i32* %i2004
  store i32 %_lhs2025, i32* %mi2011
  br label %__merge323

__fresh329:
  br label %__else324

__else324:
  br label %__merge323

__merge323:
  %_lhs2026 = load i32* %i2004
  %bop2027 = add i32 %_lhs2026, 1
  store i32 %bop2027, i32* %i2004
  br label %__cond322

__fresh330:
  br label %__post320

__post320:
  %_lhs2028 = load i32* %mi2011
  ret i32 %_lhs2028
}


