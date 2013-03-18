declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2722 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr2722.init
define void @oat_init (){

__fresh695:
  call void @arr2722.init(  )
  ret void
}


define i32 @program (i32 %argc2725, { i32, [ 0 x i8* ] }* %argv2723){

__fresh694:
  %argc_slot2726 = alloca i32
  store i32 %argc2725, i32* %argc_slot2726
  %argv_slot2724 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2723, { i32, [ 0 x i8* ] }** %argv_slot2724
  %index_ptr2727 = getelementptr { i32, [ 0 x i32 ] }** @arr2722, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs2728 = load { i32, [ 0 x i32 ] }** @arr2722
  ret { i32, [ 0 x i32 ] }* %_lhs2728
}


define void @arr2722.init (){

__fresh693:
  %array_ptr2718 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2719 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2718 to { i32, [ 0 x i32 ] }* 
  %index_ptr2720 = getelementptr { i32, [ 0 x i32 ] }* %array2719, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2720
  %index_ptr2721 = getelementptr { i32, [ 0 x i32 ] }* %array2719, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2721
  store { i32, [ 0 x i32 ] }* %array2719, { i32, [ 0 x i32 ] }** @arr2722
  ret void
}


