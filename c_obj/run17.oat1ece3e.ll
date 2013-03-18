declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh804:
  ret void
}


define i32 @program (i32 %argc2865, { i32, [ 0 x i8* ] }* %argv2863){

__fresh797:
  %argc_slot2866 = alloca i32
  store i32 %argc2865, i32* %argc_slot2866
  %argv_slot2864 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2863, { i32, [ 0 x i8* ] }** %argv_slot2864
  %x2867 = alloca i32
  store i32 10, i32* %x2867
  %array_ptr2868 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2869 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2868 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr2870 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2869, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2870
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr2871
  br label %__compare794

__fresh798:
  br label %__compare794

__compare794:
  %comparison_result2872 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr2871, 3
  br i1 %comparison_result2872, label %__body795, label %__end796

__fresh799:
  br label %__body795

__body795:
  store { i32, [ 0 x i32 ] }** %index_ptr2871, i32 %i2873
  %array_ptr2874 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2875 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2874 to { i32, [ 0 x i32 ] }* 
  %index_ptr2876 = getelementptr { i32, [ 0 x i32 ] }* %array2875, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2876
  store i32 0, i32* %index_ptr2877
  br label %__compare791

__fresh800:
  br label %__compare791

__compare791:
  %comparison_result2878 = icmp slt i32* %index_ptr2877, 3
  br i1 %comparison_result2878, label %__body792, label %__end793

__fresh801:
  br label %__body792

__body792:
  store i32* %index_ptr2877, i32 %j2879
  %_lhs2880 = load i32* %x2867
  %bop2881 = add i32 %_lhs2880, 4
  %bop2882 = add i32 %bop2881, 4
  %index_ptr2877 = add i32* %index_ptr2877, 1
  br label %__compare791

__fresh802:
  br label %__end793

__end793:
  %index_ptr2871 = add { i32, [ 0 x i32 ] }** %index_ptr2871, 1
  br label %__compare794

__fresh803:
  br label %__end796

__end796:
  %a2883 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }*** %array2869, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2883
  %_lhs2884 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2883
  %b2885 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2884, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2885
  %index_ptr2886 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2885, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %index_ptr2887 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2885, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2888 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2885
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2888
}


