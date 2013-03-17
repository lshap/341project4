declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x391 = global i32 10, align 4
define void @oat_init (){

__fresh103:
  ret void
}


define i32 @program (i32 %argc394, { i32, [ 0 x i8* ] }* %argv392){

__fresh102:
  %argc_slot395 = alloca i32
  store i32 %argc394, i32* %argc_slot395
  %argv_slot393 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv392, { i32, [ 0 x i8* ] }** %argv_slot393
  %y396 = alloca i32
  store i32 0, i32* %y396
  %_lhs397 = load i32* @x391
  %bop398 = add i32 %_lhs397, 1
  %x399 = alloca i32
  store i32 %bop398, i32* %x399
  %_lhs400 = load i32* %x399
  store i32 %_lhs400, i32* %y396
  %_lhs401 = load i32* %y396
  ret i32 %_lhs401
}


