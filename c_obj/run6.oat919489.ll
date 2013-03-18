declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2741 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2741.init
define void @oat_init (){

__fresh698:
  call void @arr2741.init(  )
  ret void
}


define i32 @program (i32 %argc2744, { i32, [ 0 x i8* ] }* %argv2742){

__fresh697:
  %argc_slot2745 = alloca i32
  store i32 %argc2744, i32* %argc_slot2745
  %argv_slot2743 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2742, { i32, [ 0 x i8* ] }** %argv_slot2743
  %index_ptr2746 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2741, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2747 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2741, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2748 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2741
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2748
}


define void @arr2741.init (){

__fresh696:
  %array_ptr2729 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2730 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2729 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2731 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2732 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2731 to { i32, [ 0 x i32 ] }* 
  %index_ptr2733 = getelementptr { i32, [ 0 x i32 ] }* %array2732, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2733
  %index_ptr2734 = getelementptr { i32, [ 0 x i32 ] }* %array2732, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2734
  %index_ptr2735 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2730, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2732, { i32, [ 0 x i32 ] }** %index_ptr2735
  %array_ptr2736 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2737 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2736 to { i32, [ 0 x i32 ] }* 
  %index_ptr2738 = getelementptr { i32, [ 0 x i32 ] }* %array2737, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2738
  %index_ptr2739 = getelementptr { i32, [ 0 x i32 ] }* %array2737, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2739
  %index_ptr2740 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2730, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2737, { i32, [ 0 x i32 ] }** %index_ptr2740
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2730, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2741
  ret void
}


