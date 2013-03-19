declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1591.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1591 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1591.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh613:
  ret void
}


define i32 @program (i32 %argc1589, { i32, [ 0 x i8* ] }* %argv1587){

__fresh610:
  %argc_slot1590 = alloca i32
  store i32 %argc1589, i32* %argc_slot1590
  %argv_slot1588 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1587, { i32, [ 0 x i8* ] }** %argv_slot1588
  %strval1592 = load i8** @_oat_string1591
  %str1593 = alloca i8*
  store i8* %strval1592, i8** %str1593
  %_lhs1594 = load i8** %str1593
  %ret1595 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1594 )
  %arr1596 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1595, { i32, [ 0 x i32 ] }** %arr1596
  %s1597 = alloca i32
  store i32 0, i32* %s1597
  %i1598 = alloca i32
  store i32 0, i32* %i1598
  br label %__cond609

__cond609:
  %_lhs1599 = load i32* %i1598
  %bop1600 = icmp slt i32 %_lhs1599, 5
  br i1 %bop1600, label %__body608, label %__post607

__fresh611:
  br label %__body608

__body608:
  %_lhs1601 = load i32* %s1597
  %_lhs1602 = load i32* %i1598
  %index_ptr1603 = getelementptr { i32, [ 0 x i32 ] }** %arr1596, i32 %_lhs1602
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1602 )
  %_lhs1604 = load { i32, [ 0 x i32 ] }** %arr1596
  %bop1605 = add i32 %_lhs1601, %_lhs1604
  store i32 %bop1605, i32* %s1597
  %_lhs1606 = load i32* %i1598
  %bop1607 = add i32 %_lhs1606, 1
  store i32 %bop1607, i32* %i1598
  br label %__cond609

__fresh612:
  br label %__post607

__post607:
  %_lhs1608 = load i32* %s1597
  ret i32 %_lhs1608
}


