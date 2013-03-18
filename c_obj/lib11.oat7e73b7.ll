declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1708.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1708 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1708.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh478:
  ret void
}


define i32 @program (i32 %argc1706, { i32, [ 0 x i8* ] }* %argv1704){

__fresh473:
  %argc_slot1707 = alloca i32
  store i32 %argc1706, i32* %argc_slot1707
  %argv_slot1705 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1704, { i32, [ 0 x i8* ] }** %argv_slot1705
  %strval1709 = load i8** @_oat_string1708
  %ret1710 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1709 )
  %arr1711 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1710, { i32, [ 0 x i32 ] }** %arr1711
  %sum1712 = alloca i32
  store i32 0, i32* %sum1712
  %i1713 = alloca i32
  store i32 0, i32* %i1713
  br label %__cond469

__cond469:
  %_lhs1714 = load i32* %i1713
  %bop1715 = icmp slt i32 %_lhs1714, 10
  br i1 %bop1715, label %__body468, label %__post467

__fresh474:
  br label %__body468

__body468:
  %_lhs1716 = load i32* %i1713
  %index_ptr1717 = getelementptr { i32, [ 0 x i32 ] }** %arr1711, i32 %_lhs1716
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1716 )
  %_lhs1718 = load i32* %i1713
  store i32 %_lhs1718, { i32, [ 0 x i32 ] }** %arr1711
  %_lhs1719 = load i32* %i1713
  %bop1720 = add i32 %_lhs1719, 1
  store i32 %bop1720, i32* %i1713
  br label %__cond469

__fresh475:
  br label %__post467

__post467:
  %i1721 = alloca i32
  store i32 0, i32* %i1721
  br label %__cond472

__cond472:
  %_lhs1722 = load i32* %i1721
  %bop1723 = icmp slt i32 %_lhs1722, 10
  br i1 %bop1723, label %__body471, label %__post470

__fresh476:
  br label %__body471

__body471:
  %_lhs1724 = load i32* %sum1712
  %_lhs1725 = load i32* %i1721
  %index_ptr1726 = getelementptr { i32, [ 0 x i32 ] }** %arr1711, i32 %_lhs1725
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1725 )
  %_lhs1727 = load { i32, [ 0 x i32 ] }** %arr1711
  %bop1728 = add i32 %_lhs1724, %_lhs1727
  store i32 %bop1728, i32* %sum1712
  %_lhs1729 = load i32* %i1721
  %bop1730 = add i32 %_lhs1729, 1
  store i32 %bop1730, i32* %i1721
  br label %__cond472

__fresh477:
  br label %__post470

__post470:
  %_lhs1731 = load i32* %sum1712
  ret i32 %_lhs1731
}


