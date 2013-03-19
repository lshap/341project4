declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1566 = global i8* zeroinitializer, align 4		; initialized by str1566.init
@_oat_string1564.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1564 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1564.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh603:
  call void @str1566.init(  )
  ret void
}


define i32 @program (i32 %argc1570, { i32, [ 0 x i8* ] }* %argv1568){

__fresh600:
  %argc_slot1571 = alloca i32
  store i32 %argc1570, i32* %argc_slot1571
  %argv_slot1569 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1568, { i32, [ 0 x i8* ] }** %argv_slot1569
  %_lhs1572 = load i8** @str1566
  %ret1573 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1572 )
  %arr1574 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1573, { i32, [ 0 x i32 ] }** %arr1574
  %s1575 = alloca i32
  store i32 0, i32* %s1575
  %i1576 = alloca i32
  store i32 0, i32* %i1576
  br label %__cond599

__cond599:
  %_lhs1577 = load i32* %i1576
  %bop1578 = icmp slt i32 %_lhs1577, 5
  br i1 %bop1578, label %__body598, label %__post597

__fresh601:
  br label %__body598

__body598:
  %_lhs1579 = load i32* %s1575
  %_lhs1580 = load i32* %i1576
  %index_ptr1581 = getelementptr { i32, [ 0 x i32 ] }** %arr1574, i32 %_lhs1580
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1580 )
  %_lhs1582 = load { i32, [ 0 x i32 ] }** %arr1574
  %bop1583 = add i32 %_lhs1579, %_lhs1582
  store i32 %bop1583, i32* %s1575
  %_lhs1584 = load i32* %i1576
  %bop1585 = add i32 %_lhs1584, 1
  store i32 %bop1585, i32* %i1576
  br label %__cond599

__fresh602:
  br label %__post597

__post597:
  %_lhs1586 = load i32* %s1575
  ret i32 %_lhs1586
}


define void @str1566.init (){

__fresh596:
  %strval1565 = load i8** @_oat_string1564
  store i8* %strval1565, i8** @str1566
  ret void
}


