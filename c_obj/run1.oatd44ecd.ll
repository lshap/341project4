declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr430 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr430.init
@i417 = global i32 42, align 4
define void @oat_init (){

__fresh118:
  call void @garr430.init(  )
  ret void
}


define i32 @program (i32 %argc441, { i32, [ 0 x i8* ] }* %argv439){

__fresh115:
  %argc_slot442 = alloca i32
  store i32 %argc441, i32* %argc_slot442
  %argv_slot440 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv439, { i32, [ 0 x i8* ] }** %argv_slot440
  %array_ptr443 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array444 = bitcast { i32, [ 0 x i32 ] }* %array_ptr443 to { i32, [ 0 x i32 ] }* 
  %index_ptr445 = getelementptr { i32, [ 0 x i32 ] }* %array444, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr445
  %index_ptr446 = getelementptr { i32, [ 0 x i32 ] }* %array444, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr446
  %index_ptr447 = getelementptr { i32, [ 0 x i32 ] }* %array444, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr447
  %index_ptr448 = getelementptr { i32, [ 0 x i32 ] }* %array444, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr448
  %arr449 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array444, { i32, [ 0 x i32 ] }** %arr449
  %p450 = alloca i32
  store i32 0, i32* %p450
  %j451 = alloca i32
  store i32 0, i32* %j451
  br label %__cond114

__cond114:
  %_lhs452 = load i32* %j451
  %bop453 = icmp slt i32 %_lhs452, 100
  br i1 %bop453, label %__body113, label %__post112

__fresh116:
  br label %__body113

__body113:
  %_lhs454 = load i32* %p450
  %bop455 = add i32 %_lhs454, 1
  store i32 %bop455, i32* %p450
  %_lhs456 = load i32* %j451
  %bop457 = add i32 %_lhs456, 1
  store i32 %bop457, i32* %j451
  br label %__cond114

__fresh117:
  br label %__post112

__post112:
  %_lhs458 = load { i32, [ 0 x i32 ] }** %arr449
  %ret459 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs458 )
  %_lhs460 = load i32* @i417
  %ret461 = call i32 @f ( i32 %_lhs460 )
  %bop462 = add i32 %ret459, %ret461
  %index_ptr463 = getelementptr { i32, [ 0 x i32 ] }** %arr449, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs465 = load { i32, [ 0 x i32 ] }** %arr449
  %ret466 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs465 )
  %bop467 = add i32 %bop462, %ret466
  %index_ptr468 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr430, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr470 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr430, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs472 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr430
  %ret473 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs472 )
  %bop474 = add i32 %bop467, %ret473
  %_lhs475 = load i32* %p450
  %ret476 = call i32 @f ( i32 %_lhs475 )
  %bop477 = add i32 %bop474, %ret476
  ret i32 %bop477
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y434){

__fresh111:
  %y_slot435 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y434, { i32, [ 0 x i32 ] }** %y_slot435
  %index_ptr436 = getelementptr { i32, [ 0 x i32 ] }** %y_slot435, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs438 = load { i32, [ 0 x i32 ] }** %y_slot435
  ret { i32, [ 0 x i32 ] }* %_lhs438
}


define i32 @f (i32 %x431){

__fresh110:
  %x_slot432 = alloca i32
  store i32 %x431, i32* %x_slot432
  %_lhs433 = load i32* %x_slot432
  ret i32 %_lhs433
}


define void @garr430.init (){

__fresh109:
  %array_ptr418 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array419 = bitcast { i32, [ 0 x i32 ] }* %array_ptr418 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr420 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array421 = bitcast { i32, [ 0 x i32 ] }* %array_ptr420 to { i32, [ 0 x i32 ] }* 
  %index_ptr422 = getelementptr { i32, [ 0 x i32 ] }* %array421, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr422
  %index_ptr423 = getelementptr { i32, [ 0 x i32 ] }* %array421, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr423
  %index_ptr424 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array419, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array421, { i32, [ 0 x i32 ] }** %index_ptr424
  %array_ptr425 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array426 = bitcast { i32, [ 0 x i32 ] }* %array_ptr425 to { i32, [ 0 x i32 ] }* 
  %index_ptr427 = getelementptr { i32, [ 0 x i32 ] }* %array426, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr427
  %index_ptr428 = getelementptr { i32, [ 0 x i32 ] }* %array426, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr428
  %index_ptr429 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array419, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array426, { i32, [ 0 x i32 ] }** %index_ptr429
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array419, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr430
  ret void
}


