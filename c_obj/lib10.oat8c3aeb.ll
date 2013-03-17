declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1350.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1350 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1350.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh212:
  ret void
}


define i32 @program (i32 %argc1348, { i32, [ 0 x i8* ] }* %argv1346){

__fresh211:
  %argc_slot1349 = alloca i32
  store i32 %argc1348, i32* %argc_slot1349
  %argv_slot1347 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1346, { i32, [ 0 x i8* ] }** %argv_slot1347
  %strval1351 = load i8** @_oat_string1350
  %ret1352 = call i32 @my_length_of_string ( i8* %strval1351 )
  ret i32 %ret1352
}


define i32 @my_length_of_string (i8* %str1340){

__fresh210:
  %str_slot1341 = alloca i8*
  store i8* %str1340, i8** %str_slot1341
  %_lhs1342 = load i8** %str_slot1341
  %ret1343 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1342 )
  %len_ptr1344 = getelementptr { i32, [ 0 x i32 ] }* %ret1343, i32 0, i32 0
  %len1345 = load i32* %len_ptr1344
  ret i32 %len1345
}


