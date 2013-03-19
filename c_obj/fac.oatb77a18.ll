declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh694:
  ret void
}


define i32 @program (i32 %argc1808, { i32, [ 0 x i8* ] }* %argv1806){

__fresh693:
  %argc_slot1809 = alloca i32
  store i32 %argc1808, i32* %argc_slot1809
  %argv_slot1807 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1806, { i32, [ 0 x i8* ] }** %argv_slot1807
  %ret1810 = call i32 @f ( i32 5 )
  ret i32 %ret1810
}


define i32 @f (i32 %i1795){

__fresh690:
  %i_slot1796 = alloca i32
  store i32 %i1795, i32* %i_slot1796
  %r1797 = alloca i32
  store i32 0, i32* %r1797
  %_lhs1798 = load i32* %i_slot1796
  %bop1799 = icmp eq i32 %_lhs1798, 0
  br i1 %bop1799, label %__then689, label %__else688

__fresh691:
  br label %__then689

__then689:
  store i32 1, i32* %r1797
  br label %__merge687

__fresh692:
  br label %__else688

__else688:
  %_lhs1800 = load i32* %i_slot1796
  %_lhs1801 = load i32* %i_slot1796
  %bop1802 = sub i32 %_lhs1801, 1
  %ret1803 = call i32 @f ( i32 %bop1802 )
  %bop1804 = mul i32 %_lhs1800, %ret1803
  store i32 %bop1804, i32* %r1797
  br label %__merge687

__merge687:
  %_lhs1805 = load i32* %r1797
  ret i32 %_lhs1805
}


