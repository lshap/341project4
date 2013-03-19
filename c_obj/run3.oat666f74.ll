declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr548 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr548.init
define void @oat_init (){

__fresh219:
  call void @arr548.init(  )
  ret void
}


define i32 @program (i32 %argc551, { i32, [ 0 x i8* ] }* %argv549){

__fresh218:
  %argc_slot552 = alloca i32
  store i32 %argc551, i32* %argc_slot552
  %argv_slot550 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv549, { i32, [ 0 x i8* ] }** %argv_slot550
  %index_ptr553 = getelementptr { i32, [ 0 x i32 ] }** @arr548, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs554 = load { i32, [ 0 x i32 ] }** @arr548
  ret { i32, [ 0 x i32 ] }* %_lhs554
}


define void @arr548.init (){

__fresh217:
  %array_ptr544 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array545 = bitcast { i32, [ 0 x i32 ] }* %array_ptr544 to { i32, [ 0 x i32 ] }* 
  %index_ptr546 = getelementptr { i32, [ 0 x i32 ] }* %array545, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr546
  %index_ptr547 = getelementptr { i32, [ 0 x i32 ] }* %array545, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr547
  store { i32, [ 0 x i32 ] }* %array545, { i32, [ 0 x i32 ] }** @arr548
  ret void
}


