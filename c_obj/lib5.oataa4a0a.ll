declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1508.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1508 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1508.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh359:
  ret void
}


define i32 @program (i32 %argc1506, { i32, [ 0 x i8* ] }* %argv1504){

__fresh356:
  %argc_slot1507 = alloca i32
  store i32 %argc1506, i32* %argc_slot1507
  %argv_slot1505 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1504, { i32, [ 0 x i8* ] }** %argv_slot1505
  %strval1509 = load i8** @_oat_string1508
  %str1510 = alloca i8*
  store i8* %strval1509, i8** %str1510
  %_lhs1511 = load i8** %str1510
  %ret1512 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1511 )
  %arr1513 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1512, { i32, [ 0 x i32 ] }** %arr1513
  %s1514 = alloca i32
  store i32 0, i32* %s1514
  %i1515 = alloca i32
  store i32 0, i32* %i1515
  br label %__cond355

__cond355:
  %_lhs1516 = load i32* %i1515
  %bop1517 = icmp slt i32 %_lhs1516, 5
  br i1 %bop1517, label %__body354, label %__post353

__fresh357:
  br label %__body354

__body354:
  %_lhs1518 = load i32* %s1514
  %_lhs1519 = load i32* %i1515
  %index_ptr1520 = getelementptr { i32, [ 0 x i32 ] }** %arr1513, i32 %_lhs1519
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1519 )
  %_lhs1521 = load { i32, [ 0 x i32 ] }** %arr1513
  %bop1522 = add i32 %_lhs1518, %_lhs1521
  store i32 %bop1522, i32* %s1514
  %_lhs1523 = load i32* %i1515
  %bop1524 = add i32 %_lhs1523, 1
  store i32 %bop1524, i32* %i1515
  br label %__cond355

__fresh358:
  br label %__post353

__post353:
  %_lhs1525 = load i32* %s1514
  ret i32 %_lhs1525
}


