declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh400:
  ret void
}


define i32 @program (i32 %argc2353, { i32, [ 0 x i8* ] }* %argv2351){

__fresh399:
  %argc_slot2354 = alloca i32
  store i32 %argc2353, i32* %argc_slot2354
  %argv_slot2352 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2351, { i32, [ 0 x i8* ] }** %argv_slot2352
  %array_ptr2355 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2356 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2355 to { i32, [ 0 x i32 ] }* 
  %index_ptr2357 = getelementptr { i32, [ 0 x i32 ] }* %array2356, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2357
  %index_ptr2358 = getelementptr { i32, [ 0 x i32 ] }* %array2356, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2358
  %a2359 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2356, { i32, [ 0 x i32 ] }** %a2359
  %unop2360 = sub i32 0, 1
  %index_ptr2361 = getelementptr { i32, [ 0 x i32 ] }** %a2359, i32 %unop2360
  call void @oat_array_bounds_check( i32 0, i32 %unop2360 )
  %_lhs2363 = load { i32, [ 0 x i32 ] }** %a2359
  ret { i32, [ 0 x i32 ] }* %_lhs2363
}


