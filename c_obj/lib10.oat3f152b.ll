declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1620.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1620 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1620.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh386:
  ret void
}


define i32 @program (i32 %argc1618, { i32, [ 0 x i8* ] }* %argv1616){

__fresh385:
  %argc_slot1619 = alloca i32
  store i32 %argc1618, i32* %argc_slot1619
  %argv_slot1617 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1616, { i32, [ 0 x i8* ] }** %argv_slot1617
  %strval1621 = load i8** @_oat_string1620
  %ret1622 = call i32 @my_length_of_string ( i8* %strval1621 )
  ret i32 %ret1622
}


define i32 @my_length_of_string (i8* %str1610){

__fresh384:
  %str_slot1611 = alloca i8*
  store i8* %str1610, i8** %str_slot1611
  %_lhs1612 = load i8** %str_slot1611
  %ret1613 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1612 )
  %len_ptr1614 = getelementptr { i32, [ 0 x i32 ] }* %ret1613, i32 0, i32 0
  %len1615 = load i32* %len_ptr1614
  ret i32 %len1615
}


