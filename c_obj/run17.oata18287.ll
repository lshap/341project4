declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1025:
  ret void
}


define i32 @program (i32 %argc2878, { i32, [ 0 x i8* ] }* %argv2876){

__fresh1018:
  %argc_slot2879 = alloca i32
  store i32 %argc2878, i32* %argc_slot2879
  %argv_slot2877 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2876, { i32, [ 0 x i8* ] }** %argv_slot2877
  %x2880 = alloca i32
  store i32 10, i32* %x2880
  %array_ptr2881 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2882 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2881 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr2883 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2882, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2883
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr2884
  br label %__compare1015

__fresh1019:
  br label %__compare1015

__compare1015:
  %comparison_result2885 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr2884, 3
  br i1 %comparison_result2885, label %__body1016, label %__end1017

__fresh1020:
  br label %__body1016

__body1016:
  store { i32, [ 0 x i32 ] }** %index_ptr2884, i32* %i2886
  %array_ptr2887 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2888 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2887 to { i32, [ 0 x i32 ] }* 
  %index_ptr2889 = getelementptr { i32, [ 0 x i32 ] }* %array2888, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2889
  store i32 0, i32* %index_ptr2890
  br label %__compare1012

__fresh1021:
  br label %__compare1012

__compare1012:
  %comparison_result2891 = icmp slt i32* %index_ptr2890, 3
  br i1 %comparison_result2891, label %__body1013, label %__end1014

__fresh1022:
  br label %__body1013

__body1013:
  store i32* %index_ptr2890, i32* %j2892
  %_lhs2893 = load i32* %x2880
  %_lhs2894 = load i32* %i2886
  %bop2895 = add i32 %_lhs2893, %_lhs2894
  %_lhs2896 = load i32* %j2892
  %bop2897 = add i32 %bop2895, %_lhs2896
  %index_ptr2890 = add i32* %index_ptr2890, 1
  br label %__compare1012

__fresh1023:
  br label %__end1014

__end1014:
  %index_ptr2884 = add { i32, [ 0 x i32 ] }** %index_ptr2884, 1
  br label %__compare1015

__fresh1024:
  br label %__end1017

__end1017:
  %a2898 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2882, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2898
  %_lhs2899 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2898
  %b2900 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2899, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2900
  %index_ptr2901 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2900, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %index_ptr2902 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2900, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2903 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2900
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2903
}


