declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh232:
  ret void
}


define i32 @program (i32 %argc597, { i32, [ 0 x i8* ] }* %argv595){

__fresh231:
  %argc_slot598 = alloca i32
  store i32 %argc597, i32* %argc_slot598
  %argv_slot596 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv595, { i32, [ 0 x i8* ] }** %argv_slot596
  %array_ptr599 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array600 = bitcast { i32, [ 0 x i32 ] }* %array_ptr599 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr601 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array602 = bitcast { i32, [ 0 x i32 ] }* %array_ptr601 to { i32, [ 0 x i32 ] }* 
  %index_ptr603 = getelementptr { i32, [ 0 x i32 ] }* %array602, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr603
  %index_ptr604 = getelementptr { i32, [ 0 x i32 ] }* %array602, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr604
  %index_ptr605 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array600, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array602, { i32, [ 0 x i32 ] }** %index_ptr605
  %array_ptr606 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array607 = bitcast { i32, [ 0 x i32 ] }* %array_ptr606 to { i32, [ 0 x i32 ] }* 
  %index_ptr608 = getelementptr { i32, [ 0 x i32 ] }* %array607, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr608
  %index_ptr609 = getelementptr { i32, [ 0 x i32 ] }* %array607, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr609
  %index_ptr610 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array600, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array607, { i32, [ 0 x i32 ] }** %index_ptr610
  %arr611 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array600, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr611
  %index_ptr612 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr611, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr613 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr611, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs614 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr611
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs614
}


