declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1483 = global i8* zeroinitializer, align 4		; initialized by str1483.init
@_oat_string1481.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1481 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1481.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh352:
  call void @str1483.init(  )
  ret void
}


define i32 @program (i32 %argc1487, { i32, [ 0 x i8* ] }* %argv1485){

__fresh349:
  %argc_slot1488 = alloca i32
  store i32 %argc1487, i32* %argc_slot1488
  %argv_slot1486 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1485, { i32, [ 0 x i8* ] }** %argv_slot1486
  %_lhs1489 = load i8** @str1483
  %ret1490 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1489 )
  %arr1491 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1490, { i32, [ 0 x i32 ] }** %arr1491
  %s1492 = alloca i32
  store i32 0, i32* %s1492
  %i1493 = alloca i32
  store i32 0, i32* %i1493
  br label %__cond348

__cond348:
  %_lhs1494 = load i32* %i1493
  %bop1495 = icmp slt i32 %_lhs1494, 5
  br i1 %bop1495, label %__body347, label %__post346

__fresh350:
  br label %__body347

__body347:
  %_lhs1496 = load i32* %s1492
  %_lhs1497 = load i32* %i1493
  %index_ptr1498 = getelementptr { i32, [ 0 x i32 ] }** %arr1491, i32 %_lhs1497
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1497 )
  %_lhs1499 = load { i32, [ 0 x i32 ] }** %arr1491
  %bop1500 = add i32 %_lhs1496, %_lhs1499
  store i32 %bop1500, i32* %s1492
  %_lhs1501 = load i32* %i1493
  %bop1502 = add i32 %_lhs1501, 1
  store i32 %bop1502, i32* %i1493
  br label %__cond348

__fresh351:
  br label %__post346

__post346:
  %_lhs1503 = load i32* %s1492
  ret i32 %_lhs1503
}


define void @str1483.init (){

__fresh345:
  %strval1482 = load i8** @_oat_string1481
  store i8* %strval1482, i8** @str1483
  ret void
}


