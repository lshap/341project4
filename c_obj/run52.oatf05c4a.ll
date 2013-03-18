declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x442 = global i32 10, align 4
define void @oat_init (){

__fresh153:
  ret void
}


define i32 @program (i32 %argc445, { i32, [ 0 x i8* ] }* %argv443){

__fresh152:
  %argc_slot446 = alloca i32
  store i32 %argc445, i32* %argc_slot446
  %argv_slot444 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv443, { i32, [ 0 x i8* ] }** %argv_slot444
  %y447 = alloca i32
  store i32 0, i32* %y447
  %_lhs448 = load i32* @x442
  %bop449 = add i32 %_lhs448, 1
  %x450 = alloca i32
  store i32 %bop449, i32* %x450
  %_lhs451 = load i32* %x450
  store i32 %_lhs451, i32* %y447
  %_lhs452 = load i32* %y447
  ret i32 %_lhs452
}


