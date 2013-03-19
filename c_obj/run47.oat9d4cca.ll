declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1442 = global i32 1, align 4
define void @oat_init (){

__fresh579:
  ret void
}


define i32 @program (i32 %argc1448, { i32, [ 0 x i8* ] }* %argv1446){

__fresh575:
  %argc_slot1449 = alloca i32
  store i32 %argc1448, i32* %argc_slot1449
  %argv_slot1447 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1446, { i32, [ 0 x i8* ] }** %argv_slot1447
  %ret1450 = call i32 @f (  )
  %array_ptr1451 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1450 )
  %array1452 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1451 to { i32, [ 0 x i32 ] }* 
  store i32 0, i32* %index_ptr1454
  br label %__compare572

__fresh576:
  br label %__compare572

__compare572:
  %comparison_result1455 = icmp slt i32* %index_ptr1454, %ret1450
  br i1 %comparison_result1455, label %__body573, label %__end574

__fresh577:
  br label %__body573

__body573:
  store i32* %index_ptr1454, i32* %i1456
  %_lhs1457 = load i32* %i1456
  %index_ptr1454 = add i32* %index_ptr1454, 1
  br label %__compare572

__fresh578:
  br label %__end574

__end574:
  %b1458 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1452, { i32, [ 0 x i32 ] }** %b1458
  %_lhs1459 = load i32* @a1442
  %index_ptr1460 = getelementptr { i32, [ 0 x i32 ] }** %b1458, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1461 = load { i32, [ 0 x i32 ] }** %b1458
  %bop1462 = add i32 %_lhs1459, %_lhs1461
  %index_ptr1463 = getelementptr { i32, [ 0 x i32 ] }** %b1458, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1464 = load { i32, [ 0 x i32 ] }** %b1458
  %bop1465 = add i32 %bop1462, %_lhs1464
  ret i32 %bop1465
}


define i32 @f (){

__fresh571:
  %_lhs1443 = load i32* @a1442
  %bop1444 = add i32 %_lhs1443, 1
  store i32 %bop1444, i32* @a1442
  %_lhs1445 = load i32* @a1442
  ret i32 %_lhs1445
}


