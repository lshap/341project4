declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh498:
  ret void
}


define i32 @program (i32 %argc1795, { i32, [ 0 x i8* ] }* %argv1793){

__fresh497:
  %argc_slot1796 = alloca i32
  store i32 %argc1795, i32* %argc_slot1796
  %argv_slot1794 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1793, { i32, [ 0 x i8* ] }** %argv_slot1794
  %ret1797 = call i32 @f ( i32 5 )
  ret i32 %ret1797
}


define i32 @f (i32 %i1782){

__fresh494:
  %i_slot1783 = alloca i32
  store i32 %i1782, i32* %i_slot1783
  %r1784 = alloca i32
  store i32 0, i32* %r1784
  %_lhs1785 = load i32* %i_slot1783
  %bop1786 = icmp eq i32 %_lhs1785, 0
  br i1 %bop1786, label %__then493, label %__else492

__fresh495:
  br label %__then493

__then493:
  store i32 1, i32* %r1784
  br label %__merge491

__fresh496:
  br label %__else492

__else492:
  %_lhs1787 = load i32* %i_slot1783
  %_lhs1788 = load i32* %i_slot1783
  %bop1789 = sub i32 %_lhs1788, 1
  %ret1790 = call i32 @f ( i32 %bop1789 )
  %bop1791 = mul i32 %_lhs1787, %ret1790
  store i32 %bop1791, i32* %r1784
  br label %__merge491

__merge491:
  %_lhs1792 = load i32* %r1784
  ret i32 %_lhs1792
}


