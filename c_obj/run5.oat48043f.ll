declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr576 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr576.init
define void @oat_init (){

__fresh225:
  call void @arr576.init(  )
  ret void
}


define i32 @program (i32 %argc579, { i32, [ 0 x i8* ] }* %argv577){

__fresh224:
  %argc_slot580 = alloca i32
  store i32 %argc579, i32* %argc_slot580
  %argv_slot578 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv577, { i32, [ 0 x i8* ] }** %argv_slot578
  %index_ptr581 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr576, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr582 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr576, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs583 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr576
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs583
}


define void @arr576.init (){

__fresh223:
  %array_ptr564 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array565 = bitcast { i32, [ 0 x i32 ] }* %array_ptr564 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr566 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array567 = bitcast { i32, [ 0 x i32 ] }* %array_ptr566 to { i32, [ 0 x i32 ] }* 
  %index_ptr568 = getelementptr { i32, [ 0 x i32 ] }* %array567, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr568
  %index_ptr569 = getelementptr { i32, [ 0 x i32 ] }* %array567, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr569
  %index_ptr570 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array565, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array567, { i32, [ 0 x i32 ] }** %index_ptr570
  %array_ptr571 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array572 = bitcast { i32, [ 0 x i32 ] }* %array_ptr571 to { i32, [ 0 x i32 ] }* 
  %index_ptr573 = getelementptr { i32, [ 0 x i32 ] }* %array572, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr573
  %index_ptr574 = getelementptr { i32, [ 0 x i32 ] }* %array572, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr574
  %index_ptr575 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array565, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array572, { i32, [ 0 x i32 ] }** %index_ptr575
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array565, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr576
  ret void
}


