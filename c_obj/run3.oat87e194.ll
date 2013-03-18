declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr557 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr557.init
define void @oat_init (){

__fresh179:
  call void @arr557.init(  )
  ret void
}


define i32 @program (i32 %argc560, { i32, [ 0 x i8* ] }* %argv558){

__fresh178:
  %argc_slot561 = alloca i32
  store i32 %argc560, i32* %argc_slot561
  %argv_slot559 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv558, { i32, [ 0 x i8* ] }** %argv_slot559
  %index_ptr562 = getelementptr { i32, [ 0 x i32 ] }** @arr557, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs563 = load { i32, [ 0 x i32 ] }** @arr557
  ret { i32, [ 0 x i32 ] }* %_lhs563
}


define void @arr557.init (){

__fresh177:
  %array_ptr553 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array554 = bitcast { i32, [ 0 x i32 ] }* %array_ptr553 to { i32, [ 0 x i32 ] }* 
  %index_ptr555 = getelementptr { i32, [ 0 x i32 ] }* %array554, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr555
  %index_ptr556 = getelementptr { i32, [ 0 x i32 ] }* %array554, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr556
  store { i32, [ 0 x i32 ] }* %array554, { i32, [ 0 x i32 ] }** @arr557
  ret void
}


