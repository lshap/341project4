declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1712.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1712 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1712.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh466:
  ret void
}


define i32 @program (i32 %argc1710, { i32, [ 0 x i8* ] }* %argv1708){

__fresh465:
  %argc_slot1711 = alloca i32
  store i32 %argc1710, i32* %argc_slot1711
  %argv_slot1709 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1708, { i32, [ 0 x i8* ] }** %argv_slot1709
  %strval1713 = load i8** @_oat_string1712
  %ret1714 = call i32 @my_length_of_string ( i8* %strval1713 )
  ret i32 %ret1714
}


define i32 @my_length_of_string (i8* %str1702){

__fresh464:
  %str_slot1703 = alloca i8*
  store i8* %str1702, i8** %str_slot1703
  %_lhs1704 = load i8** %str_slot1703
  %ret1705 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1704 )
  %len_ptr1706 = getelementptr { i32, [ 0 x i32 ] }* %ret1705, i32 0, i32 0
  %len1707 = load i32* %len_ptr1706
  ret i32 %len1707
}


