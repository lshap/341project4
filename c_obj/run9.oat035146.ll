declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh235:
  ret void
}


define i32 @program (i32 %argc617, { i32, [ 0 x i8* ] }* %argv615){

__fresh234:
  %argc_slot618 = alloca i32
  store i32 %argc617, i32* %argc_slot618
  %argv_slot616 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv615, { i32, [ 0 x i8* ] }** %argv_slot616
  %array_ptr619 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array620 = bitcast { i32, [ 0 x i32 ] }* %array_ptr619 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr621 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array622 = bitcast { i32, [ 0 x i32 ] }* %array_ptr621 to { i32, [ 0 x i32 ] }* 
  %index_ptr623 = getelementptr { i32, [ 0 x i32 ] }* %array622, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr623
  %index_ptr624 = getelementptr { i32, [ 0 x i32 ] }* %array622, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr624
  %index_ptr625 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array620, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array622, { i32, [ 0 x i32 ] }** %index_ptr625
  %array_ptr626 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array627 = bitcast { i32, [ 0 x i32 ] }* %array_ptr626 to { i32, [ 0 x i32 ] }* 
  %index_ptr628 = getelementptr { i32, [ 0 x i32 ] }* %array627, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr628
  %index_ptr629 = getelementptr { i32, [ 0 x i32 ] }* %array627, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr629
  %index_ptr630 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array620, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array627, { i32, [ 0 x i32 ] }** %index_ptr630
  %arr631 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array620, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr631
  %size_ptr633 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr631, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr633, i32 1 )
  %index_ptr632 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr631, i32 0, i32 1, i32 1
  %size_ptr635 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr631, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr635, i32 1 )
  %index_ptr634 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr631, i32 0, i32 1, i32 1
  %_lhs636 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr631
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs636
}


