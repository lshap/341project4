declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh136:
  ret void
}


define i32 @program (i32 %argc554, { i32, [ 0 x i8* ] }* %argv552){

__fresh135:
  %argc_slot555 = alloca i32
  store i32 %argc554, i32* %argc_slot555
  %argv_slot553 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv552, { i32, [ 0 x i8* ] }** %argv_slot553
  %array_ptr556 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array557 = bitcast { i32, [ 0 x i32 ] }* %array_ptr556 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr558 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array559 = bitcast { i32, [ 0 x i32 ] }* %array_ptr558 to { i32, [ 0 x i32 ] }* 
  %index_ptr560 = getelementptr { i32, [ 0 x i32 ] }* %array559, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr560
  %index_ptr561 = getelementptr { i32, [ 0 x i32 ] }* %array559, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr561
  %index_ptr562 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array557, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array559, { i32, [ 0 x i32 ] }** %index_ptr562
  %array_ptr563 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array564 = bitcast { i32, [ 0 x i32 ] }* %array_ptr563 to { i32, [ 0 x i32 ] }* 
  %index_ptr565 = getelementptr { i32, [ 0 x i32 ] }* %array564, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr565
  %index_ptr566 = getelementptr { i32, [ 0 x i32 ] }* %array564, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr566
  %index_ptr567 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array557, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array564, { i32, [ 0 x i32 ] }** %index_ptr567
  %arr568 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array557, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr568
  %index_ptr569 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr568, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr571 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr568, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs573 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr568
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs573
}


