declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1026:
  ret void
}


define i32 @program (i32 %argc2897, { i32, [ 0 x i8* ] }* %argv2895){

__fresh1025:
  %argc_slot2898 = alloca i32
  store i32 %argc2897, i32* %argc_slot2898
  %argv_slot2896 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2895, { i32, [ 0 x i8* ] }** %argv_slot2896
  %array_ptr2899 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2900 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2899 to { i32, [ 0 x i32 ] }* 
  %index_ptr2901 = getelementptr { i32, [ 0 x i32 ] }* %array2900, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2901
  %index_ptr2902 = getelementptr { i32, [ 0 x i32 ] }* %array2900, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2902
  %a2903 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2900, { i32, [ 0 x i32 ] }** %a2903
  %unop2904 = sub i32 0, 1
  %index_ptr2905 = getelementptr { i32, [ 0 x i32 ] }** %a2903, i32 %unop2904
  call void @oat_array_bounds_check( i32 0, i32 %unop2904 )
  %_lhs2906 = load { i32, [ 0 x i32 ] }** %a2903
  ret { i32, [ 0 x i32 ] }* %_lhs2906
}


