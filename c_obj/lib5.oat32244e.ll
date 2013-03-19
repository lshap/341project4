declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1600.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1600 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1600.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh614:
  ret void
}


define i32 @program (i32 %argc1598, { i32, [ 0 x i8* ] }* %argv1596){

__fresh611:
  %argc_slot1599 = alloca i32
  store i32 %argc1598, i32* %argc_slot1599
  %argv_slot1597 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1596, { i32, [ 0 x i8* ] }** %argv_slot1597
  %strval1601 = load i8** @_oat_string1600
  %str1602 = alloca i8*
  store i8* %strval1601, i8** %str1602
  %_lhs1603 = load i8** %str1602
  %ret1604 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1603 )
  %arr1605 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1604, { i32, [ 0 x i32 ] }** %arr1605
  %s1606 = alloca i32
  store i32 0, i32* %s1606
  %i1607 = alloca i32
  store i32 0, i32* %i1607
  br label %__cond610

__cond610:
  %_lhs1608 = load i32* %i1607
  %bop1609 = icmp slt i32 %_lhs1608, 5
  br i1 %bop1609, label %__body609, label %__post608

__fresh612:
  br label %__body609

__body609:
  %_lhs1610 = load i32* %s1606
  %_lhs1611 = load i32* %i1607
  %index_ptr1612 = getelementptr { i32, [ 0 x i32 ] }** %arr1605, i32 %_lhs1611
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1611 )
  %_lhs1613 = load { i32, [ 0 x i32 ] }** %arr1605
  %bop1614 = add i32 %_lhs1610, %_lhs1613
  store i32 %bop1614, i32* %s1606
  %_lhs1615 = load i32* %i1607
  %bop1616 = add i32 %_lhs1615, 1
  store i32 %bop1616, i32* %i1607
  br label %__cond610

__fresh613:
  br label %__post608

__post608:
  %_lhs1617 = load i32* %s1606
  ret i32 %_lhs1617
}


