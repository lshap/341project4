declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1433 = global i32 1, align 4
define void @oat_init (){

__fresh578:
  ret void
}


define i32 @program (i32 %argc1439, { i32, [ 0 x i8* ] }* %argv1437){

__fresh574:
  %argc_slot1440 = alloca i32
  store i32 %argc1439, i32* %argc_slot1440
  %argv_slot1438 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1437, { i32, [ 0 x i8* ] }** %argv_slot1438
  %ret1441 = call i32 @f (  )
  %array_ptr1442 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1441 )
  %array1443 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1442 to { i32, [ 0 x i32 ] }* 
  %index_ptr1444 = getelementptr { i32, [ 0 x i32 ] }* %array1443, i32 0, i32 1, i32 0
  store i32 %ret1441, i32* %index_ptr1444
  store i32 0, i32* %index_ptr1445
  br label %__compare571

__fresh575:
  br label %__compare571

__compare571:
  %comparison_result1446 = icmp slt i32* %index_ptr1445, %ret1441
  br i1 %comparison_result1446, label %__body572, label %__end573

__fresh576:
  br label %__body572

__body572:
  store i32* %index_ptr1445, i32* %i1447
  %_lhs1448 = load i32* %i1447
  %index_ptr1445 = add i32* %index_ptr1445, 1
  br label %__compare571

__fresh577:
  br label %__end573

__end573:
  %b1449 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array1443, { i32, [ 0 x i32 ] }** %b1449
  %_lhs1450 = load i32* @a1433
  %index_ptr1451 = getelementptr { i32, [ 0 x i32 ] }** %b1449, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1452 = load { i32, [ 0 x i32 ] }** %b1449
  %bop1453 = add i32 %_lhs1450, %_lhs1452
  %index_ptr1454 = getelementptr { i32, [ 0 x i32 ] }** %b1449, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1455 = load { i32, [ 0 x i32 ] }** %b1449
  %bop1456 = add i32 %bop1453, %_lhs1455
  ret i32 %bop1456
}


define i32 @f (){

__fresh570:
  %_lhs1434 = load i32* @a1433
  %bop1435 = add i32 %_lhs1434, 1
  store i32 %bop1435, i32* @a1433
  %_lhs1436 = load i32* @a1433
  ret i32 %_lhs1436
}


