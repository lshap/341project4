declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh705:
  ret void
}


define i32 @program (i32 %argc2801, { i32, [ 0 x i8* ] }* %argv2799){

__fresh704:
  %argc_slot2802 = alloca i32
  store i32 %argc2801, i32* %argc_slot2802
  %argv_slot2800 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2799, { i32, [ 0 x i8* ] }** %argv_slot2800
  %array_ptr2803 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2804 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2803 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2805 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2806 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2805 to { i32, [ 0 x i32 ] }* 
  %index_ptr2807 = getelementptr { i32, [ 0 x i32 ] }* %array2806, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2807
  %index_ptr2808 = getelementptr { i32, [ 0 x i32 ] }* %array2806, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2808
  %index_ptr2809 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2804, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2806, { i32, [ 0 x i32 ] }** %index_ptr2809
  %array_ptr2810 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2811 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2810 to { i32, [ 0 x i32 ] }* 
  %index_ptr2812 = getelementptr { i32, [ 0 x i32 ] }* %array2811, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2812
  %index_ptr2813 = getelementptr { i32, [ 0 x i32 ] }* %array2811, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2813
  %index_ptr2814 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2804, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2811, { i32, [ 0 x i32 ] }** %index_ptr2814
  %a2815 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2804, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2815
  %index_ptr2816 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2815, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2817 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2815, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2818 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2815
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2818
}


