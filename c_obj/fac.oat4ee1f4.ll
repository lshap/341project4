declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh235:
  ret void
}


define i32 @program (i32 %argc1557, { i32, [ 0 x i8* ] }* %argv1555){

__fresh234:
  %argc_slot1558 = alloca i32
  store i32 %argc1557, i32* %argc_slot1558
  %argv_slot1556 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1555, { i32, [ 0 x i8* ] }** %argv_slot1556
  %ret1559 = call i32 @f ( i32 5 )
  ret i32 %ret1559
}


define i32 @f (i32 %i1544){

__fresh231:
  %i_slot1545 = alloca i32
  store i32 %i1544, i32* %i_slot1545
  %r1546 = alloca i32
  store i32 0, i32* %r1546
  %_lhs1547 = load i32* %i_slot1545
  %bop1548 = icmp eq i32 %_lhs1547, 0
  br i1 %bop1548, label %__then230, label %__else229

__fresh232:
  br label %__then230

__then230:
  store i32 1, i32* %r1546
  br label %__merge228

__fresh233:
  br label %__else229

__else229:
  %_lhs1549 = load i32* %i_slot1545
  %_lhs1550 = load i32* %i_slot1545
  %bop1551 = sub i32 %_lhs1550, 1
  %ret1552 = call i32 @f ( i32 %bop1551 )
  %bop1553 = mul i32 %_lhs1549, %ret1552
  store i32 %bop1553, i32* %r1546
  br label %__merge228

__merge228:
  %_lhs1554 = load i32* %r1546
  ret i32 %_lhs1554
}


