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


define i32 @program (i32 %argc17, { i32, [ 0 x i8* ] }* %argv15){

__fresh1:
  %argc_slot18 = alloca i32
  store i32 %argc17, i32* %argc_slot18
  %argv_slot16 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv15, { i32, [ 0 x i8* ] }** %argv_slot16
  %index_ptr19 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot16, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs20 = load { i32, [ 0 x i8* ] }** %argv_slot16
  %ret21 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs20, i32 3, i32 5 )
  call void @print_string( i8* %ret21 )
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
  %array_ptr7 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array8 = bitcast { i32, [ 0 x i32 ] }* %array_ptr7 to { i32, [ 0 x i32 ] }* 
  %index_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr9
  %index_ptr10 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr10
  %index_ptr11 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr11
  %arr12 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array8, { i32, [ 0 x i32 ] }** %arr12
  %_lhs13 = load { i32, [ 0 x i32 ] }** %arr12
  %ret14 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs13 )
  ret i8* %ret14
}


