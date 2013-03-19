declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x454 = global i32 10, align 4
define void @oat_init (){

__fresh191:
  ret void
}


define i32 @program (i32 %argc457, { i32, [ 0 x i8* ] }* %argv455){

__fresh190:
  %argc_slot458 = alloca i32
  store i32 %argc457, i32* %argc_slot458
  %argv_slot456 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv455, { i32, [ 0 x i8* ] }** %argv_slot456
  %y459 = alloca i32
  store i32 0, i32* %y459
  %_lhs460 = load i32* @x454
  %bop461 = add i32 %_lhs460, 1
  %x462 = alloca i32
  store i32 %bop461, i32* %x462
  %_lhs463 = load i32* %x462
  store i32 %_lhs463, i32* %y459
  %_lhs464 = load i32* %y459
  ret i32 %_lhs464
}


