declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1431 = global i32 1, align 4
define void @oat_init (){

__fresh409:
  ret void
}


define i32 @program (i32 %argc1437, { i32, [ 0 x i8* ] }* %argv1435){

__fresh405:
  %argc_slot1438 = alloca i32
  store i32 %argc1437, i32* %argc_slot1438
  %argv_slot1436 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1435, { i32, [ 0 x i8* ] }** %argv_slot1436
  %ret1439 = call i32 @f (  )
  %array_ptr1440 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1439 )
  %array1441 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1440 to { i32, [ 0 x i32 ] }* 
  %index_ptr1442 = getelementptr { i32, [ 0 x i32 ] }* %array1441, i32 0, i32 1, i32 0
  store i32 %ret1439, i32* %index_ptr1442
  store i32 0, i32* %index_ptr1443
  br label %__compare402

__fresh406:
  br label %__compare402

__compare402:
  %comparison_result1444 = icmp slt i32* %index_ptr1443, %ret1439
  br i1 %comparison_result1444, label %__body403, label %__end404

__fresh407:
  br label %__body403

__body403:
  store i32* %index_ptr1443, i32 %i1445
  %index_ptr1443 = add i32* %index_ptr1443, 1
  br label %__compare402

__fresh408:
  br label %__end404

__end404:
  %b1446 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array1441, { i32, [ 0 x i32 ] }** %b1446
  %_lhs1447 = load i32* @a1431
  %index_ptr1448 = getelementptr { i32, [ 0 x i32 ] }** %b1446, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1449 = load { i32, [ 0 x i32 ] }** %b1446
  %bop1450 = add i32 %_lhs1447, %_lhs1449
  %index_ptr1451 = getelementptr { i32, [ 0 x i32 ] }** %b1446, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1452 = load { i32, [ 0 x i32 ] }** %b1446
  %bop1453 = add i32 %bop1450, %_lhs1452
  ret i32 %bop1453
}


define i32 @f (){

__fresh401:
  %_lhs1432 = load i32* @a1431
  %bop1433 = add i32 %_lhs1432, 1
  store i32 %bop1433, i32* @a1431
  %_lhs1434 = load i32* @a1431
  ret i32 %_lhs1434
}


