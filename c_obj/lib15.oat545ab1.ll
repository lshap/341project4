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


define i32 @program (i32 %argc2962, { i32, [ 0 x i8* ] }* %argv2960){

__fresh816:
  %argc_slot2963 = alloca i32
  store i32 %argc2962, i32* %argc_slot2963
  %argv_slot2961 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2960, { i32, [ 0 x i8* ] }** %argv_slot2961
  %index_ptr2964 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot2961, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2965 = load { i32, [ 0 x i8* ] }** %argv_slot2961
  %ret2966 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs2965, i32 3, i32 5 )
  call void @print_string( i8* %ret2966 )
  ret i32 0
}


define i8* @sub (i8* %str2940, i32 %start2938, i32 %len2936){

__fresh812:
  %str_slot2941 = alloca i8*
  store i8* %str2940, i8** %str_slot2941
  %start_slot2939 = alloca i32
  store i32 %start2938, i32* %start_slot2939
  %len_slot2937 = alloca i32
  store i32 %len2936, i32* %len_slot2937
  %_lhs2942 = load i8** %str_slot2941
  %ret2943 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2942 )
  %arr2944 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2943, { i32, [ 0 x i32 ] }** %arr2944
  %_lhs2945 = load i32* %len_slot2937
  %array_ptr2946 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs2945 )
  %array2947 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2946 to { i32, [ 0 x i32 ] }* 
  %index_ptr2948 = getelementptr { i32, [ 0 x i32 ] }* %array2947, i32 0, i32 1, i32 0
  store i32 %_lhs2945, i32* %index_ptr2948
  store i32 0, i32* %index_ptr2949
  br label %__compare809

__fresh813:
  br label %__compare809

__compare809:
  %comparison_result2950 = icmp slt i32* %index_ptr2949, %_lhs2945
  br i1 %comparison_result2950, label %__body810, label %__end811

__fresh814:
  br label %__body810

__body810:
  store i32* %index_ptr2949, i32* %i2951
  %_lhs2952 = load i32* %i2951
  %_lhs2953 = load i32* %start_slot2939
  %bop2954 = add i32 %_lhs2952, %_lhs2953
  %index_ptr2955 = getelementptr { i32, [ 0 x i32 ] }** %arr2944, i32 %bop2954
  call void @oat_array_bounds_check( i32 0, i32 %bop2954 )
  %_lhs2956 = load { i32, [ 0 x i32 ] }** %arr2944
  %index_ptr2949 = add i32* %index_ptr2949, 1
  br label %__compare809

__fresh815:
  br label %__end811

__end811:
  %r2957 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array2947, { i32, [ 0 x i32 ] }** %r2957
  %_lhs2958 = load { i32, [ 0 x i32 ] }** %r2957
  %ret2959 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2958 )
  ret i8* %ret2959
}


