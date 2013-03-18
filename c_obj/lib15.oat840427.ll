declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh817:
  ret void
}


define i32 @program (i32 %argc2946, { i32, [ 0 x i8* ] }* %argv2944){

__fresh816:
  %argc_slot2947 = alloca i32
  store i32 %argc2946, i32* %argc_slot2947
  %argv_slot2945 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2944, { i32, [ 0 x i8* ] }** %argv_slot2945
  %index_ptr2948 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot2945, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2949 = load { i32, [ 0 x i8* ] }** %argv_slot2945
  %ret2950 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs2949, i32 3, i32 5 )
  call void @print_string( i8* %ret2950 )
  ret i32 0
}


define i8* @sub (i8* %str2925, i32 %start2923, i32 %len2921){

__fresh812:
  %str_slot2926 = alloca i8*
  store i8* %str2925, i8** %str_slot2926
  %start_slot2924 = alloca i32
  store i32 %start2923, i32* %start_slot2924
  %len_slot2922 = alloca i32
  store i32 %len2921, i32* %len_slot2922
  %_lhs2927 = load i8** %str_slot2926
  %ret2928 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2927 )
  %arr2929 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2928, { i32, [ 0 x i32 ] }** %arr2929
  %_lhs2930 = load i32* %len_slot2922
  %array_ptr2931 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs2930 )
  %array2932 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2931 to { i32, [ 0 x i32 ] }* 
  %index_ptr2933 = getelementptr { i32, [ 0 x i32 ] }* %array2932, i32 0, i32 1, i32 0
  store i32 %_lhs2930, i32* %index_ptr2933
  store i32 0, i32* %index_ptr2934
  br label %__compare809

__fresh813:
  br label %__compare809

__compare809:
  %comparison_result2935 = icmp slt i32* %index_ptr2934, %_lhs2930
  br i1 %comparison_result2935, label %__body810, label %__end811

__fresh814:
  br label %__body810

__body810:
  store i32* %index_ptr2934, i32 %i2936
  %_lhs2937 = load i32* %start_slot2924
  %bop2938 = add i32 4, %_lhs2937
  %index_ptr2939 = getelementptr { i32, [ 0 x i32 ] }** %arr2929, i32 %bop2938
  call void @oat_array_bounds_check( i32 0, i32 %bop2938 )
  %_lhs2940 = load { i32, [ 0 x i32 ] }** %arr2929
  %index_ptr2934 = add i32* %index_ptr2934, 1
  br label %__compare809

__fresh815:
  br label %__end811

__end811:
  %r2941 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array2932, { i32, [ 0 x i32 ] }** %r2941
  %_lhs2942 = load { i32, [ 0 x i32 ] }** %r2941
  %ret2943 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2942 )
  ret i8* %ret2943
}


