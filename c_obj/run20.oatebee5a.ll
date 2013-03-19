declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh35:
  ret void
}


define i32 @program (i32 %argc112, { i32, [ 0 x i8* ] }* %argv110){

__fresh34:
  %argc_slot113 = alloca i32
  store i32 %argc112, i32* %argc_slot113
  %argv_slot111 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv110, { i32, [ 0 x i8* ] }** %argv_slot111
  %array_ptr114 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array115 = bitcast { i32, [ 0 x i32 ] }* %array_ptr114 to { i32, [ 0 x i32 ] }* 
  %unop116 = sub i32 0, 1
  %index_ptr117 = getelementptr { i32, [ 0 x i32 ] }* %array115, i32 0, i32 1, i32 0
  store i32 %unop116, i32* %index_ptr117
  %unop118 = sub i32 0, 100
  %index_ptr119 = getelementptr { i32, [ 0 x i32 ] }* %array115, i32 0, i32 1, i32 1
  store i32 %unop118, i32* %index_ptr119
  %ret120 = call i32 @f (  )
  %index_ptr121 = getelementptr { i32, [ 0 x i32 ] }* %array115, i32 0, i32 1, i32 2
  store i32 %ret120, i32* %index_ptr121
  %a122 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array115, { i32, [ 0 x i32 ] }** %a122
  %index_ptr123 = getelementptr { i32, [ 0 x i32 ] }** %a122, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs124 = load { i32, [ 0 x i32 ] }** %a122
  ret { i32, [ 0 x i32 ] }* %_lhs124
}


define i32 @f (){

__fresh33:
  ret i32 19
}


