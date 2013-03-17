declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11392 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11392.init
define void @oat_init (){

__fresh193:
  call void @arr11392.init(  )
  ret void
}


define i32 @program (i32 %argc1395, { i32, [ 0 x i8* ] }* %argv1393){

__fresh190:
  %argc_slot1396 = alloca i32
  store i32 %argc1395, i32* %argc_slot1396
  %argv_slot1394 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1393, { i32, [ 0 x i8* ] }** %argv_slot1394
  %_lhs1397 = load { i32, [ 0 x i32 ] }** @arr11392
  %ret1398 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1397 )
  %str1399 = alloca i8*
  store i8* %ret1398, i8** %str1399
  %_lhs1400 = load i8** %str1399
  %ret1401 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1400 )
  %arr21402 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1401, { i32, [ 0 x i32 ] }** %arr21402
  %s1403 = alloca i32
  store i32 0, i32* %s1403
  %i1404 = alloca i32
  store i32 0, i32* %i1404
  br label %__cond189

__cond189:
  %_lhs1405 = load i32* %i1404
  %bop1406 = icmp slt i32 %_lhs1405, 5
  br i1 %bop1406, label %__body188, label %__post187

__fresh191:
  br label %__body188

__body188:
  %_lhs1407 = load i32* %s1403
  %_lhs1408 = load i32* %i1404
  %index_ptr1409 = getelementptr { i32, [ 0 x i32 ] }** %arr21402, i32 %_lhs1408
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1408 )
  %_lhs1411 = load { i32, [ 0 x i32 ] }** %arr21402
  %bop1412 = add i32 %_lhs1407, %_lhs1411
  store i32 %bop1412, i32* %s1403
  %_lhs1413 = load i32* %i1404
  %bop1414 = add i32 %_lhs1413, 1
  store i32 %bop1414, i32* %i1404
  br label %__cond189

__fresh192:
  br label %__post187

__post187:
  %_lhs1415 = load i32* %s1403
  ret i32 %_lhs1415
}


define void @arr11392.init (){

__fresh186:
  %array_ptr1385 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1386 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1385 to { i32, [ 0 x i32 ] }* 
  %index_ptr1387 = getelementptr { i32, [ 0 x i32 ] }* %array1386, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1387
  %index_ptr1388 = getelementptr { i32, [ 0 x i32 ] }* %array1386, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1388
  %index_ptr1389 = getelementptr { i32, [ 0 x i32 ] }* %array1386, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1389
  %index_ptr1390 = getelementptr { i32, [ 0 x i32 ] }* %array1386, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1390
  %index_ptr1391 = getelementptr { i32, [ 0 x i32 ] }* %array1386, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1391
  store { i32, [ 0 x i32 ] }* %array1386, { i32, [ 0 x i32 ] }** @arr11392
  ret void
}


