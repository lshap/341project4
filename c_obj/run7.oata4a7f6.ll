declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2855 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2855.init
define void @oat_init (){

__fresh790:
  call void @arr2855.init(  )
  ret void
}


define i32 @program (i32 %argc2858, { i32, [ 0 x i8* ] }* %argv2856){

__fresh789:
  %argc_slot2859 = alloca i32
  store i32 %argc2858, i32* %argc_slot2859
  %argv_slot2857 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2856, { i32, [ 0 x i8* ] }** %argv_slot2857
  %index_ptr2860 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2855, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %index_ptr2861 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2855, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2862 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2855
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2862
}


define void @arr2855.init (){

__fresh788:
  %array_ptr2843 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2844 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2843 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2845 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2846 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2845 to { i32, [ 0 x i32 ] }* 
  %index_ptr2847 = getelementptr { i32, [ 0 x i32 ] }* %array2846, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2847
  %index_ptr2848 = getelementptr { i32, [ 0 x i32 ] }* %array2846, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2848
  %index_ptr2849 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2844, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2846, { i32, [ 0 x i32 ] }** %index_ptr2849
  %array_ptr2850 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2851 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2850 to { i32, [ 0 x i32 ] }* 
  %index_ptr2852 = getelementptr { i32, [ 0 x i32 ] }* %array2851, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2852
  %index_ptr2853 = getelementptr { i32, [ 0 x i32 ] }* %array2851, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2853
  %index_ptr2854 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2844, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2851, { i32, [ 0 x i32 ] }** %index_ptr2854
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2844, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2855
  ret void
}


