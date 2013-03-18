declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1700.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1700 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1700.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh466:
  ret void
}


define i32 @program (i32 %argc1698, { i32, [ 0 x i8* ] }* %argv1696){

__fresh465:
  %argc_slot1699 = alloca i32
  store i32 %argc1698, i32* %argc_slot1699
  %argv_slot1697 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1696, { i32, [ 0 x i8* ] }** %argv_slot1697
  %strval1701 = load i8** @_oat_string1700
  %ret1702 = call i32 @my_length_of_string ( i8* %strval1701 )
  ret i32 %ret1702
}


define i32 @my_length_of_string (i8* %str1690){

__fresh464:
  %str_slot1691 = alloca i8*
  store i8* %str1690, i8** %str_slot1691
  %_lhs1692 = load i8** %str_slot1691
  %ret1693 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1692 )
  %len_ptr1694 = getelementptr { i32, [ 0 x i32 ] }* %ret1693, i32 0, i32 0
  %len1695 = load i32* %len_ptr1694
  ret i32 %len1695
}


