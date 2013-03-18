declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh806:
  ret void
}


define i32 @program (i32 %argc2891, { i32, [ 0 x i8* ] }* %argv2889){

__fresh805:
  %argc_slot2892 = alloca i32
  store i32 %argc2891, i32* %argc_slot2892
  %argv_slot2890 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2889, { i32, [ 0 x i8* ] }** %argv_slot2890
  %array_ptr2893 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2894 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2893 to { i32, [ 0 x i32 ] }* 
  %index_ptr2895 = getelementptr { i32, [ 0 x i32 ] }* %array2894, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2895
  %index_ptr2896 = getelementptr { i32, [ 0 x i32 ] }* %array2894, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2896
  %a2897 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2894, { i32, [ 0 x i32 ] }** %a2897
  %unop2898 = sub i32 0, 1
  %index_ptr2899 = getelementptr { i32, [ 0 x i32 ] }** %a2897, i32 %unop2898
  call void @oat_array_bounds_check( i32 0, i32 %unop2898 )
  %_lhs2900 = load { i32, [ 0 x i32 ] }** %a2897
  ret { i32, [ 0 x i32 ] }* %_lhs2900
}


