declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr420 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr420.init
@i407 = global i32 42, align 4
define void @oat_init (){

__fresh118:
  call void @garr420.init(  )
  ret void
}


define i32 @program (i32 %argc430, { i32, [ 0 x i8* ] }* %argv428){

__fresh115:
  %argc_slot431 = alloca i32
  store i32 %argc430, i32* %argc_slot431
  %argv_slot429 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv428, { i32, [ 0 x i8* ] }** %argv_slot429
  %array_ptr432 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array433 = bitcast { i32, [ 0 x i32 ] }* %array_ptr432 to { i32, [ 0 x i32 ] }* 
  %index_ptr434 = getelementptr { i32, [ 0 x i32 ] }* %array433, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr434
  %index_ptr435 = getelementptr { i32, [ 0 x i32 ] }* %array433, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr435
  %index_ptr436 = getelementptr { i32, [ 0 x i32 ] }* %array433, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr436
  %index_ptr437 = getelementptr { i32, [ 0 x i32 ] }* %array433, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr437
  %arr438 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array433, { i32, [ 0 x i32 ] }** %arr438
  %p439 = alloca i32
  store i32 0, i32* %p439
  %j440 = alloca i32
  store i32 0, i32* %j440
  br label %__cond114

__cond114:
  %_lhs441 = load i32* %j440
  %bop442 = icmp slt i32 %_lhs441, 100
  br i1 %bop442, label %__body113, label %__post112

__fresh116:
  br label %__body113

__body113:
  %_lhs443 = load i32* %p439
  %bop444 = add i32 %_lhs443, 1
  store i32 %bop444, i32* %p439
  %_lhs445 = load i32* %j440
  %bop446 = add i32 %_lhs445, 1
  store i32 %bop446, i32* %j440
  br label %__cond114

__fresh117:
  br label %__post112

__post112:
  %_lhs447 = load { i32, [ 0 x i32 ] }** %arr438
  %ret448 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs447 )
  %_lhs449 = load i32* @i407
  %ret450 = call i32 @f ( i32 %_lhs449 )
  %bop451 = add i32 %ret448, %ret450
  %index_ptr452 = getelementptr { i32, [ 0 x i32 ] }** %arr438, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs453 = load { i32, [ 0 x i32 ] }** %arr438
  %ret454 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs453 )
  %bop455 = add i32 %bop451, %ret454
  %index_ptr456 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr420, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr457 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr420, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs458 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr420
  %ret459 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs458 )
  %bop460 = add i32 %bop455, %ret459
  %_lhs461 = load i32* %p439
  %ret462 = call i32 @f ( i32 %_lhs461 )
  %bop463 = add i32 %bop460, %ret462
  ret i32 %bop463
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y424){

__fresh111:
  %y_slot425 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y424, { i32, [ 0 x i32 ] }** %y_slot425
  %index_ptr426 = getelementptr { i32, [ 0 x i32 ] }** %y_slot425, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs427 = load { i32, [ 0 x i32 ] }** %y_slot425
  ret { i32, [ 0 x i32 ] }* %_lhs427
}


define i32 @f (i32 %x421){

__fresh110:
  %x_slot422 = alloca i32
  store i32 %x421, i32* %x_slot422
  %_lhs423 = load i32* %x_slot422
  ret i32 %_lhs423
}


define void @garr420.init (){

__fresh109:
  %array_ptr408 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array409 = bitcast { i32, [ 0 x i32 ] }* %array_ptr408 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr410 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array411 = bitcast { i32, [ 0 x i32 ] }* %array_ptr410 to { i32, [ 0 x i32 ] }* 
  %index_ptr412 = getelementptr { i32, [ 0 x i32 ] }* %array411, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr412
  %index_ptr413 = getelementptr { i32, [ 0 x i32 ] }* %array411, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr413
  %index_ptr414 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array409, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array411, { i32, [ 0 x i32 ] }** %index_ptr414
  %array_ptr415 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array416 = bitcast { i32, [ 0 x i32 ] }* %array_ptr415 to { i32, [ 0 x i32 ] }* 
  %index_ptr417 = getelementptr { i32, [ 0 x i32 ] }* %array416, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr417
  %index_ptr418 = getelementptr { i32, [ 0 x i32 ] }* %array416, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr418
  %index_ptr419 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array409, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array416, { i32, [ 0 x i32 ] }** %index_ptr419
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array409, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr420
  ret void
}


