declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr515 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr515.init
define void @oat_init (){

__fresh132:
  call void @arr515.init(  )
  ret void
}


define i32 @program (i32 %argc518, { i32, [ 0 x i8* ] }* %argv516){

__fresh131:
  %argc_slot519 = alloca i32
  store i32 %argc518, i32* %argc_slot519
  %argv_slot517 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv516, { i32, [ 0 x i8* ] }** %argv_slot517
  %index_ptr520 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr515, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr521 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr515, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs522 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr515
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs522
}


define void @arr515.init (){

__fresh130:
  %array_ptr503 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array504 = bitcast { i32, [ 0 x i32 ] }* %array_ptr503 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr505 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array506 = bitcast { i32, [ 0 x i32 ] }* %array_ptr505 to { i32, [ 0 x i32 ] }* 
  %index_ptr507 = getelementptr { i32, [ 0 x i32 ] }* %array506, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr507
  %index_ptr508 = getelementptr { i32, [ 0 x i32 ] }* %array506, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr508
  %index_ptr509 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array504, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array506, { i32, [ 0 x i32 ] }** %index_ptr509
  %array_ptr510 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array511 = bitcast { i32, [ 0 x i32 ] }* %array_ptr510 to { i32, [ 0 x i32 ] }* 
  %index_ptr512 = getelementptr { i32, [ 0 x i32 ] }* %array511, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr512
  %index_ptr513 = getelementptr { i32, [ 0 x i32 ] }* %array511, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr513
  %index_ptr514 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array504, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array511, { i32, [ 0 x i32 ] }** %index_ptr514
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array504, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr515
  ret void
}


