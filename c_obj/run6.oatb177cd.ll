declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2132 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2132.init
define void @oat_init (){

__fresh395:
  call void @arr2132.init(  )
  ret void
}


define i32 @program (i32 %argc2135, { i32, [ 0 x i8* ] }* %argv2133){

__fresh394:
  %argc_slot2136 = alloca i32
  store i32 %argc2135, i32* %argc_slot2136
  %argv_slot2134 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2133, { i32, [ 0 x i8* ] }** %argv_slot2134
  %index_ptr2137 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2132, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2138 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2132, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2139 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2132
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2139
}


define void @arr2132.init (){

__fresh393:
  %array_ptr2120 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2121 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2120 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2122 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2123 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2122 to { i32, [ 0 x i32 ] }* 
  %index_ptr2124 = getelementptr { i32, [ 0 x i32 ] }* %array2123, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2124
  %index_ptr2125 = getelementptr { i32, [ 0 x i32 ] }* %array2123, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2125
  %index_ptr2126 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2121, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2123, { i32, [ 0 x i32 ] }** %index_ptr2126
  %array_ptr2127 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2128 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2127 to { i32, [ 0 x i32 ] }* 
  %index_ptr2129 = getelementptr { i32, [ 0 x i32 ] }* %array2128, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2129
  %index_ptr2130 = getelementptr { i32, [ 0 x i32 ] }* %array2128, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2130
  %index_ptr2131 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2121, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2128, { i32, [ 0 x i32 ] }** %index_ptr2131
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2121, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2132
  ret void
}


