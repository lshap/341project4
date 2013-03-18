declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2761 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2761.init
define void @oat_init (){

__fresh701:
  call void @arr2761.init(  )
  ret void
}


define i32 @program (i32 %argc2764, { i32, [ 0 x i8* ] }* %argv2762){

__fresh700:
  %argc_slot2765 = alloca i32
  store i32 %argc2764, i32* %argc_slot2765
  %argv_slot2763 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2762, { i32, [ 0 x i8* ] }** %argv_slot2763
  %index_ptr2766 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2761, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %index_ptr2767 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2761, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2768 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2761
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2768
}


define void @arr2761.init (){

__fresh699:
  %array_ptr2749 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2750 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2749 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2751 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2752 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2751 to { i32, [ 0 x i32 ] }* 
  %index_ptr2753 = getelementptr { i32, [ 0 x i32 ] }* %array2752, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2753
  %index_ptr2754 = getelementptr { i32, [ 0 x i32 ] }* %array2752, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2754
  %index_ptr2755 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2750, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2752, { i32, [ 0 x i32 ] }** %index_ptr2755
  %array_ptr2756 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2757 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2756 to { i32, [ 0 x i32 ] }* 
  %index_ptr2758 = getelementptr { i32, [ 0 x i32 ] }* %array2757, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2758
  %index_ptr2759 = getelementptr { i32, [ 0 x i32 ] }* %array2757, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2759
  %index_ptr2760 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2750, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2757, { i32, [ 0 x i32 ] }** %index_ptr2760
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2750, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2761
  ret void
}


