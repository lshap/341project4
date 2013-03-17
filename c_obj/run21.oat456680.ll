declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i132 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by i132.init
define void @oat_init (){

__fresh33:
  call void @i132.init(  )
  ret void
}


define i32 @program (i32 %argc135, { i32, [ 0 x i8* ] }* %argv133){

__fresh32:
  %argc_slot136 = alloca i32
  store i32 %argc135, i32* %argc_slot136
  %argv_slot134 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv133, { i32, [ 0 x i8* ] }** %argv_slot134
  %index_ptr137 = getelementptr { i32, [ 0 x i32 ] }** @i132, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs139 = load { i32, [ 0 x i32 ] }** @i132
  ret { i32, [ 0 x i32 ] }* %_lhs139
}


define void @i132.init (){

__fresh31:
  %array_ptr128 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array129 = bitcast { i32, [ 0 x i32 ] }* %array_ptr128 to { i32, [ 0 x i32 ] }* 
  %index_ptr130 = getelementptr { i32, [ 0 x i32 ] }* %array129, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr130
  %index_ptr131 = getelementptr { i32, [ 0 x i32 ] }* %array129, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr131
  store { i32, [ 0 x i32 ] }* %array129, { i32, [ 0 x i32 ] }** @i132
  ret void
}


