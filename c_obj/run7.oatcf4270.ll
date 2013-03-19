declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2859 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2859.init
define void @oat_init (){

__fresh1007:
  call void @arr2859.init(  )
  ret void
}


define i32 @program (i32 %argc2862, { i32, [ 0 x i8* ] }* %argv2860){

__fresh1006:
  %argc_slot2863 = alloca i32
  store i32 %argc2862, i32* %argc_slot2863
  %argv_slot2861 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2860, { i32, [ 0 x i8* ] }** %argv_slot2861
  %index_ptr2864 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2859, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %index_ptr2865 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2859, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2866 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2859
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2866
}


define void @arr2859.init (){

__fresh1005:
  %array_ptr2847 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2848 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2847 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2849 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2850 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2849 to { i32, [ 0 x i32 ] }* 
  %index_ptr2851 = getelementptr { i32, [ 0 x i32 ] }* %array2850, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2851
  %index_ptr2852 = getelementptr { i32, [ 0 x i32 ] }* %array2850, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2852
  %index_ptr2853 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2848, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2850, { i32, [ 0 x i32 ] }** %index_ptr2853
  %array_ptr2854 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2855 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2854 to { i32, [ 0 x i32 ] }* 
  %index_ptr2856 = getelementptr { i32, [ 0 x i32 ] }* %array2855, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2856
  %index_ptr2857 = getelementptr { i32, [ 0 x i32 ] }* %array2855, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2857
  %index_ptr2858 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2848, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2855, { i32, [ 0 x i32 ] }** %index_ptr2858
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2848, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2859
  ret void
}


