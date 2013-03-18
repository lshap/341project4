declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2835 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2835.init
define void @oat_init (){

__fresh787:
  call void @arr2835.init(  )
  ret void
}


define i32 @program (i32 %argc2838, { i32, [ 0 x i8* ] }* %argv2836){

__fresh786:
  %argc_slot2839 = alloca i32
  store i32 %argc2838, i32* %argc_slot2839
  %argv_slot2837 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2836, { i32, [ 0 x i8* ] }** %argv_slot2837
  %index_ptr2840 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2835, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2841 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2835, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2842 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2835
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2842
}


define void @arr2835.init (){

__fresh785:
  %array_ptr2823 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2824 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2823 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2825 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2826 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2825 to { i32, [ 0 x i32 ] }* 
  %index_ptr2827 = getelementptr { i32, [ 0 x i32 ] }* %array2826, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2827
  %index_ptr2828 = getelementptr { i32, [ 0 x i32 ] }* %array2826, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2828
  %index_ptr2829 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2824, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2826, { i32, [ 0 x i32 ] }** %index_ptr2829
  %array_ptr2830 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2831 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2830 to { i32, [ 0 x i32 ] }* 
  %index_ptr2832 = getelementptr { i32, [ 0 x i32 ] }* %array2831, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2832
  %index_ptr2833 = getelementptr { i32, [ 0 x i32 ] }* %array2831, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2833
  %index_ptr2834 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2824, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2831, { i32, [ 0 x i32 ] }** %index_ptr2834
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2824, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2835
  ret void
}


