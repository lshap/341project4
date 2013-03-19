declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr573 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr573.init
define void @oat_init (){

__fresh253:
  call void @arr573.init(  )
  ret void
}


define i32 @program (i32 %argc576, { i32, [ 0 x i8* ] }* %argv574){

__fresh252:
  %argc_slot577 = alloca i32
  store i32 %argc576, i32* %argc_slot577
  %argv_slot575 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv574, { i32, [ 0 x i8* ] }** %argv_slot575
  %size_ptr579 = getelementptr { i32, [ 0 x i32 ] }* @arr573, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr579, i32 1 )
  %index_ptr578 = getelementptr { i32, [ 0 x i32 ] }* @arr573, i32 0, i32 1, i32 1
  %_lhs580 = load { i32, [ 0 x i32 ] }** @arr573
  ret { i32, [ 0 x i32 ] }* %_lhs580
}


define void @arr573.init (){

__fresh251:
  %array_ptr569 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array570 = bitcast { i32, [ 0 x i32 ] }* %array_ptr569 to { i32, [ 0 x i32 ] }* 
  %index_ptr571 = getelementptr { i32, [ 0 x i32 ] }* %array570, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr571
  %index_ptr572 = getelementptr { i32, [ 0 x i32 ] }* %array570, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr572
  store { i32, [ 0 x i32 ] }* %array570, { i32, [ 0 x i32 ] }** @arr573
  ret void
}


