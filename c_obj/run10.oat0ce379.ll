declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr629 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr629.init
define void @oat_init (){

__fresh237:
  call void @garr629.init(  )
  ret void
}


define i32 @program (i32 %argc635, { i32, [ 0 x i8* ] }* %argv633){

__fresh236:
  %argc_slot636 = alloca i32
  store i32 %argc635, i32* %argc_slot636
  %argv_slot634 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv633, { i32, [ 0 x i8* ] }** %argv_slot634
  %index_ptr637 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr629, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs638 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr629
  %ret639 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs638 )
  %arr640 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret639, { i32, [ 0 x i32 ] }** %arr640
  %index_ptr641 = getelementptr { i32, [ 0 x i32 ] }** %arr640, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs642 = load { i32, [ 0 x i32 ] }** %arr640
  ret { i32, [ 0 x i32 ] }* %_lhs642
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr630){

__fresh235:
  %arr_slot631 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr630, { i32, [ 0 x i32 ] }** %arr_slot631
  %_lhs632 = load { i32, [ 0 x i32 ] }** %arr_slot631
  ret { i32, [ 0 x i32 ] }* %_lhs632
}


define void @garr629.init (){

__fresh234:
  %array_ptr615 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array616 = bitcast { i32, [ 0 x i32 ] }* %array_ptr615 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr617 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array618 = bitcast { i32, [ 0 x i32 ] }* %array_ptr617 to { i32, [ 0 x i32 ] }* 
  %index_ptr619 = getelementptr { i32, [ 0 x i32 ] }* %array618, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr619
  %index_ptr620 = getelementptr { i32, [ 0 x i32 ] }* %array618, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr620
  %index_ptr621 = getelementptr { i32, [ 0 x i32 ] }* %array618, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr621
  %index_ptr622 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array616, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array618, { i32, [ 0 x i32 ] }** %index_ptr622
  %array_ptr623 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array624 = bitcast { i32, [ 0 x i32 ] }* %array_ptr623 to { i32, [ 0 x i32 ] }* 
  %index_ptr625 = getelementptr { i32, [ 0 x i32 ] }* %array624, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr625
  %index_ptr626 = getelementptr { i32, [ 0 x i32 ] }* %array624, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr626
  %index_ptr627 = getelementptr { i32, [ 0 x i32 ] }* %array624, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr627
  %index_ptr628 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array616, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array624, { i32, [ 0 x i32 ] }** %index_ptr628
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array616, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr629
  ret void
}


