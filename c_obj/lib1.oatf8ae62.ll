declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh166:
  ret void
}


define i32 @program (i32 %argc1254, { i32, [ 0 x i8* ] }* %argv1252){

__fresh165:
  %argc_slot1255 = alloca i32
  store i32 %argc1254, i32* %argc_slot1255
  %argv_slot1253 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1252, { i32, [ 0 x i8* ] }** %argv_slot1253
  %array_ptr1256 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1257 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1256 to { i32, [ 0 x i32 ] }* 
  %index_ptr1258 = getelementptr { i32, [ 0 x i32 ] }* %array1257, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1258
  %index_ptr1259 = getelementptr { i32, [ 0 x i32 ] }* %array1257, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1259
  %index_ptr1260 = getelementptr { i32, [ 0 x i32 ] }* %array1257, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1260
  %arr1261 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1257, { i32, [ 0 x i32 ] }** %arr1261
  %_lhs1262 = load { i32, [ 0 x i32 ] }** %arr1261
  %len_ptr1263 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1262, i32 0, i32 0
  %len1264 = load i32* %len_ptr1263
  %len1265 = alloca i32
  store i32 %len1264, i32* %len1265
  %_lhs1266 = load i32* %len1265
  ret i32 %_lhs1266
}


