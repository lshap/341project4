declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1489.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1489 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1489.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh224:
  ret void
}


define i32 @program (i32 %argc1487, { i32, [ 0 x i8* ] }* %argv1485){

__fresh219:
  %argc_slot1488 = alloca i32
  store i32 %argc1487, i32* %argc_slot1488
  %argv_slot1486 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1485, { i32, [ 0 x i8* ] }** %argv_slot1486
  %strval1490 = load i8** @_oat_string1489
  %ret1491 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1490 )
  %arr1492 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1491, { i32, [ 0 x i32 ] }** %arr1492
  %sum1493 = alloca i32
  store i32 0, i32* %sum1493
  %i1494 = alloca i32
  store i32 0, i32* %i1494
  br label %__cond215

__cond215:
  %_lhs1495 = load i32* %i1494
  %bop1496 = icmp slt i32 %_lhs1495, 10
  br i1 %bop1496, label %__body214, label %__post213

__fresh220:
  br label %__body214

__body214:
  %_lhs1497 = load i32* %i1494
  %index_ptr1498 = getelementptr { i32, [ 0 x i32 ] }** %arr1492, i32 %_lhs1497
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1497 )
  %_lhs1500 = load i32* %i1494
  store i32 %_lhs1500, { i32, [ 0 x i32 ] }** %arr1492
  %_lhs1501 = load i32* %i1494
  %bop1502 = add i32 %_lhs1501, 1
  store i32 %bop1502, i32* %i1494
  br label %__cond215

__fresh221:
  br label %__post213

__post213:
  %i1503 = alloca i32
  store i32 0, i32* %i1503
  br label %__cond218

__cond218:
  %_lhs1504 = load i32* %i1503
  %bop1505 = icmp slt i32 %_lhs1504, 10
  br i1 %bop1505, label %__body217, label %__post216

__fresh222:
  br label %__body217

__body217:
  %_lhs1506 = load i32* %sum1493
  %_lhs1507 = load i32* %i1503
  %index_ptr1508 = getelementptr { i32, [ 0 x i32 ] }** %arr1492, i32 %_lhs1507
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1507 )
  %_lhs1510 = load { i32, [ 0 x i32 ] }** %arr1492
  %bop1511 = add i32 %_lhs1506, %_lhs1510
  store i32 %bop1511, i32* %sum1493
  %_lhs1512 = load i32* %i1503
  %bop1513 = add i32 %_lhs1512, 1
  store i32 %bop1513, i32* %i1503
  br label %__cond218

__fresh223:
  br label %__post216

__post216:
  %_lhs1514 = load i32* %sum1493
  ret i32 %_lhs1514
}


