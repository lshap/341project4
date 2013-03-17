declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr568 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr568.init
define void @oat_init (){

__fresh140:
  call void @garr568.init(  )
  ret void
}


define i32 @program (i32 %argc574, { i32, [ 0 x i8* ] }* %argv572){

__fresh139:
  %argc_slot575 = alloca i32
  store i32 %argc574, i32* %argc_slot575
  %argv_slot573 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv572, { i32, [ 0 x i8* ] }** %argv_slot573
  %index_ptr576 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr568, i32 1
  %_lhs577 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr568
  %ret578 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs577 )
  %arr579 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret578, { i32, [ 0 x i32 ] }** %arr579
  %index_ptr580 = getelementptr { i32, [ 0 x i32 ] }** %arr579, i32 1
  %_lhs581 = load { i32, [ 0 x i32 ] }** %arr579
  ret { i32, [ 0 x i32 ] }* %_lhs581
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr569){

__fresh138:
  %arr_slot570 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr569, { i32, [ 0 x i32 ] }** %arr_slot570
  %_lhs571 = load { i32, [ 0 x i32 ] }** %arr_slot570
  ret { i32, [ 0 x i32 ] }* %_lhs571
}


define void @garr568.init (){

__fresh137:
  %array_ptr554 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array555 = bitcast { i32, [ 0 x i32 ] }* %array_ptr554 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr556 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array557 = bitcast { i32, [ 0 x i32 ] }* %array_ptr556 to { i32, [ 0 x i32 ] }* 
  %index_ptr558 = getelementptr { i32, [ 0 x i32 ] }* %array557, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr558
  %index_ptr559 = getelementptr { i32, [ 0 x i32 ] }* %array557, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr559
  %index_ptr560 = getelementptr { i32, [ 0 x i32 ] }* %array557, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr560
  %index_ptr561 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array555, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array557, { i32, [ 0 x i32 ] }** %index_ptr561
  %array_ptr562 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array563 = bitcast { i32, [ 0 x i32 ] }* %array_ptr562 to { i32, [ 0 x i32 ] }* 
  %index_ptr564 = getelementptr { i32, [ 0 x i32 ] }* %array563, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr564
  %index_ptr565 = getelementptr { i32, [ 0 x i32 ] }* %array563, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr565
  %index_ptr566 = getelementptr { i32, [ 0 x i32 ] }* %array563, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr566
  %index_ptr567 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array555, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array563, { i32, [ 0 x i32 ] }** %index_ptr567
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array555, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr568
  ret void
}


