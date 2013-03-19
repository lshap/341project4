declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s473 = global i8* zeroinitializer, align 4		; initialized by s473.init
@_oat_string471.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string471 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string471.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh196:
  call void @s473.init(  )
  ret void
}


define i32 @program (i32 %argc477, { i32, [ 0 x i8* ] }* %argv475){

__fresh195:
  %argc_slot478 = alloca i32
  store i32 %argc477, i32* %argc_slot478
  %argv_slot476 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv475, { i32, [ 0 x i8* ] }** %argv_slot476
  %_lhs479 = load i8** @s473
  call void @print_string( i8* %_lhs479 )
  ret i32 0
}


define void @s473.init (){

__fresh194:
  %strval472 = load i8** @_oat_string471
  store i8* %strval472, i8** @s473
  ret void
}


