declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh409:
  ret void
}


define i32 @program (i32 %argc1701, { i32, [ 0 x i8* ] }* %argv1699){

__fresh408:
  %argc_slot1702 = alloca i32
  store i32 %argc1701, i32* %argc_slot1702
  %argv_slot1700 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1699, { i32, [ 0 x i8* ] }** %argv_slot1700
  %ret1703 = call i32 @f ( i32 5 )
  ret i32 %ret1703
}


define i32 @f (i32 %i1688){

__fresh405:
  %i_slot1689 = alloca i32
  store i32 %i1688, i32* %i_slot1689
  %r1690 = alloca i32
  store i32 0, i32* %r1690
  %_lhs1691 = load i32* %i_slot1689
  %bop1692 = icmp eq i32 %_lhs1691, 0
  br i1 %bop1692, label %__then404, label %__else403

__fresh406:
  br label %__then404

__then404:
  store i32 1, i32* %r1690
  br label %__merge402

__fresh407:
  br label %__else403

__else403:
  %_lhs1693 = load i32* %i_slot1689
  %_lhs1694 = load i32* %i_slot1689
  %bop1695 = sub i32 %_lhs1694, 1
  %ret1696 = call i32 @f ( i32 %bop1695 )
  %bop1697 = mul i32 %_lhs1693, %ret1696
  store i32 %bop1697, i32* %r1690
  br label %__merge402

__merge402:
  %_lhs1698 = load i32* %r1690
  ret i32 %_lhs1698
}


