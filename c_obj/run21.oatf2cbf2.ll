declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i129 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by i129.init
define void @oat_init (){

__fresh33:
  call void @i129.init(  )
  ret void
}


define i32 @program (i32 %argc132, { i32, [ 0 x i8* ] }* %argv130){

__fresh32:
  %argc_slot133 = alloca i32
  store i32 %argc132, i32* %argc_slot133
  %argv_slot131 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv130, { i32, [ 0 x i8* ] }** %argv_slot131
  %index_ptr134 = getelementptr { i32, [ 0 x i32 ] }** @i129, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs135 = load { i32, [ 0 x i32 ] }** @i129
  ret { i32, [ 0 x i32 ] }* %_lhs135
}


define void @i129.init (){

__fresh31:
  %array_ptr125 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array126 = bitcast { i32, [ 0 x i32 ] }* %array_ptr125 to { i32, [ 0 x i32 ] }* 
  %index_ptr127 = getelementptr { i32, [ 0 x i32 ] }* %array126, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr127
  %index_ptr128 = getelementptr { i32, [ 0 x i32 ] }* %array126, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr128
  store { i32, [ 0 x i32 ] }* %array126, { i32, [ 0 x i32 ] }** @i129
  ret void
}


