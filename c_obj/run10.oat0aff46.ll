declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr620 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr620.init
define void @oat_init (){

__fresh236:
  call void @garr620.init(  )
  ret void
}


define i32 @program (i32 %argc626, { i32, [ 0 x i8* ] }* %argv624){

__fresh235:
  %argc_slot627 = alloca i32
  store i32 %argc626, i32* %argc_slot627
  %argv_slot625 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv624, { i32, [ 0 x i8* ] }** %argv_slot625
  %index_ptr628 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr620, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs629 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr620
  %ret630 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs629 )
  %arr631 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret630, { i32, [ 0 x i32 ] }** %arr631
  %index_ptr632 = getelementptr { i32, [ 0 x i32 ] }** %arr631, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs633 = load { i32, [ 0 x i32 ] }** %arr631
  ret { i32, [ 0 x i32 ] }* %_lhs633
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr621){

__fresh234:
  %arr_slot622 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr621, { i32, [ 0 x i32 ] }** %arr_slot622
  %_lhs623 = load { i32, [ 0 x i32 ] }** %arr_slot622
  ret { i32, [ 0 x i32 ] }* %_lhs623
}


define void @garr620.init (){

__fresh233:
  %array_ptr606 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array607 = bitcast { i32, [ 0 x i32 ] }* %array_ptr606 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr608 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array609 = bitcast { i32, [ 0 x i32 ] }* %array_ptr608 to { i32, [ 0 x i32 ] }* 
  %index_ptr610 = getelementptr { i32, [ 0 x i32 ] }* %array609, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr610
  %index_ptr611 = getelementptr { i32, [ 0 x i32 ] }* %array609, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr611
  %index_ptr612 = getelementptr { i32, [ 0 x i32 ] }* %array609, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr612
  %index_ptr613 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array607, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array609, { i32, [ 0 x i32 ] }** %index_ptr613
  %array_ptr614 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array615 = bitcast { i32, [ 0 x i32 ] }* %array_ptr614 to { i32, [ 0 x i32 ] }* 
  %index_ptr616 = getelementptr { i32, [ 0 x i32 ] }* %array615, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr616
  %index_ptr617 = getelementptr { i32, [ 0 x i32 ] }* %array615, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr617
  %index_ptr618 = getelementptr { i32, [ 0 x i32 ] }* %array615, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr618
  %index_ptr619 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array607, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array615, { i32, [ 0 x i32 ] }** %index_ptr619
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array607, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr620
  ret void
}


