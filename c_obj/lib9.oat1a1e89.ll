declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh383:
  ret void
}


define i32 @program (i32 %argc1598, { i32, [ 0 x i8* ] }* %argv1596){

__fresh380:
  %argc_slot1599 = alloca i32
  store i32 %argc1598, i32* %argc_slot1599
  %argv_slot1597 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1596, { i32, [ 0 x i8* ] }** %argv_slot1597
  %i1600 = alloca i32
  store i32 1, i32* %i1600
  br label %__cond379

__cond379:
  %_lhs1601 = load i32* %i1600
  %_lhs1602 = load i32* %argc_slot1599
  %bop1603 = icmp slt i32 %_lhs1601, %_lhs1602
  br i1 %bop1603, label %__body378, label %__post377

__fresh381:
  br label %__body378

__body378:
  %_lhs1604 = load i32* %i1600
  %index_ptr1605 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1597, i32 %_lhs1604
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1604 )
  %_lhs1606 = load { i32, [ 0 x i8* ] }** %argv_slot1597
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs1606 )
  %_lhs1607 = load i32* %i1600
  %bop1608 = add i32 %_lhs1607, 1
  store i32 %bop1608, i32* %i1600
  br label %__cond379

__fresh382:
  br label %__post377

__post377:
  %_lhs1609 = load i32* %argc_slot1599
  ret i32 %_lhs1609
}


