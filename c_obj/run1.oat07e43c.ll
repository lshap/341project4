declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr472 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr472.init
@i459 = global i32 42, align 4
define void @oat_init (){

__fresh205:
  call void @garr472.init(  )
  ret void
}


define i32 @program (i32 %argc482, { i32, [ 0 x i8* ] }* %argv480){

__fresh202:
  %argc_slot483 = alloca i32
  store i32 %argc482, i32* %argc_slot483
  %argv_slot481 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv480, { i32, [ 0 x i8* ] }** %argv_slot481
  %array_ptr484 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array485 = bitcast { i32, [ 0 x i32 ] }* %array_ptr484 to { i32, [ 0 x i32 ] }* 
  %index_ptr486 = getelementptr { i32, [ 0 x i32 ] }* %array485, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr486
  %index_ptr487 = getelementptr { i32, [ 0 x i32 ] }* %array485, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr487
  %index_ptr488 = getelementptr { i32, [ 0 x i32 ] }* %array485, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr488
  %index_ptr489 = getelementptr { i32, [ 0 x i32 ] }* %array485, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr489
  %arr490 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array485, { i32, [ 0 x i32 ] }** %arr490
  %p491 = alloca i32
  store i32 0, i32* %p491
  %j492 = alloca i32
  store i32 0, i32* %j492
  br label %__cond201

__cond201:
  %_lhs493 = load i32* %j492
  %bop494 = icmp slt i32 %_lhs493, 100
  br i1 %bop494, label %__body200, label %__post199

__fresh203:
  br label %__body200

__body200:
  %_lhs495 = load i32* %p491
  %bop496 = add i32 %_lhs495, 1
  store i32 %bop496, i32* %p491
  %_lhs497 = load i32* %j492
  %bop498 = add i32 %_lhs497, 1
  store i32 %bop498, i32* %j492
  br label %__cond201

__fresh204:
  br label %__post199

__post199:
  %_lhs499 = load { i32, [ 0 x i32 ] }** %arr490
  %ret500 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs499 )
  %_lhs501 = load i32* @i459
  %ret502 = call i32 @f ( i32 %_lhs501 )
  %bop503 = add i32 %ret500, %ret502
  %index_ptr504 = getelementptr { i32, [ 0 x i32 ] }** %arr490, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs505 = load { i32, [ 0 x i32 ] }** %arr490
  %ret506 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs505 )
  %bop507 = add i32 %bop503, %ret506
  %index_ptr508 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr472, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr509 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr472, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs510 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr472
  %ret511 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs510 )
  %bop512 = add i32 %bop507, %ret511
  %_lhs513 = load i32* %p491
  %ret514 = call i32 @f ( i32 %_lhs513 )
  %bop515 = add i32 %bop512, %ret514
  ret i32 %bop515
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y476){

__fresh198:
  %y_slot477 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y476, { i32, [ 0 x i32 ] }** %y_slot477
  %index_ptr478 = getelementptr { i32, [ 0 x i32 ] }** %y_slot477, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs479 = load { i32, [ 0 x i32 ] }** %y_slot477
  ret { i32, [ 0 x i32 ] }* %_lhs479
}


define i32 @f (i32 %x473){

__fresh197:
  %x_slot474 = alloca i32
  store i32 %x473, i32* %x_slot474
  %_lhs475 = load i32* %x_slot474
  ret i32 %_lhs475
}


define void @garr472.init (){

__fresh196:
  %array_ptr460 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array461 = bitcast { i32, [ 0 x i32 ] }* %array_ptr460 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr462 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array463 = bitcast { i32, [ 0 x i32 ] }* %array_ptr462 to { i32, [ 0 x i32 ] }* 
  %index_ptr464 = getelementptr { i32, [ 0 x i32 ] }* %array463, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr464
  %index_ptr465 = getelementptr { i32, [ 0 x i32 ] }* %array463, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr465
  %index_ptr466 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array461, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array463, { i32, [ 0 x i32 ] }** %index_ptr466
  %array_ptr467 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array468 = bitcast { i32, [ 0 x i32 ] }* %array_ptr467 to { i32, [ 0 x i32 ] }* 
  %index_ptr469 = getelementptr { i32, [ 0 x i32 ] }* %array468, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr469
  %index_ptr470 = getelementptr { i32, [ 0 x i32 ] }* %array468, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr470
  %index_ptr471 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array461, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array468, { i32, [ 0 x i32 ] }** %index_ptr471
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array461, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr472
  ret void
}


