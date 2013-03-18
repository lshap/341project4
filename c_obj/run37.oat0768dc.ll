declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh808:
  ret void
}


define i32 @program (i32 %argc2903, { i32, [ 0 x i8* ] }* %argv2901){

__fresh807:
  %argc_slot2904 = alloca i32
  store i32 %argc2903, i32* %argc_slot2904
  %argv_slot2902 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2901, { i32, [ 0 x i8* ] }** %argv_slot2902
  %array_ptr2905 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2906 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2905 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2907 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2908 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2907 to { i32, [ 0 x i32 ] }* 
  %index_ptr2909 = getelementptr { i32, [ 0 x i32 ] }* %array2908, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2909
  %index_ptr2910 = getelementptr { i32, [ 0 x i32 ] }* %array2908, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2910
  %index_ptr2911 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2906, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2908, { i32, [ 0 x i32 ] }** %index_ptr2911
  %array_ptr2912 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2913 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2912 to { i32, [ 0 x i32 ] }* 
  %index_ptr2914 = getelementptr { i32, [ 0 x i32 ] }* %array2913, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2914
  %index_ptr2915 = getelementptr { i32, [ 0 x i32 ] }* %array2913, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2915
  %index_ptr2916 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2906, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2913, { i32, [ 0 x i32 ] }** %index_ptr2916
  %a2917 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2906, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2917
  %index_ptr2918 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2917, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2919 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2917, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2920 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2917
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2920
}


