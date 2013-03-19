declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1575 = global i8* zeroinitializer, align 4		; initialized by str1575.init
@_oat_string1573.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1573 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1573.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh604:
  call void @str1575.init(  )
  ret void
}


define i32 @program (i32 %argc1579, { i32, [ 0 x i8* ] }* %argv1577){

__fresh601:
  %argc_slot1580 = alloca i32
  store i32 %argc1579, i32* %argc_slot1580
  %argv_slot1578 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1577, { i32, [ 0 x i8* ] }** %argv_slot1578
  %_lhs1581 = load i8** @str1575
  %ret1582 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1581 )
  %arr1583 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1582, { i32, [ 0 x i32 ] }** %arr1583
  %s1584 = alloca i32
  store i32 0, i32* %s1584
  %i1585 = alloca i32
  store i32 0, i32* %i1585
  br label %__cond600

__cond600:
  %_lhs1586 = load i32* %i1585
  %bop1587 = icmp slt i32 %_lhs1586, 5
  br i1 %bop1587, label %__body599, label %__post598

__fresh602:
  br label %__body599

__body599:
  %_lhs1588 = load i32* %s1584
  %_lhs1589 = load i32* %i1585
  %index_ptr1590 = getelementptr { i32, [ 0 x i32 ] }** %arr1583, i32 %_lhs1589
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1589 )
  %_lhs1591 = load { i32, [ 0 x i32 ] }** %arr1583
  %bop1592 = add i32 %_lhs1588, %_lhs1591
  store i32 %bop1592, i32* %s1584
  %_lhs1593 = load i32* %i1585
  %bop1594 = add i32 %_lhs1593, 1
  store i32 %bop1594, i32* %i1585
  br label %__cond600

__fresh603:
  br label %__post598

__post598:
  %_lhs1595 = load i32* %s1584
  ret i32 %_lhs1595
}


define void @str1575.init (){

__fresh597:
  %strval1574 = load i8** @_oat_string1573
  store i8* %strval1574, i8** @str1575
  ret void
}


