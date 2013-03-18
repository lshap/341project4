declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1588.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1588 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1588.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh439:
  ret void
}


define i32 @program (i32 %argc1586, { i32, [ 0 x i8* ] }* %argv1584){

__fresh436:
  %argc_slot1587 = alloca i32
  store i32 %argc1586, i32* %argc_slot1587
  %argv_slot1585 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1584, { i32, [ 0 x i8* ] }** %argv_slot1585
  %strval1589 = load i8** @_oat_string1588
  %str1590 = alloca i8*
  store i8* %strval1589, i8** %str1590
  %_lhs1591 = load i8** %str1590
  %ret1592 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1591 )
  %arr1593 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1592, { i32, [ 0 x i32 ] }** %arr1593
  %s1594 = alloca i32
  store i32 0, i32* %s1594
  %i1595 = alloca i32
  store i32 0, i32* %i1595
  br label %__cond435

__cond435:
  %_lhs1596 = load i32* %i1595
  %bop1597 = icmp slt i32 %_lhs1596, 5
  br i1 %bop1597, label %__body434, label %__post433

__fresh437:
  br label %__body434

__body434:
  %_lhs1598 = load i32* %s1594
  %_lhs1599 = load i32* %i1595
  %index_ptr1600 = getelementptr { i32, [ 0 x i32 ] }** %arr1593, i32 %_lhs1599
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1599 )
  %_lhs1601 = load { i32, [ 0 x i32 ] }** %arr1593
  %bop1602 = add i32 %_lhs1598, %_lhs1601
  store i32 %bop1602, i32* %s1594
  %_lhs1603 = load i32* %i1595
  %bop1604 = add i32 %_lhs1603, 1
  store i32 %bop1604, i32* %i1595
  br label %__cond435

__fresh438:
  br label %__post433

__post433:
  %_lhs1605 = load i32* %s1594
  ret i32 %_lhs1605
}


