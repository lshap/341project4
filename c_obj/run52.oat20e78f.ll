declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x381 = global i32 10, align 4
define void @oat_init (){

__fresh103:
  ret void
}


define i32 @program (i32 %argc384, { i32, [ 0 x i8* ] }* %argv382){

__fresh102:
  %argc_slot385 = alloca i32
  store i32 %argc384, i32* %argc_slot385
  %argv_slot383 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv382, { i32, [ 0 x i8* ] }** %argv_slot383
  %y386 = alloca i32
  store i32 0, i32* %y386
  %_lhs387 = load i32* @x381
  %bop388 = add i32 %_lhs387, 1
  %x389 = alloca i32
  store i32 %bop388, i32* %x389
  %_lhs390 = load i32* %x389
  store i32 %_lhs390, i32* %y386
  %_lhs391 = load i32* %y386
  ret i32 %_lhs391
}


