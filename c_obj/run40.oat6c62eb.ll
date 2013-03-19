declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i314 = global i32 8, align 4
define void @oat_init (){

__fresh125:
  ret void
}


define i32 @program (i32 %argc321, { i32, [ 0 x i8* ] }* %argv319){

__fresh124:
  %argc_slot322 = alloca i32
  store i32 %argc321, i32* %argc_slot322
  %argv_slot320 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv319, { i32, [ 0 x i8* ] }** %argv_slot320
  %ret323 = call i32 @f (  )
  ret i32 %ret323
}


define i32 @g (){

__fresh123:
  %_lhs318 = load i32* @i314
  ret i32 %_lhs318
}


define i32 @f (){

__fresh122:
  %j315 = alloca i32
  store i32 0, i32* %j315
  %ret316 = call i32 @g (  )
  store i32 %ret316, i32* %j315
  %_lhs317 = load i32* %j315
  ret i32 %_lhs317
}


