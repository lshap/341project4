declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1674.str. = private unnamed_addr constant [ 14 x i8 ] c "Hello world!
\00", align 4
@_oat_string1674 = global i8* getelementptr inbounds ([ 14 x i8 ]* @_oat_string1674.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh638:
  ret void
}


define i32 @program (i32 %argc1672, { i32, [ 0 x i8* ] }* %argv1670){

__fresh637:
  %argc_slot1673 = alloca i32
  store i32 %argc1672, i32* %argc_slot1673
  %argv_slot1671 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1670, { i32, [ 0 x i8* ] }** %argv_slot1671
  %strval1675 = load i8** @_oat_string1674
  %str1676 = alloca i8*
  store i8* %strval1675, i8** %str1676
  %_lhs1677 = load i8** %str1676
  call void @print_string( i8* %_lhs1677 )
  ret i32 0
}


