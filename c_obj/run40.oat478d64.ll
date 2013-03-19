declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i305 = global i32 8, align 4
define void @oat_init (){

__fresh124:
  ret void
}


define i32 @program (i32 %argc312, { i32, [ 0 x i8* ] }* %argv310){

__fresh123:
  %argc_slot313 = alloca i32
  store i32 %argc312, i32* %argc_slot313
  %argv_slot311 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv310, { i32, [ 0 x i8* ] }** %argv_slot311
  %ret314 = call i32 @f (  )
  ret i32 %ret314
}


define i32 @g (){

__fresh122:
  %_lhs309 = load i32* @i305
  ret i32 %_lhs309
}


define i32 @f (){

__fresh121:
  %j306 = alloca i32
  store i32 0, i32* %j306
  %ret307 = call i32 @g (  )
  store i32 %ret307, i32* %j306
  %_lhs308 = load i32* %j306
  ret i32 %_lhs308
}


