declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh400:
  ret void
}


define i32 @program (i32 %argc2167, { i32, [ 0 x i8* ] }* %argv2165){

__fresh399:
  %argc_slot2168 = alloca i32
  store i32 %argc2167, i32* %argc_slot2168
  %argv_slot2166 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2165, { i32, [ 0 x i8* ] }** %argv_slot2166
  %array_ptr2169 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2170 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2169 to { i32, [ 0 x i32 ] }* 
  %index_ptr2171 = getelementptr { i32, [ 0 x i32 ] }* %array2170, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2171
  %index_ptr2172 = getelementptr { i32, [ 0 x i32 ] }* %array2170, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2172
  %a2173 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2170, { i32, [ 0 x i32 ] }** %a2173
  %unop2174 = sub i32 0, 1
  %index_ptr2175 = getelementptr { i32, [ 0 x i32 ] }** %a2173, i32 %unop2174
  call void @oat_array_bounds_check( i32 0, i32 %unop2174 )
  %_lhs2176 = load { i32, [ 0 x i32 ] }** %a2173
  ret { i32, [ 0 x i32 ] }* %_lhs2176
}


