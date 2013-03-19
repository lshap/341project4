declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr651 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr651.init
define void @oat_init (){

__fresh280:
  call void @garr651.init(  )
  ret void
}


define i32 @program (i32 %argc657, { i32, [ 0 x i8* ] }* %argv655){

__fresh279:
  %argc_slot658 = alloca i32
  store i32 %argc657, i32* %argc_slot658
  %argv_slot656 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv655, { i32, [ 0 x i8* ] }** %argv_slot656
  %size_ptr660 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr651, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr660, i32 1 )
  %index_ptr659 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr651, i32 0, i32 1, i32 1
  %_lhs661 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr651
  %ret662 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs661 )
  %arr663 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret662, { i32, [ 0 x i32 ] }** %arr663
  %size_ptr665 = getelementptr { i32, [ 0 x i32 ] }* %arr663, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr665, i32 1 )
  %index_ptr664 = getelementptr { i32, [ 0 x i32 ] }* %arr663, i32 0, i32 1, i32 1
  %_lhs666 = load { i32, [ 0 x i32 ] }** %arr663
  ret { i32, [ 0 x i32 ] }* %_lhs666
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr652){

__fresh278:
  %arr_slot653 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr652, { i32, [ 0 x i32 ] }** %arr_slot653
  %_lhs654 = load { i32, [ 0 x i32 ] }** %arr_slot653
  ret { i32, [ 0 x i32 ] }* %_lhs654
}


define void @garr651.init (){

__fresh277:
  %array_ptr637 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array638 = bitcast { i32, [ 0 x i32 ] }* %array_ptr637 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr639 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array640 = bitcast { i32, [ 0 x i32 ] }* %array_ptr639 to { i32, [ 0 x i32 ] }* 
  %index_ptr641 = getelementptr { i32, [ 0 x i32 ] }* %array640, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr641
  %index_ptr642 = getelementptr { i32, [ 0 x i32 ] }* %array640, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr642
  %index_ptr643 = getelementptr { i32, [ 0 x i32 ] }* %array640, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr643
  %index_ptr644 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array638, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array640, { i32, [ 0 x i32 ] }** %index_ptr644
  %array_ptr645 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array646 = bitcast { i32, [ 0 x i32 ] }* %array_ptr645 to { i32, [ 0 x i32 ] }* 
  %index_ptr647 = getelementptr { i32, [ 0 x i32 ] }* %array646, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr647
  %index_ptr648 = getelementptr { i32, [ 0 x i32 ] }* %array646, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr648
  %index_ptr649 = getelementptr { i32, [ 0 x i32 ] }* %array646, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr649
  %index_ptr650 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array638, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array646, { i32, [ 0 x i32 ] }** %index_ptr650
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array638, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr651
  ret void
}


