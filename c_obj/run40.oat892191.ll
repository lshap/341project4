declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i324 = global i32 8, align 4
define void @oat_init (){

__fresh127:
  ret void
}


define i32 @program (i32 %argc331, { i32, [ 0 x i8* ] }* %argv329){

__fresh126:
  %argc_slot332 = alloca i32
  store i32 %argc331, i32* %argc_slot332
  %argv_slot330 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv329, { i32, [ 0 x i8* ] }** %argv_slot330
  %ret333 = call i32 @f (  )
  ret i32 %ret333
}


define i32 @g (){

__fresh125:
  %_lhs328 = load i32* @i324
  ret i32 %_lhs328
}


define i32 @f (){

__fresh124:
  %j325 = alloca i32
  store i32 0, i32* %j325
  %ret326 = call i32 @g (  )
  store i32 %ret326, i32* %j325
  %_lhs327 = load i32* %j325
  ret i32 %_lhs327
}


