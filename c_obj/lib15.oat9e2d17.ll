declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh2:
  ret void
}


define i32 @program (i32 %argc14, { i32, [ 0 x i8* ] }* %argv12){

__fresh1:
  %argc_slot15 = alloca i32
  store i32 %argc14, i32* %argc_slot15
  %argv_slot13 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv12, { i32, [ 0 x i8* ] }** %argv_slot13
  %index_ptr16 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot13, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs17 = load { i32, [ 0 x i8* ] }** %argv_slot13
  %ret18 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs17, i32 3, i32 5 )
  call void @print_string( i8* %ret18 )
  ret i32 0
}


define i8* @sub (i8* %str5, i32 %start3, i32 %len1){

__fresh0:
  %str_slot6 = alloca i8*
  store i8* %str5, i8** %str_slot6
  %start_slot4 = alloca i32
  store i32 %start3, i32* %start_slot4
  %len_slot2 = alloca i32
  store i32 %len1, i32* %len_slot2
  %_lhs7 = load i8** %str_slot6
  %ret8 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs7 )
  %arr9 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret8, { i32, [ 0 x i32 ] }** %arr9
  %_lhs10 = load { i32, [ 0 x i32 ] }** %arr9
  %ret11 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs10 )
  ret i8* %ret11
}


