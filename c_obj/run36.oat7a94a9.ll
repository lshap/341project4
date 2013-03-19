declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1027:
  ret void
}


define i32 @program (i32 %argc2906, { i32, [ 0 x i8* ] }* %argv2904){

__fresh1026:
  %argc_slot2907 = alloca i32
  store i32 %argc2906, i32* %argc_slot2907
  %argv_slot2905 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2904, { i32, [ 0 x i8* ] }** %argv_slot2905
  %array_ptr2908 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2909 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2908 to { i32, [ 0 x i32 ] }* 
  %index_ptr2910 = getelementptr { i32, [ 0 x i32 ] }* %array2909, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2910
  %index_ptr2911 = getelementptr { i32, [ 0 x i32 ] }* %array2909, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2911
  %a2912 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2909, { i32, [ 0 x i32 ] }** %a2912
  %unop2913 = sub i32 0, 1
  %index_ptr2914 = getelementptr { i32, [ 0 x i32 ] }** %a2912, i32 %unop2913
  call void @oat_array_bounds_check( i32 0, i32 %unop2913 )
  %_lhs2915 = load { i32, [ 0 x i32 ] }** %a2912
  ret { i32, [ 0 x i32 ] }* %_lhs2915
}


