declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr481 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr481.init
@i468 = global i32 42, align 4
define void @oat_init (){

__fresh206:
  call void @garr481.init(  )
  ret void
}


define i32 @program (i32 %argc491, { i32, [ 0 x i8* ] }* %argv489){

__fresh203:
  %argc_slot492 = alloca i32
  store i32 %argc491, i32* %argc_slot492
  %argv_slot490 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv489, { i32, [ 0 x i8* ] }** %argv_slot490
  %array_ptr493 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array494 = bitcast { i32, [ 0 x i32 ] }* %array_ptr493 to { i32, [ 0 x i32 ] }* 
  %index_ptr495 = getelementptr { i32, [ 0 x i32 ] }* %array494, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr495
  %index_ptr496 = getelementptr { i32, [ 0 x i32 ] }* %array494, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr496
  %index_ptr497 = getelementptr { i32, [ 0 x i32 ] }* %array494, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr497
  %index_ptr498 = getelementptr { i32, [ 0 x i32 ] }* %array494, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr498
  %arr499 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array494, { i32, [ 0 x i32 ] }** %arr499
  %p500 = alloca i32
  store i32 0, i32* %p500
  %j501 = alloca i32
  store i32 0, i32* %j501
  br label %__cond202

__cond202:
  %_lhs502 = load i32* %j501
  %bop503 = icmp slt i32 %_lhs502, 100
  br i1 %bop503, label %__body201, label %__post200

__fresh204:
  br label %__body201

__body201:
  %_lhs504 = load i32* %p500
  %bop505 = add i32 %_lhs504, 1
  store i32 %bop505, i32* %p500
  %_lhs506 = load i32* %j501
  %bop507 = add i32 %_lhs506, 1
  store i32 %bop507, i32* %j501
  br label %__cond202

__fresh205:
  br label %__post200

__post200:
  %_lhs508 = load { i32, [ 0 x i32 ] }** %arr499
  %ret509 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs508 )
  %_lhs510 = load i32* @i468
  %ret511 = call i32 @f ( i32 %_lhs510 )
  %bop512 = add i32 %ret509, %ret511
  %index_ptr513 = getelementptr { i32, [ 0 x i32 ] }** %arr499, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs514 = load { i32, [ 0 x i32 ] }** %arr499
  %ret515 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs514 )
  %bop516 = add i32 %bop512, %ret515
  %index_ptr517 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr481, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr518 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr481, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs519 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr481
  %ret520 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs519 )
  %bop521 = add i32 %bop516, %ret520
  %_lhs522 = load i32* %p500
  %ret523 = call i32 @f ( i32 %_lhs522 )
  %bop524 = add i32 %bop521, %ret523
  ret i32 %bop524
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y485){

__fresh199:
  %y_slot486 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y485, { i32, [ 0 x i32 ] }** %y_slot486
  %index_ptr487 = getelementptr { i32, [ 0 x i32 ] }** %y_slot486, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs488 = load { i32, [ 0 x i32 ] }** %y_slot486
  ret { i32, [ 0 x i32 ] }* %_lhs488
}


define i32 @f (i32 %x482){

__fresh198:
  %x_slot483 = alloca i32
  store i32 %x482, i32* %x_slot483
  %_lhs484 = load i32* %x_slot483
  ret i32 %_lhs484
}


define void @garr481.init (){

__fresh197:
  %array_ptr469 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array470 = bitcast { i32, [ 0 x i32 ] }* %array_ptr469 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr471 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array472 = bitcast { i32, [ 0 x i32 ] }* %array_ptr471 to { i32, [ 0 x i32 ] }* 
  %index_ptr473 = getelementptr { i32, [ 0 x i32 ] }* %array472, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr473
  %index_ptr474 = getelementptr { i32, [ 0 x i32 ] }* %array472, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr474
  %index_ptr475 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array470, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array472, { i32, [ 0 x i32 ] }** %index_ptr475
  %array_ptr476 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array477 = bitcast { i32, [ 0 x i32 ] }* %array_ptr476 to { i32, [ 0 x i32 ] }* 
  %index_ptr478 = getelementptr { i32, [ 0 x i32 ] }* %array477, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr478
  %index_ptr479 = getelementptr { i32, [ 0 x i32 ] }* %array477, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr479
  %index_ptr480 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array470, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array477, { i32, [ 0 x i32 ] }** %index_ptr480
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array470, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr481
  ret void
}


