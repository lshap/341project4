declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1563 = global i8* zeroinitializer, align 4		; initialized by str1563.init
@_oat_string1561.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1561 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1561.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh432:
  call void @str1563.init(  )
  ret void
}


define i32 @program (i32 %argc1567, { i32, [ 0 x i8* ] }* %argv1565){

__fresh429:
  %argc_slot1568 = alloca i32
  store i32 %argc1567, i32* %argc_slot1568
  %argv_slot1566 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1565, { i32, [ 0 x i8* ] }** %argv_slot1566
  %_lhs1569 = load i8** @str1563
  %ret1570 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1569 )
  %arr1571 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1570, { i32, [ 0 x i32 ] }** %arr1571
  %s1572 = alloca i32
  store i32 0, i32* %s1572
  %i1573 = alloca i32
  store i32 0, i32* %i1573
  br label %__cond428

__cond428:
  %_lhs1574 = load i32* %i1573
  %bop1575 = icmp slt i32 %_lhs1574, 5
  br i1 %bop1575, label %__body427, label %__post426

__fresh430:
  br label %__body427

__body427:
  %_lhs1576 = load i32* %s1572
  %_lhs1577 = load i32* %i1573
  %index_ptr1578 = getelementptr { i32, [ 0 x i32 ] }** %arr1571, i32 %_lhs1577
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1577 )
  %_lhs1579 = load { i32, [ 0 x i32 ] }** %arr1571
  %bop1580 = add i32 %_lhs1576, %_lhs1579
  store i32 %bop1580, i32* %s1572
  %_lhs1581 = load i32* %i1573
  %bop1582 = add i32 %_lhs1581, 1
  store i32 %bop1582, i32* %i1573
  br label %__cond428

__fresh431:
  br label %__post426

__post426:
  %_lhs1583 = load i32* %s1572
  ret i32 %_lhs1583
}


define void @str1563.init (){

__fresh425:
  %strval1562 = load i8** @_oat_string1561
  store i8* %strval1562, i8** @str1563
  ret void
}


