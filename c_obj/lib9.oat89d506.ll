declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh647:
  ret void
}


define i32 @program (i32 %argc1690, { i32, [ 0 x i8* ] }* %argv1688){

__fresh644:
  %argc_slot1691 = alloca i32
  store i32 %argc1690, i32* %argc_slot1691
  %argv_slot1689 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1688, { i32, [ 0 x i8* ] }** %argv_slot1689
  %i1692 = alloca i32
  store i32 1, i32* %i1692
  br label %__cond643

__cond643:
  %_lhs1693 = load i32* %i1692
  %_lhs1694 = load i32* %argc_slot1691
  %bop1695 = icmp slt i32 %_lhs1693, %_lhs1694
  br i1 %bop1695, label %__body642, label %__post641

__fresh645:
  br label %__body642

__body642:
  %_lhs1696 = load i32* %i1692
  %index_ptr1697 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1689, i32 %_lhs1696
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1696 )
  %_lhs1698 = load { i32, [ 0 x i8* ] }** %argv_slot1689
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs1698 )
  %_lhs1699 = load i32* %i1692
  %bop1700 = add i32 %_lhs1699, 1
  store i32 %bop1700, i32* %i1692
  br label %__cond643

__fresh646:
  br label %__post641

__post641:
  %_lhs1701 = load i32* %argc_slot1691
  ret i32 %_lhs1701
}


