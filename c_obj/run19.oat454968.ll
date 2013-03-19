declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh31:
  ret void
}


define i32 @program (i32 %argc97, { i32, [ 0 x i8* ] }* %argv95){

__fresh30:
  %argc_slot98 = alloca i32
  store i32 %argc97, i32* %argc_slot98
  %argv_slot96 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv95, { i32, [ 0 x i8* ] }** %argv_slot96
  %i99 = alloca i32
  store i32 999, i32* %i99
  %array_ptr100 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array101 = bitcast { i32, [ 0 x i32 ] }* %array_ptr100 to { i32, [ 0 x i32 ] }* 
  %unop102 = sub i32 0, 1
  %index_ptr103 = getelementptr { i32, [ 0 x i32 ] }* %array101, i32 0, i32 1, i32 0
  store i32 %unop102, i32* %index_ptr103
  %unop104 = sub i32 0, 100
  %index_ptr105 = getelementptr { i32, [ 0 x i32 ] }* %array101, i32 0, i32 1, i32 1
  store i32 %unop104, i32* %index_ptr105
  %_lhs106 = load i32* %i99
  %index_ptr107 = getelementptr { i32, [ 0 x i32 ] }* %array101, i32 0, i32 1, i32 2
  store i32 %_lhs106, i32* %index_ptr107
  %a108 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array101, { i32, [ 0 x i32 ] }** %a108
  %size_ptr110 = getelementptr { i32, [ 0 x i32 ] }* %a108, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr110, i32 2 )
  %index_ptr109 = getelementptr { i32, [ 0 x i32 ] }* %a108, i32 0, i32 1, i32 2
  %_lhs111 = load { i32, [ 0 x i32 ] }** %a108
  ret { i32, [ 0 x i32 ] }* %_lhs111
}


