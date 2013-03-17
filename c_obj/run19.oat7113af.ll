declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh27:
  ret void
}


define i32 @program (i32 %argc96, { i32, [ 0 x i8* ] }* %argv94){

__fresh26:
  %argc_slot97 = alloca i32
  store i32 %argc96, i32* %argc_slot97
  %argv_slot95 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv94, { i32, [ 0 x i8* ] }** %argv_slot95
  %i98 = alloca i32
  store i32 999, i32* %i98
  %array_ptr99 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array100 = bitcast { i32, [ 0 x i32 ] }* %array_ptr99 to { i32, [ 0 x i32 ] }* 
  %unop101 = sub i32 0, 1
  %index_ptr102 = getelementptr { i32, [ 0 x i32 ] }* %array100, i32 0, i32 1, i32 0
  store i32 %unop101, i32* %index_ptr102
  %unop103 = sub i32 0, 100
  %index_ptr104 = getelementptr { i32, [ 0 x i32 ] }* %array100, i32 0, i32 1, i32 1
  store i32 %unop103, i32* %index_ptr104
  %_lhs105 = load i32* %i98
  %index_ptr106 = getelementptr { i32, [ 0 x i32 ] }* %array100, i32 0, i32 1, i32 2
  store i32 %_lhs105, i32* %index_ptr106
  %a107 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array100, { i32, [ 0 x i32 ] }** %a107
  %index_ptr108 = getelementptr { i32, [ 0 x i32 ] }** %a107, i32 2
  %_lhs109 = load { i32, [ 0 x i32 ] }** %a107
  ret { i32, [ 0 x i32 ] }* %_lhs109
}


