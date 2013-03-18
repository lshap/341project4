declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh340:
  ret void
}


define i32 @program (i32 %argc1400, { i32, [ 0 x i8* ] }* %argv1398){

__fresh339:
  %argc_slot1401 = alloca i32
  store i32 %argc1400, i32* %argc_slot1401
  %argv_slot1399 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1398, { i32, [ 0 x i8* ] }** %argv_slot1399
  %array_ptr1402 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1403 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1402 to { i32, [ 0 x i32 ] }* 
  %index_ptr1404 = getelementptr { i32, [ 0 x i32 ] }* %array1403, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1404
  %index_ptr1405 = getelementptr { i32, [ 0 x i32 ] }* %array1403, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1405
  %index_ptr1406 = getelementptr { i32, [ 0 x i32 ] }* %array1403, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1406
  %arr1407 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1403, { i32, [ 0 x i32 ] }** %arr1407
  %_lhs1408 = load { i32, [ 0 x i32 ] }** %arr1407
  %len_ptr1409 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1408, i32 0, i32 0
  %len1410 = load i32* %len_ptr1409
  %len1411 = alloca i32
  store i32 %len1410, i32* %len1411
  %_lhs1412 = load i32* %len1411
  ret i32 %_lhs1412
}


