declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1374 = global i32 1, align 4
define void @oat_init (){

__fresh338:
  ret void
}


define i32 @program (i32 %argc1380, { i32, [ 0 x i8* ] }* %argv1378){

__fresh334:
  %argc_slot1381 = alloca i32
  store i32 %argc1380, i32* %argc_slot1381
  %argv_slot1379 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1378, { i32, [ 0 x i8* ] }** %argv_slot1379
  %ret1382 = call i32 @f (  )
  %array_ptr1383 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1382 )
  %array1384 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1383 to { i32, [ 0 x i32 ] }* 
  %index_ptr1385 = getelementptr { i32, [ 0 x i32 ] }* %array1384, i32 0, i32 1, i32 0
  store i32 %ret1382, i32* %index_ptr1385
  store i32 0, i32* %index_ptr1386
  br label %__compare331

__fresh335:
  br label %__compare331

__compare331:
  %comparison_result1387 = icmp slt i32* %index_ptr1386, %ret1382
  br i1 %comparison_result1387, label %__body332, label %__end333

__fresh336:
  br label %__body332

__body332:
  store i32* %index_ptr1386, i32 %i1388
  %ret1389 = call i32 @f (  )
  %index_ptr1386 = add i32* %index_ptr1386, 1
  br label %__compare331

__fresh337:
  br label %__end333

__end333:
  %b1390 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array1384, { i32, [ 0 x i32 ] }** %b1390
  %_lhs1391 = load i32* @a1374
  %index_ptr1392 = getelementptr { i32, [ 0 x i32 ] }** %b1390, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1393 = load { i32, [ 0 x i32 ] }** %b1390
  %bop1394 = add i32 %_lhs1391, %_lhs1393
  %index_ptr1395 = getelementptr { i32, [ 0 x i32 ] }** %b1390, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1396 = load { i32, [ 0 x i32 ] }** %b1390
  %bop1397 = add i32 %bop1394, %_lhs1396
  ret i32 %bop1397
}


define i32 @f (){

__fresh330:
  %_lhs1375 = load i32* @a1374
  %bop1376 = add i32 %_lhs1375, 1
  store i32 %bop1376, i32* @a1374
  %_lhs1377 = load i32* @a1374
  ret i32 %_lhs1377
}


