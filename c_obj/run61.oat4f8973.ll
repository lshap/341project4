declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s400 = global i8* zeroinitializer, align 4		; initialized by s400.init
@_oat_string398.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string398 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string398.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh108:
  call void @s400.init(  )
  ret void
}


define i32 @program (i32 %argc404, { i32, [ 0 x i8* ] }* %argv402){

__fresh107:
  %argc_slot405 = alloca i32
  store i32 %argc404, i32* %argc_slot405
  %argv_slot403 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv402, { i32, [ 0 x i8* ] }** %argv_slot403
  %_lhs406 = load i8** @s400
  call void @print_string( i8* %_lhs406 )
  ret i32 0
}


define void @s400.init (){

__fresh106:
  %strval399 = load i8** @_oat_string398
  store i8* %strval399, i8** @s400
  ret void
}


