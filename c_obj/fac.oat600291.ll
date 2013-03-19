declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh693:
  ret void
}


define i32 @program (i32 %argc1799, { i32, [ 0 x i8* ] }* %argv1797){

__fresh692:
  %argc_slot1800 = alloca i32
  store i32 %argc1799, i32* %argc_slot1800
  %argv_slot1798 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1797, { i32, [ 0 x i8* ] }** %argv_slot1798
  %ret1801 = call i32 @f ( i32 5 )
  ret i32 %ret1801
}


define i32 @f (i32 %i1786){

__fresh689:
  %i_slot1787 = alloca i32
  store i32 %i1786, i32* %i_slot1787
  %r1788 = alloca i32
  store i32 0, i32* %r1788
  %_lhs1789 = load i32* %i_slot1787
  %bop1790 = icmp eq i32 %_lhs1789, 0
  br i1 %bop1790, label %__then688, label %__else687

__fresh690:
  br label %__then688

__then688:
  store i32 1, i32* %r1788
  br label %__merge686

__fresh691:
  br label %__else687

__else687:
  %_lhs1791 = load i32* %i_slot1787
  %_lhs1792 = load i32* %i_slot1787
  %bop1793 = sub i32 %_lhs1792, 1
  %ret1794 = call i32 @f ( i32 %bop1793 )
  %bop1795 = mul i32 %_lhs1791, %ret1794
  store i32 %bop1795, i32* %r1788
  br label %__merge686

__merge686:
  %_lhs1796 = load i32* %r1788
  ret i32 %_lhs1796
}


