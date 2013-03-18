declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1454 = global i32 1, align 4
define void @oat_init (){

__fresh418:
  ret void
}


define i32 @program (i32 %argc1460, { i32, [ 0 x i8* ] }* %argv1458){

__fresh414:
  %argc_slot1461 = alloca i32
  store i32 %argc1460, i32* %argc_slot1461
  %argv_slot1459 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1458, { i32, [ 0 x i8* ] }** %argv_slot1459
  %ret1462 = call i32 @f (  )
  %array_ptr1463 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1462 )
  %array1464 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1463 to { i32, [ 0 x i32 ] }* 
  %index_ptr1465 = getelementptr { i32, [ 0 x i32 ] }* %array1464, i32 0, i32 1, i32 0
  store i32 %ret1462, i32* %index_ptr1465
  store i32 0, i32* %index_ptr1466
  br label %__compare411

__fresh415:
  br label %__compare411

__compare411:
  %comparison_result1467 = icmp slt i32* %index_ptr1466, %ret1462
  br i1 %comparison_result1467, label %__body412, label %__end413

__fresh416:
  br label %__body412

__body412:
  store i32* %index_ptr1466, i32 %i1468
  %ret1469 = call i32 @f (  )
  %index_ptr1466 = add i32* %index_ptr1466, 1
  br label %__compare411

__fresh417:
  br label %__end413

__end413:
  %b1470 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array1464, { i32, [ 0 x i32 ] }** %b1470
  %_lhs1471 = load i32* @a1454
  %index_ptr1472 = getelementptr { i32, [ 0 x i32 ] }** %b1470, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1473 = load { i32, [ 0 x i32 ] }** %b1470
  %bop1474 = add i32 %_lhs1471, %_lhs1473
  %index_ptr1475 = getelementptr { i32, [ 0 x i32 ] }** %b1470, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs1476 = load { i32, [ 0 x i32 ] }** %b1470
  %bop1477 = add i32 %bop1474, %_lhs1476
  ret i32 %bop1477
}


define i32 @f (){

__fresh410:
  %_lhs1455 = load i32* @a1454
  %bop1456 = add i32 %_lhs1455, 1
  store i32 %bop1456, i32* @a1454
  %_lhs1457 = load i32* @a1454
  ret i32 %_lhs1457
}


