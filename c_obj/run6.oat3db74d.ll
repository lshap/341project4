declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2839 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2839.init
define void @oat_init (){

__fresh1002:
  call void @arr2839.init(  )
  ret void
}


define i32 @program (i32 %argc2842, { i32, [ 0 x i8* ] }* %argv2840){

__fresh1001:
  %argc_slot2843 = alloca i32
  store i32 %argc2842, i32* %argc_slot2843
  %argv_slot2841 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2840, { i32, [ 0 x i8* ] }** %argv_slot2841
  %index_ptr2844 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2839, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2845 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2839, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2846 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2839
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2846
}


define void @arr2839.init (){

__fresh1000:
  %array_ptr2827 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2828 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2827 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2829 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2830 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2829 to { i32, [ 0 x i32 ] }* 
  %index_ptr2831 = getelementptr { i32, [ 0 x i32 ] }* %array2830, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2831
  %index_ptr2832 = getelementptr { i32, [ 0 x i32 ] }* %array2830, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2832
  %index_ptr2833 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2828, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2830, { i32, [ 0 x i32 ] }** %index_ptr2833
  %array_ptr2834 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2835 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2834 to { i32, [ 0 x i32 ] }* 
  %index_ptr2836 = getelementptr { i32, [ 0 x i32 ] }* %array2835, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2836
  %index_ptr2837 = getelementptr { i32, [ 0 x i32 ] }* %array2835, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2837
  %index_ptr2838 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2828, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2835, { i32, [ 0 x i32 ] }** %index_ptr2838
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2828, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2839
  ret void
}


