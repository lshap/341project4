declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh105:
  ret void
}


define i32 @program (i32 %argc895, { i32, [ 0 x i8* ] }* %argv893){

__fresh104:
  %argc_slot896 = alloca i32
  store i32 %argc895, i32* %argc_slot896
  %argv_slot894 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv893, { i32, [ 0 x i8* ] }** %argv_slot894
  %array_ptr897 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array898 = bitcast { i32, [ 0 x i32 ] }* %array_ptr897 to { i32, [ 0 x i32 ] }* 
  %index_ptr899 = getelementptr { i32, [ 0 x i32 ] }* %array898, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr899
  %index_ptr900 = getelementptr { i32, [ 0 x i32 ] }* %array898, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr900
  %index_ptr901 = getelementptr { i32, [ 0 x i32 ] }* %array898, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr901
  %arr902 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array898, { i32, [ 0 x i32 ] }** %arr902
  %_lhs903 = load { i32, [ 0 x i32 ] }** %arr902
  %len_ptr904 = getelementptr { i32, [ 0 x i32 ] }* %_lhs903, i32 0, i32 0
  %len905 = load i32* %len_ptr904
  %len906 = alloca i32
  store i32 %len905, i32* %len906
  %_lhs907 = load i32* %len906
  ret i32 %_lhs907
}


