declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh402:
  ret void
}


define i32 @program (i32 %argc2179, { i32, [ 0 x i8* ] }* %argv2177){

__fresh401:
  %argc_slot2180 = alloca i32
  store i32 %argc2179, i32* %argc_slot2180
  %argv_slot2178 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2177, { i32, [ 0 x i8* ] }** %argv_slot2178
  %array_ptr2181 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2182 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2181 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2183 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2184 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2183 to { i32, [ 0 x i32 ] }* 
  %index_ptr2185 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2185
  %index_ptr2186 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2186
  %index_ptr2187 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2182, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2184, { i32, [ 0 x i32 ] }** %index_ptr2187
  %array_ptr2188 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2189 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2188 to { i32, [ 0 x i32 ] }* 
  %index_ptr2190 = getelementptr { i32, [ 0 x i32 ] }* %array2189, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2190
  %index_ptr2191 = getelementptr { i32, [ 0 x i32 ] }* %array2189, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2191
  %index_ptr2192 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2182, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2189, { i32, [ 0 x i32 ] }** %index_ptr2192
  %a2193 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2182, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2193
  %index_ptr2194 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2193, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2195 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2193, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2196 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2193
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2196
}


