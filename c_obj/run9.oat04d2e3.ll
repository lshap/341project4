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


define i32 @program (i32 %argc536, { i32, [ 0 x i8* ] }* %argv534){

__fresh135:
  %argc_slot537 = alloca i32
  store i32 %argc536, i32* %argc_slot537
  %argv_slot535 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv534, { i32, [ 0 x i8* ] }** %argv_slot535
  %array_ptr538 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array539 = bitcast { i32, [ 0 x i32 ] }* %array_ptr538 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr540 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array541 = bitcast { i32, [ 0 x i32 ] }* %array_ptr540 to { i32, [ 0 x i32 ] }* 
  %index_ptr542 = getelementptr { i32, [ 0 x i32 ] }* %array541, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr542
  %index_ptr543 = getelementptr { i32, [ 0 x i32 ] }* %array541, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr543
  %index_ptr544 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array539, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array541, { i32, [ 0 x i32 ] }** %index_ptr544
  %array_ptr545 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array546 = bitcast { i32, [ 0 x i32 ] }* %array_ptr545 to { i32, [ 0 x i32 ] }* 
  %index_ptr547 = getelementptr { i32, [ 0 x i32 ] }* %array546, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr547
  %index_ptr548 = getelementptr { i32, [ 0 x i32 ] }* %array546, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr548
  %index_ptr549 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array539, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array546, { i32, [ 0 x i32 ] }** %index_ptr549
  %arr550 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array539, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr550
  %index_ptr552 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr550, i32 1
  %index_ptr551 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr550, i32 1
  %_lhs553 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr550
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs553
}


