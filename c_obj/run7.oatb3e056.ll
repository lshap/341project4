declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2868 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2868.init
define void @oat_init (){

__fresh1008:
  call void @arr2868.init(  )
  ret void
}


define i32 @program (i32 %argc2871, { i32, [ 0 x i8* ] }* %argv2869){

__fresh1007:
  %argc_slot2872 = alloca i32
  store i32 %argc2871, i32* %argc_slot2872
  %argv_slot2870 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2869, { i32, [ 0 x i8* ] }** %argv_slot2870
  %index_ptr2873 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2868, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %index_ptr2874 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2868, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2875 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2868
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2875
}


define void @arr2868.init (){

__fresh1006:
  %array_ptr2856 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2857 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2856 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2858 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2859 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2858 to { i32, [ 0 x i32 ] }* 
  %index_ptr2860 = getelementptr { i32, [ 0 x i32 ] }* %array2859, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2860
  %index_ptr2861 = getelementptr { i32, [ 0 x i32 ] }* %array2859, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2861
  %index_ptr2862 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2857, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2859, { i32, [ 0 x i32 ] }** %index_ptr2862
  %array_ptr2863 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2864 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2863 to { i32, [ 0 x i32 ] }* 
  %index_ptr2865 = getelementptr { i32, [ 0 x i32 ] }* %array2864, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2865
  %index_ptr2866 = getelementptr { i32, [ 0 x i32 ] }* %array2864, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2866
  %index_ptr2867 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2857, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2864, { i32, [ 0 x i32 ] }** %index_ptr2867
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2857, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2868
  ret void
}


