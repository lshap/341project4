declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1395 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1395.init
define void @oat_init (){

__fresh227:
  call void @a1395.init(  )
  ret void
}


define i32 @program (i32 %argc1398, { i32, [ 0 x i8* ] }* %argv1396){

__fresh226:
  %argc_slot1399 = alloca i32
  store i32 %argc1398, i32* %argc_slot1399
  %argv_slot1397 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1396, { i32, [ 0 x i8* ] }** %argv_slot1397
  %_lhs1400 = load { i32, [ 0 x i32 ] }** @a1395
  %ret1401 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1400 )
  call void @print_string( i8* %ret1401 )
  ret i32 0
}


define void @a1395.init (){

__fresh225:
  %array_ptr1383 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1384 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1383 to { i32, [ 0 x i32 ] }* 
  %index_ptr1385 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1385
  %index_ptr1386 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1386
  %index_ptr1387 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1387
  %index_ptr1388 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1388
  %index_ptr1389 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1389
  %index_ptr1390 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1390
  %index_ptr1391 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1391
  %index_ptr1392 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1392
  %index_ptr1393 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1393
  %index_ptr1394 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1394
  store { i32, [ 0 x i32 ] }* %array1384, { i32, [ 0 x i32 ] }** @a1395
  ret void
}


