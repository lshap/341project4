declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh74:
  ret void
}


define i32 @program (i32 %argc348, { i32, [ 0 x i8* ] }* %argv346){

__fresh73:
  %argc_slot349 = alloca i32
  store i32 %argc348, i32* %argc_slot349
  %argv_slot347 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv346, { i32, [ 0 x i8* ] }** %argv_slot347
  %x350 = alloca i32
  store i32 10, i32* %x350
  %y351 = alloca i32
  store i32 0, i32* %y351
  %_lhs352 = load i32* %x350
  %bop353 = add i32 %_lhs352, 1
  %x354 = alloca i32
  store i32 %bop353, i32* %x354
  %_lhs355 = load i32* %x354
  store i32 %_lhs355, i32* %y351
  %_lhs356 = load i32* %y351
  ret i32 %_lhs356
}


