declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2336 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2336.init
define void @oat_init (){

__fresh398:
  call void @arr2336.init(  )
  ret void
}


define i32 @program (i32 %argc2339, { i32, [ 0 x i8* ] }* %argv2337){

__fresh397:
  %argc_slot2340 = alloca i32
  store i32 %argc2339, i32* %argc_slot2340
  %argv_slot2338 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2337, { i32, [ 0 x i8* ] }** %argv_slot2338
  %index_ptr2341 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2336, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %index_ptr2343 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2336, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2345 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2336
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2345
}


define void @arr2336.init (){

__fresh396:
  %array_ptr2324 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2325 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2324 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2326 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2327 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2326 to { i32, [ 0 x i32 ] }* 
  %index_ptr2328 = getelementptr { i32, [ 0 x i32 ] }* %array2327, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2328
  %index_ptr2329 = getelementptr { i32, [ 0 x i32 ] }* %array2327, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2329
  %index_ptr2330 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2325, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2327, { i32, [ 0 x i32 ] }** %index_ptr2330
  %array_ptr2331 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2332 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2331 to { i32, [ 0 x i32 ] }* 
  %index_ptr2333 = getelementptr { i32, [ 0 x i32 ] }* %array2332, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2333
  %index_ptr2334 = getelementptr { i32, [ 0 x i32 ] }* %array2332, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2334
  %index_ptr2335 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2325, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2332, { i32, [ 0 x i32 ] }** %index_ptr2335
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2325, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2336
  ret void
}


