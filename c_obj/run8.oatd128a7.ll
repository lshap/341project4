declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh228:
  ret void
}


define i32 @program (i32 %argc577, { i32, [ 0 x i8* ] }* %argv575){

__fresh227:
  %argc_slot578 = alloca i32
  store i32 %argc577, i32* %argc_slot578
  %argv_slot576 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv575, { i32, [ 0 x i8* ] }** %argv_slot576
  %array_ptr579 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array580 = bitcast { i32, [ 0 x i32 ] }* %array_ptr579 to { i32, [ 0 x i32 ] }* 
  %index_ptr581 = getelementptr { i32, [ 0 x i32 ] }* %array580, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr581
  %index_ptr582 = getelementptr { i32, [ 0 x i32 ] }* %array580, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr582
  %arr583 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array580, { i32, [ 0 x i32 ] }** %arr583
  %index_ptr584 = getelementptr { i32, [ 0 x i32 ] }** %arr583, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs585 = load { i32, [ 0 x i32 ] }** %arr583
  ret { i32, [ 0 x i32 ] }* %_lhs585
}


