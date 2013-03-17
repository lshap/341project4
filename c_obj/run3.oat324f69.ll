declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr510 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr510.init
define void @oat_init (){

__fresh129:
  call void @arr510.init(  )
  ret void
}


define i32 @program (i32 %argc513, { i32, [ 0 x i8* ] }* %argv511){

__fresh128:
  %argc_slot514 = alloca i32
  store i32 %argc513, i32* %argc_slot514
  %argv_slot512 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv511, { i32, [ 0 x i8* ] }** %argv_slot512
  %index_ptr515 = getelementptr { i32, [ 0 x i32 ] }** @arr510, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs517 = load { i32, [ 0 x i32 ] }** @arr510
  ret { i32, [ 0 x i32 ] }* %_lhs517
}


define void @arr510.init (){

__fresh127:
  %array_ptr506 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array507 = bitcast { i32, [ 0 x i32 ] }* %array_ptr506 to { i32, [ 0 x i32 ] }* 
  %index_ptr508 = getelementptr { i32, [ 0 x i32 ] }* %array507, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr508
  %index_ptr509 = getelementptr { i32, [ 0 x i32 ] }* %array507, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr509
  store { i32, [ 0 x i32 ] }* %array507, { i32, [ 0 x i32 ] }** @arr510
  ret void
}


