declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string381.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string381 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string381.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh99:
  ret void
}


define i32 @program (i32 %argc379, { i32, [ 0 x i8* ] }* %argv377){

__fresh98:
  %argc_slot380 = alloca i32
  store i32 %argc379, i32* %argc_slot380
  %argv_slot378 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv377, { i32, [ 0 x i8* ] }** %argv_slot378
  %strval382 = load i8** @_oat_string381
  call void @print_string( i8* %strval382 )
  ret i32 0
}


