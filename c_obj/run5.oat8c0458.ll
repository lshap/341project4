declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr530 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr530.init
define void @oat_init (){

__fresh132:
  call void @arr530.init(  )
  ret void
}


define i32 @program (i32 %argc533, { i32, [ 0 x i8* ] }* %argv531){

__fresh131:
  %argc_slot534 = alloca i32
  store i32 %argc533, i32* %argc_slot534
  %argv_slot532 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv531, { i32, [ 0 x i8* ] }** %argv_slot532
  %index_ptr535 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr530, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr537 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr530, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs539 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr530
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs539
}


define void @arr530.init (){

__fresh130:
  %array_ptr518 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array519 = bitcast { i32, [ 0 x i32 ] }* %array_ptr518 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr520 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array521 = bitcast { i32, [ 0 x i32 ] }* %array_ptr520 to { i32, [ 0 x i32 ] }* 
  %index_ptr522 = getelementptr { i32, [ 0 x i32 ] }* %array521, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr522
  %index_ptr523 = getelementptr { i32, [ 0 x i32 ] }* %array521, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr523
  %index_ptr524 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array519, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array521, { i32, [ 0 x i32 ] }** %index_ptr524
  %array_ptr525 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array526 = bitcast { i32, [ 0 x i32 ] }* %array_ptr525 to { i32, [ 0 x i32 ] }* 
  %index_ptr527 = getelementptr { i32, [ 0 x i32 ] }* %array526, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr527
  %index_ptr528 = getelementptr { i32, [ 0 x i32 ] }* %array526, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr528
  %index_ptr529 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array519, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array526, { i32, [ 0 x i32 ] }** %index_ptr529
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array519, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr530
  ret void
}


