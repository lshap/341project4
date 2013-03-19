declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr493 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr493.init
@i480 = global i32 42, align 4
define void @oat_init (){

__fresh208:
  call void @garr493.init(  )
  ret void
}


define i32 @program (i32 %argc504, { i32, [ 0 x i8* ] }* %argv502){

__fresh205:
  %argc_slot505 = alloca i32
  store i32 %argc504, i32* %argc_slot505
  %argv_slot503 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv502, { i32, [ 0 x i8* ] }** %argv_slot503
  %array_ptr506 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array507 = bitcast { i32, [ 0 x i32 ] }* %array_ptr506 to { i32, [ 0 x i32 ] }* 
  %index_ptr508 = getelementptr { i32, [ 0 x i32 ] }* %array507, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr508
  %index_ptr509 = getelementptr { i32, [ 0 x i32 ] }* %array507, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr509
  %index_ptr510 = getelementptr { i32, [ 0 x i32 ] }* %array507, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr510
  %index_ptr511 = getelementptr { i32, [ 0 x i32 ] }* %array507, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr511
  %arr512 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array507, { i32, [ 0 x i32 ] }** %arr512
  %p513 = alloca i32
  store i32 0, i32* %p513
  %j514 = alloca i32
  store i32 0, i32* %j514
  br label %__cond204

__cond204:
  %_lhs515 = load i32* %j514
  %bop516 = icmp slt i32 %_lhs515, 100
  br i1 %bop516, label %__body203, label %__post202

__fresh206:
  br label %__body203

__body203:
  %_lhs517 = load i32* %p513
  %bop518 = add i32 %_lhs517, 1
  store i32 %bop518, i32* %p513
  %_lhs519 = load i32* %j514
  %bop520 = add i32 %_lhs519, 1
  store i32 %bop520, i32* %j514
  br label %__cond204

__fresh207:
  br label %__post202

__post202:
  %_lhs521 = load { i32, [ 0 x i32 ] }** %arr512
  %ret522 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs521 )
  %_lhs523 = load i32* @i480
  %ret524 = call i32 @f ( i32 %_lhs523 )
  %bop525 = add i32 %ret522, %ret524
  %size_ptr527 = getelementptr { i32, [ 0 x i32 ] }* %arr512, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr527, i32 3 )
  %index_ptr526 = getelementptr { i32, [ 0 x i32 ] }* %arr512, i32 0, i32 1, i32 3
  %_lhs528 = load { i32, [ 0 x i32 ] }** %arr512
  %ret529 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs528 )
  %bop530 = add i32 %bop525, %ret529
  %size_ptr532 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr493, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr532, i32 1 )
  %index_ptr531 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr493, i32 0, i32 1, i32 1
  %size_ptr534 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr493, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr534, i32 1 )
  %index_ptr533 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr493, i32 0, i32 1, i32 1
  %_lhs535 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr493
  %ret536 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs535 )
  %bop537 = add i32 %bop530, %ret536
  %_lhs538 = load i32* %p513
  %ret539 = call i32 @f ( i32 %_lhs538 )
  %bop540 = add i32 %bop537, %ret539
  ret i32 %bop540
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y497){

__fresh201:
  %y_slot498 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y497, { i32, [ 0 x i32 ] }** %y_slot498
  %size_ptr500 = getelementptr { i32, [ 0 x i32 ] }* %y_slot498, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr500, i32 2 )
  %index_ptr499 = getelementptr { i32, [ 0 x i32 ] }* %y_slot498, i32 0, i32 1, i32 2
  %_lhs501 = load { i32, [ 0 x i32 ] }** %y_slot498
  ret { i32, [ 0 x i32 ] }* %_lhs501
}


define i32 @f (i32 %x494){

__fresh200:
  %x_slot495 = alloca i32
  store i32 %x494, i32* %x_slot495
  %_lhs496 = load i32* %x_slot495
  ret i32 %_lhs496
}


define void @garr493.init (){

__fresh199:
  %array_ptr481 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array482 = bitcast { i32, [ 0 x i32 ] }* %array_ptr481 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr483 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array484 = bitcast { i32, [ 0 x i32 ] }* %array_ptr483 to { i32, [ 0 x i32 ] }* 
  %index_ptr485 = getelementptr { i32, [ 0 x i32 ] }* %array484, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr485
  %index_ptr486 = getelementptr { i32, [ 0 x i32 ] }* %array484, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr486
  %index_ptr487 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array482, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array484, { i32, [ 0 x i32 ] }** %index_ptr487
  %array_ptr488 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array489 = bitcast { i32, [ 0 x i32 ] }* %array_ptr488 to { i32, [ 0 x i32 ] }* 
  %index_ptr490 = getelementptr { i32, [ 0 x i32 ] }* %array489, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr490
  %index_ptr491 = getelementptr { i32, [ 0 x i32 ] }* %array489, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr491
  %index_ptr492 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array482, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array489, { i32, [ 0 x i32 ] }** %index_ptr492
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array482, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr493
  ret void
}


