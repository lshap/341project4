declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2820 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr2820.init
define void @oat_init (){

__fresh997:
  call void @arr2820.init(  )
  ret void
}


define i32 @program (i32 %argc2823, { i32, [ 0 x i8* ] }* %argv2821){

__fresh996:
  %argc_slot2824 = alloca i32
  store i32 %argc2823, i32* %argc_slot2824
  %argv_slot2822 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2821, { i32, [ 0 x i8* ] }** %argv_slot2822
  %index_ptr2825 = getelementptr { i32, [ 0 x i32 ] }** @arr2820, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs2826 = load { i32, [ 0 x i32 ] }** @arr2820
  ret { i32, [ 0 x i32 ] }* %_lhs2826
}


define void @arr2820.init (){

__fresh995:
  %array_ptr2816 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2817 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2816 to { i32, [ 0 x i32 ] }* 
  %index_ptr2818 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2818
  %index_ptr2819 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2819
  store { i32, [ 0 x i32 ] }* %array2817, { i32, [ 0 x i32 ] }** @arr2820
  ret void
}


