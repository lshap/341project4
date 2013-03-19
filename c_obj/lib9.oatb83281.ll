declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh646:
  ret void
}


define i32 @program (i32 %argc1681, { i32, [ 0 x i8* ] }* %argv1679){

__fresh643:
  %argc_slot1682 = alloca i32
  store i32 %argc1681, i32* %argc_slot1682
  %argv_slot1680 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1679, { i32, [ 0 x i8* ] }** %argv_slot1680
  %i1683 = alloca i32
  store i32 1, i32* %i1683
  br label %__cond642

__cond642:
  %_lhs1684 = load i32* %i1683
  %_lhs1685 = load i32* %argc_slot1682
  %bop1686 = icmp slt i32 %_lhs1684, %_lhs1685
  br i1 %bop1686, label %__body641, label %__post640

__fresh644:
  br label %__body641

__body641:
  %_lhs1687 = load i32* %i1683
  %index_ptr1688 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1680, i32 %_lhs1687
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1687 )
  %_lhs1689 = load { i32, [ 0 x i8* ] }** %argv_slot1680
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs1689 )
  %_lhs1690 = load i32* %i1683
  %bop1691 = add i32 %_lhs1690, 1
  store i32 %bop1691, i32* %i1683
  br label %__cond642

__fresh645:
  br label %__post640

__post640:
  %_lhs1692 = load i32* %argc_slot1682
  ret i32 %_lhs1692
}


