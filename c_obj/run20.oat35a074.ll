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


define i32 @program (i32 %argc114, { i32, [ 0 x i8* ] }* %argv112){

__fresh34:
  %argc_slot115 = alloca i32
  store i32 %argc114, i32* %argc_slot115
  %argv_slot113 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv112, { i32, [ 0 x i8* ] }** %argv_slot113
  %array_ptr116 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array117 = bitcast { i32, [ 0 x i32 ] }* %array_ptr116 to { i32, [ 0 x i32 ] }* 
  %unop118 = sub i32 0, 1
  %index_ptr119 = getelementptr { i32, [ 0 x i32 ] }* %array117, i32 0, i32 1, i32 0
  store i32 %unop118, i32* %index_ptr119
  %unop120 = sub i32 0, 100
  %index_ptr121 = getelementptr { i32, [ 0 x i32 ] }* %array117, i32 0, i32 1, i32 1
  store i32 %unop120, i32* %index_ptr121
  %ret122 = call i32 @f (  )
  %index_ptr123 = getelementptr { i32, [ 0 x i32 ] }* %array117, i32 0, i32 1, i32 2
  store i32 %ret122, i32* %index_ptr123
  %a124 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array117, { i32, [ 0 x i32 ] }** %a124
  %size_ptr126 = getelementptr { i32, [ 0 x i32 ] }* %a124, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr126, i32 2 )
  %index_ptr125 = getelementptr { i32, [ 0 x i32 ] }* %a124, i32 0, i32 1, i32 2
  %_lhs127 = load { i32, [ 0 x i32 ] }** %a124
  ret { i32, [ 0 x i32 ] }* %_lhs127
}


define i32 @f (){

__fresh33:
  ret i32 19
}


