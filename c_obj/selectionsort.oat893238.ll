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
