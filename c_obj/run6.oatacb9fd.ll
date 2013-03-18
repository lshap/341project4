declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2848 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2848.init
define void @oat_init (){

__fresh787:
  call void @arr2848.init(  )
  ret void
}


define i32 @program (i32 %argc2851, { i32, [ 0 x i8* ] }* %argv2849){

__fresh786:
  %argc_slot2852 = alloca i32
  store i32 %argc2851, i32* %argc_slot2852
  %argv_slot2850 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2849, { i32, [ 0 x i8* ] }** %argv_slot2850
  %index_ptr2853 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2848, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2854 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2848, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2855 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2848
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2855
}


define void @arr2848.init (){

__fresh785:
  %array_ptr2836 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2837 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2836 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2838 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2839 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2838 to { i32, [ 0 x i32 ] }* 
  %index_ptr2840 = getelementptr { i32, [ 0 x i32 ] }* %array2839, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2840
  %index_ptr2841 = getelementptr { i32, [ 0 x i32 ] }* %array2839, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2841
  %index_ptr2842 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2837, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2839, { i32, [ 0 x i32 ] }** %index_ptr2842
  %array_ptr2843 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2844 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2843 to { i32, [ 0 x i32 ] }* 
  %index_ptr2845 = getelementptr { i32, [ 0 x i32 ] }* %array2844, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2845
  %index_ptr2846 = getelementptr { i32, [ 0 x i32 ] }* %array2844, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2846
  %index_ptr2847 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2837, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2844, { i32, [ 0 x i32 ] }** %index_ptr2847
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2837, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2848
  ret void
}


