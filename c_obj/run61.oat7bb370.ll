declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s461 = global i8* zeroinitializer, align 4		; initialized by s461.init
@_oat_string459.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string459 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string459.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh194:
  call void @s461.init(  )
  ret void
}


define i32 @program (i32 %argc465, { i32, [ 0 x i8* ] }* %argv463){

__fresh193:
  %argc_slot466 = alloca i32
  store i32 %argc465, i32* %argc_slot466
  %argv_slot464 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv463, { i32, [ 0 x i8* ] }** %argv_slot464
  %_lhs467 = load i8** @s461
  call void @print_string( i8* %_lhs467 )
  ret i32 0
}


define void @s461.init (){

__fresh192:
  %strval460 = load i8** @_oat_string459
  store i8* %strval460, i8** @s461
  ret void
}


