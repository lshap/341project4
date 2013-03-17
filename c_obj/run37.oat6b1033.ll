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


define i32 @program (i32 %argc2366, { i32, [ 0 x i8* ] }* %argv2364){

__fresh401:
  %argc_slot2367 = alloca i32
  store i32 %argc2366, i32* %argc_slot2367
  %argv_slot2365 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2364, { i32, [ 0 x i8* ] }** %argv_slot2365
  %array_ptr2368 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2369 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2368 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2370 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2371 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2370 to { i32, [ 0 x i32 ] }* 
  %index_ptr2372 = getelementptr { i32, [ 0 x i32 ] }* %array2371, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2372
  %index_ptr2373 = getelementptr { i32, [ 0 x i32 ] }* %array2371, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2373
  %index_ptr2374 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2369, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2371, { i32, [ 0 x i32 ] }** %index_ptr2374
  %array_ptr2375 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2376 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2375 to { i32, [ 0 x i32 ] }* 
  %index_ptr2377 = getelementptr { i32, [ 0 x i32 ] }* %array2376, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2377
  %index_ptr2378 = getelementptr { i32, [ 0 x i32 ] }* %array2376, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2378
  %index_ptr2379 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2369, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2376, { i32, [ 0 x i32 ] }** %index_ptr2379
  %a2380 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2369, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2380
  %index_ptr2383 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2380, i32 3
