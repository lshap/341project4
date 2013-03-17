declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr588 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr588.init
define void @oat_init (){

__fresh140:
  call void @garr588.init(  )
  ret void
}


define i32 @program (i32 %argc594, { i32, [ 0 x i8* ] }* %argv592){

__fresh139:
  %argc_slot595 = alloca i32
  store i32 %argc594, i32* %argc_slot595
  %argv_slot593 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv592, { i32, [ 0 x i8* ] }** %argv_slot593
  %index_ptr596 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr588, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs598 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr588
  %ret599 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs598 )
  %arr600 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret599, { i32, [ 0 x i32 ] }** %arr600
  %index_ptr601 = getelementptr { i32, [ 0 x i32 ] }** %arr600, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs603 = load { i32, [ 0 x i32 ] }** %arr600
  ret { i32, [ 0 x i32 ] }* %_lhs603
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr589){

__fresh138:
  %arr_slot590 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr589, { i32, [ 0 x i32 ] }** %arr_slot590
  %_lhs591 = load { i32, [ 0 x i32 ] }** %arr_slot590
  ret { i32, [ 0 x i32 ] }* %_lhs591
}


define void @garr588.init (){

__fresh137:
  %array_ptr574 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array575 = bitcast { i32, [ 0 x i32 ] }* %array_ptr574 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr576 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array577 = bitcast { i32, [ 0 x i32 ] }* %array_ptr576 to { i32, [ 0 x i32 ] }* 
  %index_ptr578 = getelementptr { i32, [ 0 x i32 ] }* %array577, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr578
  %index_ptr579 = getelementptr { i32, [ 0 x i32 ] }* %array577, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr579
  %index_ptr580 = getelementptr { i32, [ 0 x i32 ] }* %array577, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr580
  %index_ptr581 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array575, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array577, { i32, [ 0 x i32 ] }** %index_ptr581
  %array_ptr582 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array583 = bitcast { i32, [ 0 x i32 ] }* %array_ptr582 to { i32, [ 0 x i32 ] }* 
  %index_ptr584 = getelementptr { i32, [ 0 x i32 ] }* %array583, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr584
  %index_ptr585 = getelementptr { i32, [ 0 x i32 ] }* %array583, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr585
  %index_ptr586 = getelementptr { i32, [ 0 x i32 ] }* %array583, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr586
  %index_ptr587 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array575, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array583, { i32, [ 0 x i32 ] }** %index_ptr587
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array575, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr588
  ret void
}


