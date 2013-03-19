declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1039:
  ret void
}


define i32 @program (i32 %argc2953, { i32, [ 0 x i8* ] }* %argv2951){

__fresh1038:
  %argc_slot2954 = alloca i32
  store i32 %argc2953, i32* %argc_slot2954
  %argv_slot2952 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2951, { i32, [ 0 x i8* ] }** %argv_slot2952
  %index_ptr2955 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot2952, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2956 = load { i32, [ 0 x i8* ] }** %argv_slot2952
  %ret2957 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs2956, i32 3, i32 5 )
  call void @print_string( i8* %ret2957 )
  ret i32 0
}


define i8* @sub (i8* %str2931, i32 %start2929, i32 %len2927){

__fresh1034:
  %str_slot2932 = alloca i8*
  store i8* %str2931, i8** %str_slot2932
  %start_slot2930 = alloca i32
  store i32 %start2929, i32* %start_slot2930
  %len_slot2928 = alloca i32
  store i32 %len2927, i32* %len_slot2928
  %_lhs2933 = load i8** %str_slot2932
  %ret2934 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2933 )
  %arr2935 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2934, { i32, [ 0 x i32 ] }** %arr2935
  %_lhs2936 = load i32* %len_slot2928
  %array_ptr2937 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs2936 )
  %array2938 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2937 to { i32, [ 0 x i32 ] }* 
  %index_ptr2939 = getelementptr { i32, [ 0 x i32 ] }* %array2938, i32 0, i32 1, i32 0
  store i32 %_lhs2936, i32* %index_ptr2939
  store i32 0, i32* %index_ptr2940
  br label %__compare1031

__fresh1035:
  br label %__compare1031

__compare1031:
  %comparison_result2941 = icmp slt i32* %index_ptr2940, %_lhs2936
  br i1 %comparison_result2941, label %__body1032, label %__end1033

__fresh1036:
  br label %__body1032

__body1032:
  store i32* %index_ptr2940, i32* %i2942
  %_lhs2943 = load i32* %i2942
  %_lhs2944 = load i32* %start_slot2930
  %bop2945 = add i32 %_lhs2943, %_lhs2944
  %index_ptr2946 = getelementptr { i32, [ 0 x i32 ] }** %arr2935, i32 %bop2945
  call void @oat_array_bounds_check( i32 0, i32 %bop2945 )
  %_lhs2947 = load { i32, [ 0 x i32 ] }** %arr2935
  %index_ptr2940 = add i32* %index_ptr2940, 1
  br label %__compare1031

__fresh1037:
  br label %__end1033

__end1033:
  %r2948 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array2938, { i32, [ 0 x i32 ] }** %r2948
  %_lhs2949 = load { i32, [ 0 x i32 ] }** %r2948
  %ret2950 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2949 )
  ret i8* %ret2950
}


