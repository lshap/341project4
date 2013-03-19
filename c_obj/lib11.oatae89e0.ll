declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1720.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1720 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1720.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh666:
  ret void
}


define i32 @program (i32 %argc1718, { i32, [ 0 x i8* ] }* %argv1716){

__fresh661:
  %argc_slot1719 = alloca i32
  store i32 %argc1718, i32* %argc_slot1719
  %argv_slot1717 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1716, { i32, [ 0 x i8* ] }** %argv_slot1717
  %strval1721 = load i8** @_oat_string1720
  %ret1722 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1721 )
  %arr1723 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1722, { i32, [ 0 x i32 ] }** %arr1723
  %sum1724 = alloca i32
  store i32 0, i32* %sum1724
  %i1725 = alloca i32
  store i32 0, i32* %i1725
  br label %__cond657

__cond657:
  %_lhs1726 = load i32* %i1725
  %bop1727 = icmp slt i32 %_lhs1726, 10
  br i1 %bop1727, label %__body656, label %__post655

__fresh662:
  br label %__body656

__body656:
  %_lhs1728 = load i32* %i1725
  %index_ptr1729 = getelementptr { i32, [ 0 x i32 ] }** %arr1723, i32 %_lhs1728
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1728 )
  %_lhs1730 = load i32* %i1725
  store i32 %_lhs1730, { i32, [ 0 x i32 ] }** %arr1723
  %_lhs1731 = load i32* %i1725
  %bop1732 = add i32 %_lhs1731, 1
  store i32 %bop1732, i32* %i1725
  br label %__cond657

__fresh663:
  br label %__post655

__post655:
  %i1733 = alloca i32
  store i32 0, i32* %i1733
  br label %__cond660

__cond660:
  %_lhs1734 = load i32* %i1733
  %bop1735 = icmp slt i32 %_lhs1734, 10
  br i1 %bop1735, label %__body659, label %__post658

__fresh664:
  br label %__body659

__body659:
  %_lhs1736 = load i32* %sum1724
  %_lhs1737 = load i32* %i1733
  %index_ptr1738 = getelementptr { i32, [ 0 x i32 ] }** %arr1723, i32 %_lhs1737
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1737 )
  %_lhs1739 = load { i32, [ 0 x i32 ] }** %arr1723
  %bop1740 = add i32 %_lhs1736, %_lhs1739
  store i32 %bop1740, i32* %sum1724
  %_lhs1741 = load i32* %i1733
  %bop1742 = add i32 %_lhs1741, 1
  store i32 %bop1742, i32* %i1733
  br label %__cond660

__fresh665:
  br label %__post658

__post658:
  %_lhs1743 = load i32* %sum1724
  ret i32 %_lhs1743
}


