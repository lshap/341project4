declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x433 = global i32 10, align 4
define void @oat_init (){

__fresh188:
  ret void
}


define i32 @program (i32 %argc436, { i32, [ 0 x i8* ] }* %argv434){

__fresh187:
  %argc_slot437 = alloca i32
  store i32 %argc436, i32* %argc_slot437
  %argv_slot435 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv434, { i32, [ 0 x i8* ] }** %argv_slot435
  %y438 = alloca i32
  store i32 0, i32* %y438
  %_lhs439 = load i32* @x433
  %bop440 = add i32 %_lhs439, 1
  %x441 = alloca i32
  store i32 %bop440, i32* %x441
  %_lhs442 = load i32* %x441
  store i32 %_lhs442, i32* %y438
  %_lhs443 = load i32* %y438
  ret i32 %_lhs443
}


