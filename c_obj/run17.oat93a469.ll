declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1024:
  ret void
}


define i32 @program (i32 %argc2869, { i32, [ 0 x i8* ] }* %argv2867){

__fresh1017:
  %argc_slot2870 = alloca i32
  store i32 %argc2869, i32* %argc_slot2870
  %argv_slot2868 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2867, { i32, [ 0 x i8* ] }** %argv_slot2868
  %x2871 = alloca i32
  store i32 10, i32* %x2871
  %array_ptr2872 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2873 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2872 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr2874 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2873, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2874
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr2875
  br label %__compare1014

__fresh1018:
  br label %__compare1014

__compare1014:
  %comparison_result2876 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr2875, 3
  br i1 %comparison_result2876, label %__body1015, label %__end1016

__fresh1019:
  br label %__body1015

__body1015:
  store { i32, [ 0 x i32 ] }** %index_ptr2875, i32* %i2877
  %array_ptr2878 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2879 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2878 to { i32, [ 0 x i32 ] }* 
  %index_ptr2880 = getelementptr { i32, [ 0 x i32 ] }* %array2879, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2880
  store i32 0, i32* %index_ptr2881
  br label %__compare1011

__fresh1020:
  br label %__compare1011

__compare1011:
  %comparison_result2882 = icmp slt i32* %index_ptr2881, 3
  br i1 %comparison_result2882, label %__body1012, label %__end1013

__fresh1021:
  br label %__body1012

__body1012:
  store i32* %index_ptr2881, i32* %j2883
  %_lhs2884 = load i32* %x2871
  %_lhs2885 = load i32* %i2877
  %bop2886 = add i32 %_lhs2884, %_lhs2885
  %_lhs2887 = load i32* %j2883
  %bop2888 = add i32 %bop2886, %_lhs2887
  %index_ptr2881 = add i32* %index_ptr2881, 1
  br label %__compare1011

__fresh1022:
  br label %__end1013

__end1013:
  %index_ptr2875 = add { i32, [ 0 x i32 ] }** %index_ptr2875, 1
  br label %__compare1014

__fresh1023:
  br label %__end1016

__end1016:
  %a2889 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array2873, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2889
  %_lhs2890 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2889
  %b2891 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2890, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2891
  %index_ptr2892 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2891, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %index_ptr2893 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2891, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2894 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2891
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2894
}


