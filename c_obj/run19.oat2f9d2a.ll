declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh30:
  ret void
}


define i32 @program (i32 %argc87, { i32, [ 0 x i8* ] }* %argv85){

__fresh29:
  %argc_slot88 = alloca i32
  store i32 %argc87, i32* %argc_slot88
  %argv_slot86 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv85, { i32, [ 0 x i8* ] }** %argv_slot86
  %i89 = alloca i32
  store i32 999, i32* %i89
  %array_ptr90 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array91 = bitcast { i32, [ 0 x i32 ] }* %array_ptr90 to { i32, [ 0 x i32 ] }* 
  %unop92 = sub i32 0, 1
  %index_ptr93 = getelementptr { i32, [ 0 x i32 ] }* %array91, i32 0, i32 1, i32 0
  store i32 %unop92, i32* %index_ptr93
  %unop94 = sub i32 0, 100
  %index_ptr95 = getelementptr { i32, [ 0 x i32 ] }* %array91, i32 0, i32 1, i32 1
  store i32 %unop94, i32* %index_ptr95
  %_lhs96 = load i32* %i89
  %index_ptr97 = getelementptr { i32, [ 0 x i32 ] }* %array91, i32 0, i32 1, i32 2
  store i32 %_lhs96, i32* %index_ptr97
  %a98 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array91, { i32, [ 0 x i32 ] }** %a98
  %index_ptr99 = getelementptr { i32, [ 0 x i32 ] }** %a98, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs100 = load { i32, [ 0 x i32 ] }** %a98
  ret { i32, [ 0 x i32 ] }* %_lhs100
}


