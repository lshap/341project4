declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1068.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1068 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1068.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh127:
  ret void
}


define i32 @program (i32 %argc1066, { i32, [ 0 x i8* ] }* %argv1064){

__fresh126:
  %argc_slot1067 = alloca i32
  store i32 %argc1066, i32* %argc_slot1067
  %argv_slot1065 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1064, { i32, [ 0 x i8* ] }** %argv_slot1065
  %strval1069 = load i8** @_oat_string1068
  %ret1070 = call i32 @my_length_of_string ( i8* %strval1069 )
  ret i32 %ret1070
}


define i32 @my_length_of_string (i8* %str1058){

__fresh125:
  %str_slot1059 = alloca i8*
  store i8* %str1058, i8** %str_slot1059
  %_lhs1060 = load i8** %str_slot1059
  %ret1061 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1060 )
  %len_ptr1062 = getelementptr { i32, [ 0 x i32 ] }* %ret1061, i32 0, i32 0
  %len1063 = load i32* %len_ptr1062
  ret i32 %len1063
}


