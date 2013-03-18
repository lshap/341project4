declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2816 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr2816.init
define void @oat_init (){

__fresh784:
  call void @arr2816.init(  )
  ret void
}


define i32 @program (i32 %argc2819, { i32, [ 0 x i8* ] }* %argv2817){

__fresh783:
  %argc_slot2820 = alloca i32
  store i32 %argc2819, i32* %argc_slot2820
  %argv_slot2818 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2817, { i32, [ 0 x i8* ] }** %argv_slot2818
  %index_ptr2821 = getelementptr { i32, [ 0 x i32 ] }** @arr2816, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs2822 = load { i32, [ 0 x i32 ] }** @arr2816
  ret { i32, [ 0 x i32 ] }* %_lhs2822
}


define void @arr2816.init (){

__fresh782:
  %array_ptr2812 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2813 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2812 to { i32, [ 0 x i32 ] }* 
  %index_ptr2814 = getelementptr { i32, [ 0 x i32 ] }* %array2813, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2814
  %index_ptr2815 = getelementptr { i32, [ 0 x i32 ] }* %array2813, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2815
  store { i32, [ 0 x i32 ] }* %array2813, { i32, [ 0 x i32 ] }** @arr2816
  ret void
}


