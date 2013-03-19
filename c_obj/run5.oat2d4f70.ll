declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr593 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr593.init
define void @oat_init (){

__fresh227:
  call void @arr593.init(  )
  ret void
}


define i32 @program (i32 %argc596, { i32, [ 0 x i8* ] }* %argv594){

__fresh226:
  %argc_slot597 = alloca i32
  store i32 %argc596, i32* %argc_slot597
  %argv_slot595 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv594, { i32, [ 0 x i8* ] }** %argv_slot595
  %size_ptr599 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr593, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr599, i32 1 )
  %index_ptr598 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr593, i32 0, i32 1, i32 1
  %size_ptr601 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr593, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr601, i32 1 )
  %index_ptr600 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr593, i32 0, i32 1, i32 1
  %_lhs602 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr593
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs602
}


define void @arr593.init (){

__fresh225:
  %array_ptr581 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array582 = bitcast { i32, [ 0 x i32 ] }* %array_ptr581 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr583 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array584 = bitcast { i32, [ 0 x i32 ] }* %array_ptr583 to { i32, [ 0 x i32 ] }* 
  %index_ptr585 = getelementptr { i32, [ 0 x i32 ] }* %array584, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr585
  %index_ptr586 = getelementptr { i32, [ 0 x i32 ] }* %array584, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr586
  %index_ptr587 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array582, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array584, { i32, [ 0 x i32 ] }** %index_ptr587
  %array_ptr588 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array589 = bitcast { i32, [ 0 x i32 ] }* %array_ptr588 to { i32, [ 0 x i32 ] }* 
  %index_ptr590 = getelementptr { i32, [ 0 x i32 ] }* %array589, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr590
  %index_ptr591 = getelementptr { i32, [ 0 x i32 ] }* %array589, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr591
  %index_ptr592 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array582, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array589, { i32, [ 0 x i32 ] }** %index_ptr592
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array582, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr593
  ret void
}


