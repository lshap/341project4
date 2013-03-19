declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh28:
  ret void
}


define i32 @program (i32 %argc81, { i32, [ 0 x i8* ] }* %argv79){

__fresh27:
  %argc_slot82 = alloca i32
  store i32 %argc81, i32* %argc_slot82
  %argv_slot80 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv79, { i32, [ 0 x i8* ] }** %argv_slot80
  %a83 = alloca i32
  store i32 2, i32* %a83
  %_lhs84 = load i32* %a83
  ret i32 %_lhs84
}


