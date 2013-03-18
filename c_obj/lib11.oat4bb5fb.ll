declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1628.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1628 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1628.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh398:
  ret void
}


define i32 @program (i32 %argc1626, { i32, [ 0 x i8* ] }* %argv1624){

__fresh393:
  %argc_slot1627 = alloca i32
  store i32 %argc1626, i32* %argc_slot1627
  %argv_slot1625 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1624, { i32, [ 0 x i8* ] }** %argv_slot1625
  %strval1629 = load i8** @_oat_string1628
  %ret1630 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1629 )
  %arr1631 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1630, { i32, [ 0 x i32 ] }** %arr1631
  %sum1632 = alloca i32
  store i32 0, i32* %sum1632
  %i1633 = alloca i32
  store i32 0, i32* %i1633
  br label %__cond389

__cond389:
  %_lhs1634 = load i32* %i1633
  %bop1635 = icmp slt i32 %_lhs1634, 10
  br i1 %bop1635, label %__body388, label %__post387

__fresh394:
  br label %__body388

__body388:
  %_lhs1636 = load i32* %i1633
  %index_ptr1637 = getelementptr { i32, [ 0 x i32 ] }** %arr1631, i32 %_lhs1636
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1636 )
  %_lhs1638 = load i32* %i1633
  store i32 %_lhs1638, { i32, [ 0 x i32 ] }** %arr1631
  %_lhs1639 = load i32* %i1633
  %bop1640 = add i32 %_lhs1639, 1
  store i32 %bop1640, i32* %i1633
  br label %__cond389

__fresh395:
  br label %__post387

__post387:
  %i1641 = alloca i32
  store i32 0, i32* %i1641
  br label %__cond392

__cond392:
  %_lhs1642 = load i32* %i1641
  %bop1643 = icmp slt i32 %_lhs1642, 10
  br i1 %bop1643, label %__body391, label %__post390

__fresh396:
  br label %__body391

__body391:
  %_lhs1644 = load i32* %sum1632
  %_lhs1645 = load i32* %i1641
  %index_ptr1646 = getelementptr { i32, [ 0 x i32 ] }** %arr1631, i32 %_lhs1645
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1645 )
  %_lhs1647 = load { i32, [ 0 x i32 ] }** %arr1631
  %bop1648 = add i32 %_lhs1644, %_lhs1647
  store i32 %bop1648, i32* %sum1632
  %_lhs1649 = load i32* %i1641
  %bop1650 = add i32 %_lhs1649, 1
  store i32 %bop1650, i32* %i1641
  br label %__cond392

__fresh397:
  br label %__post390

__post390:
  %_lhs1651 = load i32* %sum1632
  ret i32 %_lhs1651
}


