declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1703.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1703 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1703.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh651:
  ret void
}


define i32 @program (i32 %argc1701, { i32, [ 0 x i8* ] }* %argv1699){

__fresh650:
  %argc_slot1702 = alloca i32
  store i32 %argc1701, i32* %argc_slot1702
  %argv_slot1700 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1699, { i32, [ 0 x i8* ] }** %argv_slot1700
  %strval1704 = load i8** @_oat_string1703
  %ret1705 = call i32 @my_length_of_string ( i8* %strval1704 )
  ret i32 %ret1705
}


define i32 @my_length_of_string (i8* %str1693){

__fresh649:
  %str_slot1694 = alloca i8*
  store i8* %str1693, i8** %str_slot1694
  %_lhs1695 = load i8** %str_slot1694
  %ret1696 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1695 )
  %len_ptr1697 = getelementptr { i32, [ 0 x i32 ] }* %ret1696, i32 0, i32 0
  %len1698 = load i32* %len_ptr1697
  ret i32 %len1698
}


