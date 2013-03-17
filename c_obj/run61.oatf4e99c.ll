declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s376 = global i8* zeroinitializer, align 4		; initialized by s376.init
@_oat_string374.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string374 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string374.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh81:
  call void @s376.init(  )
  ret void
}


define i32 @program (i32 %argc380, { i32, [ 0 x i8* ] }* %argv378){

__fresh80:
  %argc_slot381 = alloca i32
  store i32 %argc380, i32* %argc_slot381
  %argv_slot379 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv378, { i32, [ 0 x i8* ] }** %argv_slot379
  %_lhs382 = load i8** @s376
  call void @print_string( i8* %_lhs382 )
  ret i32 0
}


define void @s376.init (){

__fresh79:
  %strval375 = load i8** @_oat_string374
  store i8* %strval375, i8** @s376
  ret void
}


