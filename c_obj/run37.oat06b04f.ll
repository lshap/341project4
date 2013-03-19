declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1029:
  ret void
}


define i32 @program (i32 %argc2909, { i32, [ 0 x i8* ] }* %argv2907){

__fresh1028:
  %argc_slot2910 = alloca i32
  store i32 %argc2909, i32* %argc_slot2910
  %argv_slot2908 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2907, { i32, [ 0 x i8* ] }** %argv_slot2908
  %array_ptr2911 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2912 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2911 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2913 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2914 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2913 to { i32, [ 0 x i32 ] }* 
  %index_ptr2915 = getelementptr { i32, [ 0 x i32 ] }* %array2914, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2915
  %index_ptr2916 = getelementptr { i32, [ 0 x i32 ] }* %array2914, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2916
  %index_ptr2917 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2912, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2914, { i32, [ 0 x i32 ] }** %index_ptr2917
  %array_ptr2918 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2919 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2918 to { i32, [ 0 x i32 ] }* 
  %index_ptr2920 = getelementptr { i32, [ 0 x i32 ] }* %array2919, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2920
  %index_ptr2921 = getelementptr { i32, [ 0 x i32 ] }* %array2919, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2921
  %index_ptr2922 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2912, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2919, { i32, [ 0 x i32 ] }** %index_ptr2922
  %a2923 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2912, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2923
  %index_ptr2924 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2923, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2925 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2923, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2926 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2923
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2926
}


