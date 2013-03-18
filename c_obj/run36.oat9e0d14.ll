declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh703:
  ret void
}


define i32 @program (i32 %argc2789, { i32, [ 0 x i8* ] }* %argv2787){

__fresh702:
  %argc_slot2790 = alloca i32
  store i32 %argc2789, i32* %argc_slot2790
  %argv_slot2788 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2787, { i32, [ 0 x i8* ] }** %argv_slot2788
  %array_ptr2791 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2792 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2791 to { i32, [ 0 x i32 ] }* 
  %index_ptr2793 = getelementptr { i32, [ 0 x i32 ] }* %array2792, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2793
  %index_ptr2794 = getelementptr { i32, [ 0 x i32 ] }* %array2792, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2794
  %a2795 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2792, { i32, [ 0 x i32 ] }** %a2795
  %unop2796 = sub i32 0, 1
  %index_ptr2797 = getelementptr { i32, [ 0 x i32 ] }** %a2795, i32 %unop2796
  call void @oat_array_bounds_check( i32 0, i32 %unop2796 )
  %_lhs2798 = load { i32, [ 0 x i32 ] }** %a2795
  ret { i32, [ 0 x i32 ] }* %_lhs2798
}


