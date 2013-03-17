declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1481.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1481 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1481.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh212:
  ret void
}


define i32 @program (i32 %argc1479, { i32, [ 0 x i8* ] }* %argv1477){

__fresh211:
  %argc_slot1480 = alloca i32
  store i32 %argc1479, i32* %argc_slot1480
  %argv_slot1478 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1477, { i32, [ 0 x i8* ] }** %argv_slot1478
  %strval1482 = load i8** @_oat_string1481
  %ret1483 = call i32 @my_length_of_string ( i8* %strval1482 )
  ret i32 %ret1483
}


define i32 @my_length_of_string (i8* %str1471){

__fresh210:
  %str_slot1472 = alloca i8*
  store i8* %str1471, i8** %str_slot1472
  %_lhs1473 = load i8** %str_slot1472
  %ret1474 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1473 )
  %len_ptr1475 = getelementptr { i32, [ 0 x i32 ] }* %ret1474, i32 0, i32 0
  %len1476 = load i32* %len_ptr1475
  ret i32 %len1476
}


