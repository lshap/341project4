declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1711.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1711 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1711.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh665:
  ret void
}


define i32 @program (i32 %argc1709, { i32, [ 0 x i8* ] }* %argv1707){

__fresh660:
  %argc_slot1710 = alloca i32
  store i32 %argc1709, i32* %argc_slot1710
  %argv_slot1708 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1707, { i32, [ 0 x i8* ] }** %argv_slot1708
  %strval1712 = load i8** @_oat_string1711
  %ret1713 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1712 )
  %arr1714 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1713, { i32, [ 0 x i32 ] }** %arr1714
  %sum1715 = alloca i32
  store i32 0, i32* %sum1715
  %i1716 = alloca i32
  store i32 0, i32* %i1716
  br label %__cond656

__cond656:
  %_lhs1717 = load i32* %i1716
  %bop1718 = icmp slt i32 %_lhs1717, 10
  br i1 %bop1718, label %__body655, label %__post654

__fresh661:
  br label %__body655

__body655:
  %_lhs1719 = load i32* %i1716
  %index_ptr1720 = getelementptr { i32, [ 0 x i32 ] }** %arr1714, i32 %_lhs1719
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1719 )
  %_lhs1721 = load i32* %i1716
  store i32 %_lhs1721, { i32, [ 0 x i32 ] }** %arr1714
  %_lhs1722 = load i32* %i1716
  %bop1723 = add i32 %_lhs1722, 1
  store i32 %bop1723, i32* %i1716
  br label %__cond656

__fresh662:
  br label %__post654

__post654:
  %i1724 = alloca i32
  store i32 0, i32* %i1724
  br label %__cond659

__cond659:
  %_lhs1725 = load i32* %i1724
  %bop1726 = icmp slt i32 %_lhs1725, 10
  br i1 %bop1726, label %__body658, label %__post657

__fresh663:
  br label %__body658

__body658:
  %_lhs1727 = load i32* %sum1715
  %_lhs1728 = load i32* %i1724
  %index_ptr1729 = getelementptr { i32, [ 0 x i32 ] }** %arr1714, i32 %_lhs1728
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1728 )
  %_lhs1730 = load { i32, [ 0 x i32 ] }** %arr1714
  %bop1731 = add i32 %_lhs1727, %_lhs1730
  store i32 %bop1731, i32* %sum1715
  %_lhs1732 = load i32* %i1724
  %bop1733 = add i32 %_lhs1732, 1
  store i32 %bop1733, i32* %i1724
  br label %__cond659

__fresh664:
  br label %__post657

__post657:
  %_lhs1734 = load i32* %sum1715
  ret i32 %_lhs1734
}


