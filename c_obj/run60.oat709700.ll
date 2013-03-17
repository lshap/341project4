declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i368 = global i32 3, align 4
define void @oat_init (){

__fresh78:
  ret void
}


define i32 @program (i32 %argc371, { i32, [ 0 x i8* ] }* %argv369){

__fresh77:
  %argc_slot372 = alloca i32
  store i32 %argc371, i32* %argc_slot372
  %argv_slot370 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv369, { i32, [ 0 x i8* ] }** %argv_slot370
  store i32 341, i32* @i368
  %_lhs373 = load i32* @i368
  ret i32 %_lhs373
}


