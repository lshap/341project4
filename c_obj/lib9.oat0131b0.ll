declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh463:
  ret void
}


define i32 @program (i32 %argc1678, { i32, [ 0 x i8* ] }* %argv1676){

__fresh460:
  %argc_slot1679 = alloca i32
  store i32 %argc1678, i32* %argc_slot1679
  %argv_slot1677 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1676, { i32, [ 0 x i8* ] }** %argv_slot1677
  %i1680 = alloca i32
  store i32 1, i32* %i1680
  br label %__cond459

__cond459:
  %_lhs1681 = load i32* %i1680
  %_lhs1682 = load i32* %argc_slot1679
  %bop1683 = icmp slt i32 %_lhs1681, %_lhs1682
  br i1 %bop1683, label %__body458, label %__post457

__fresh461:
  br label %__body458

__body458:
  %_lhs1684 = load i32* %i1680
  %index_ptr1685 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1677, i32 %_lhs1684
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1684 )
  %_lhs1686 = load { i32, [ 0 x i8* ] }** %argv_slot1677
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs1686 )
  %_lhs1687 = load i32* %i1680
  %bop1688 = add i32 %_lhs1687, 1
  store i32 %bop1688, i32* %i1680
  br label %__cond459

__fresh462:
  br label %__post457

__post457:
  %_lhs1689 = load i32* %argc_slot1679
  ret i32 %_lhs1689
}


