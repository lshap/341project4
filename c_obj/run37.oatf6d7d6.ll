declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1030:
  ret void
}


define i32 @program (i32 %argc2918, { i32, [ 0 x i8* ] }* %argv2916){

__fresh1029:
  %argc_slot2919 = alloca i32
  store i32 %argc2918, i32* %argc_slot2919
  %argv_slot2917 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2916, { i32, [ 0 x i8* ] }** %argv_slot2917
  %array_ptr2920 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2921 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2920 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2922 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2923 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2922 to { i32, [ 0 x i32 ] }* 
  %index_ptr2924 = getelementptr { i32, [ 0 x i32 ] }* %array2923, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2924
  %index_ptr2925 = getelementptr { i32, [ 0 x i32 ] }* %array2923, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2925
  %index_ptr2926 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2921, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2923, { i32, [ 0 x i32 ] }** %index_ptr2926
  %array_ptr2927 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2928 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2927 to { i32, [ 0 x i32 ] }* 
  %index_ptr2929 = getelementptr { i32, [ 0 x i32 ] }* %array2928, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2929
  %index_ptr2930 = getelementptr { i32, [ 0 x i32 ] }* %array2928, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2930
  %index_ptr2931 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2921, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2928, { i32, [ 0 x i32 ] }** %index_ptr2931
  %a2932 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2921, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2932
  %index_ptr2933 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2932, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2934 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2932, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2935 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2932
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2935
}


