declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr567 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr567.init
define void @oat_init (){

__fresh224:
  call void @arr567.init(  )
  ret void
}


define i32 @program (i32 %argc570, { i32, [ 0 x i8* ] }* %argv568){

__fresh223:
  %argc_slot571 = alloca i32
  store i32 %argc570, i32* %argc_slot571
  %argv_slot569 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv568, { i32, [ 0 x i8* ] }** %argv_slot569
  %index_ptr572 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr567, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr573 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr567, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs574 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr567
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs574
}


define void @arr567.init (){

__fresh222:
  %array_ptr555 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array556 = bitcast { i32, [ 0 x i32 ] }* %array_ptr555 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr557 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array558 = bitcast { i32, [ 0 x i32 ] }* %array_ptr557 to { i32, [ 0 x i32 ] }* 
  %index_ptr559 = getelementptr { i32, [ 0 x i32 ] }* %array558, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr559
  %index_ptr560 = getelementptr { i32, [ 0 x i32 ] }* %array558, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr560
  %index_ptr561 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array556, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array558, { i32, [ 0 x i32 ] }** %index_ptr561
  %array_ptr562 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array563 = bitcast { i32, [ 0 x i32 ] }* %array_ptr562 to { i32, [ 0 x i32 ] }* 
  %index_ptr564 = getelementptr { i32, [ 0 x i32 ] }* %array563, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr564
  %index_ptr565 = getelementptr { i32, [ 0 x i32 ] }* %array563, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr565
  %index_ptr566 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array556, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array563, { i32, [ 0 x i32 ] }** %index_ptr566
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array556, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr567
  ret void
}


