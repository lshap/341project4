declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh454:
  ret void
}


define i32 @program (i32 %argc1639, { i32, [ 0 x i8* ] }* %argv1637){

__fresh451:
  %argc_slot1640 = alloca i32
  store i32 %argc1639, i32* %argc_slot1640
  %argv_slot1638 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1637, { i32, [ 0 x i8* ] }** %argv_slot1638
  %array_ptr1641 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1642 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1641 to { i32, [ 0 x i32 ] }* 
  %index_ptr1643 = getelementptr { i32, [ 0 x i32 ] }* %array1642, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1643
  %index_ptr1644 = getelementptr { i32, [ 0 x i32 ] }* %array1642, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1644
  %index_ptr1645 = getelementptr { i32, [ 0 x i32 ] }* %array1642, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1645
  %index_ptr1646 = getelementptr { i32, [ 0 x i32 ] }* %array1642, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1646
  %index_ptr1647 = getelementptr { i32, [ 0 x i32 ] }* %array1642, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1647
  %arr11648 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1642, { i32, [ 0 x i32 ] }** %arr11648
  %_lhs1649 = load { i32, [ 0 x i32 ] }** %arr11648
  %ret1650 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1649 )
  %str1651 = alloca i8*
  store i8* %ret1650, i8** %str1651
  %_lhs1652 = load i8** %str1651
  %ret1653 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1652 )
  %arr21654 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1653, { i32, [ 0 x i32 ] }** %arr21654
  %s1655 = alloca i32
  store i32 0, i32* %s1655
  %i1656 = alloca i32
  store i32 0, i32* %i1656
  br label %__cond450

__cond450:
  %_lhs1657 = load i32* %i1656
  %bop1658 = icmp slt i32 %_lhs1657, 5
  br i1 %bop1658, label %__body449, label %__post448

__fresh452:
  br label %__body449

__body449:
  %_lhs1659 = load i32* %s1655
  %_lhs1660 = load i32* %i1656
  %index_ptr1661 = getelementptr { i32, [ 0 x i32 ] }** %arr21654, i32 %_lhs1660
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1660 )
  %_lhs1662 = load { i32, [ 0 x i32 ] }** %arr21654
  %bop1663 = add i32 %_lhs1659, %_lhs1662
  store i32 %bop1663, i32* %s1655
  %_lhs1664 = load i32* %i1656
  %bop1665 = add i32 %_lhs1664, 1
  store i32 %bop1665, i32* %i1656
  br label %__cond450

__fresh453:
  br label %__post448

__post448:
  %_lhs1666 = load i32* %s1655
  ret i32 %_lhs1666
}


