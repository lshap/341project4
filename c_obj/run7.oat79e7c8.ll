declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2152 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2152.init
define void @oat_init (){

__fresh398:
  call void @arr2152.init(  )
  ret void
}


define i32 @program (i32 %argc2155, { i32, [ 0 x i8* ] }* %argv2153){

__fresh397:
  %argc_slot2156 = alloca i32
  store i32 %argc2155, i32* %argc_slot2156
  %argv_slot2154 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2153, { i32, [ 0 x i8* ] }** %argv_slot2154
  %index_ptr2158 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2152, i32 0
  %index_ptr2157 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2152, i32 3
  %_lhs2159 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2152
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2159
}


define void @arr2152.init (){

__fresh396:
  %array_ptr2140 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2141 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2140 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2142 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2143 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2142 to { i32, [ 0 x i32 ] }* 
  %index_ptr2144 = getelementptr { i32, [ 0 x i32 ] }* %array2143, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2144
  %index_ptr2145 = getelementptr { i32, [ 0 x i32 ] }* %array2143, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2145
  %index_ptr2146 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2141, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2143, { i32, [ 0 x i32 ] }** %index_ptr2146
  %array_ptr2147 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2148 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2147 to { i32, [ 0 x i32 ] }* 
  %index_ptr2149 = getelementptr { i32, [ 0 x i32 ] }* %array2148, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2149
  %index_ptr2150 = getelementptr { i32, [ 0 x i32 ] }* %array2148, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2150
  %index_ptr2151 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2141, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2148, { i32, [ 0 x i32 ] }** %index_ptr2151
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2141, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2152
  ret void
}


