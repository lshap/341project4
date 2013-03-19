declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i120 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by i120.init
define void @oat_init (){

__fresh38:
  call void @i120.init(  )
  ret void
}


define i32 @program (i32 %argc123, { i32, [ 0 x i8* ] }* %argv121){

__fresh37:
  %argc_slot124 = alloca i32
  store i32 %argc123, i32* %argc_slot124
  %argv_slot122 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv121, { i32, [ 0 x i8* ] }** %argv_slot122
  %index_ptr125 = getelementptr { i32, [ 0 x i32 ] }** @i120, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs126 = load { i32, [ 0 x i32 ] }** @i120
  ret { i32, [ 0 x i32 ] }* %_lhs126
}


define void @i120.init (){

__fresh36:
  %array_ptr116 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array117 = bitcast { i32, [ 0 x i32 ] }* %array_ptr116 to { i32, [ 0 x i32 ] }* 
  %index_ptr118 = getelementptr { i32, [ 0 x i32 ] }* %array117, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr118
  %index_ptr119 = getelementptr { i32, [ 0 x i32 ] }* %array117, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr119
  store { i32, [ 0 x i32 ] }* %array117, { i32, [ 0 x i32 ] }** @i120
  ret void
}


