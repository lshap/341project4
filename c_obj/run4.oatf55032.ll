declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2829 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr2829.init
define void @oat_init (){

__fresh998:
  call void @arr2829.init(  )
  ret void
}


define i32 @program (i32 %argc2832, { i32, [ 0 x i8* ] }* %argv2830){

__fresh997:
  %argc_slot2833 = alloca i32
  store i32 %argc2832, i32* %argc_slot2833
  %argv_slot2831 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2830, { i32, [ 0 x i8* ] }** %argv_slot2831
  %index_ptr2834 = getelementptr { i32, [ 0 x i32 ] }** @arr2829, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs2835 = load { i32, [ 0 x i32 ] }** @arr2829
  ret { i32, [ 0 x i32 ] }* %_lhs2835
}


define void @arr2829.init (){

__fresh996:
  %array_ptr2825 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2826 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2825 to { i32, [ 0 x i32 ] }* 
  %index_ptr2827 = getelementptr { i32, [ 0 x i32 ] }* %array2826, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2827
  %index_ptr2828 = getelementptr { i32, [ 0 x i32 ] }* %array2826, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2828
  store { i32, [ 0 x i32 ] }* %array2826, { i32, [ 0 x i32 ] }** @arr2829
  ret void
}


