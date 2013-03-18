declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11614 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11614.init
define void @oat_init (){

__fresh447:
  call void @arr11614.init(  )
  ret void
}


define i32 @program (i32 %argc1617, { i32, [ 0 x i8* ] }* %argv1615){

__fresh444:
  %argc_slot1618 = alloca i32
  store i32 %argc1617, i32* %argc_slot1618
  %argv_slot1616 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1615, { i32, [ 0 x i8* ] }** %argv_slot1616
  %_lhs1619 = load { i32, [ 0 x i32 ] }** @arr11614
  %ret1620 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1619 )
  %str1621 = alloca i8*
  store i8* %ret1620, i8** %str1621
  %_lhs1622 = load i8** %str1621
  %ret1623 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1622 )
  %arr21624 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1623, { i32, [ 0 x i32 ] }** %arr21624
  %s1625 = alloca i32
  store i32 0, i32* %s1625
  %i1626 = alloca i32
  store i32 0, i32* %i1626
  br label %__cond443

__cond443:
  %_lhs1627 = load i32* %i1626
  %bop1628 = icmp slt i32 %_lhs1627, 5
  br i1 %bop1628, label %__body442, label %__post441

__fresh445:
  br label %__body442

__body442:
  %_lhs1629 = load i32* %s1625
  %_lhs1630 = load i32* %i1626
  %index_ptr1631 = getelementptr { i32, [ 0 x i32 ] }** %arr21624, i32 %_lhs1630
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1630 )
  %_lhs1632 = load { i32, [ 0 x i32 ] }** %arr21624
  %bop1633 = add i32 %_lhs1629, %_lhs1632
  store i32 %bop1633, i32* %s1625
  %_lhs1634 = load i32* %i1626
  %bop1635 = add i32 %_lhs1634, 1
  store i32 %bop1635, i32* %i1626
  br label %__cond443

__fresh446:
  br label %__post441

__post441:
  %_lhs1636 = load i32* %s1625
  ret i32 %_lhs1636
}


define void @arr11614.init (){

__fresh440:
  %array_ptr1607 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1608 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1607 to { i32, [ 0 x i32 ] }* 
  %index_ptr1609 = getelementptr { i32, [ 0 x i32 ] }* %array1608, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1609
  %index_ptr1610 = getelementptr { i32, [ 0 x i32 ] }* %array1608, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1610
  %index_ptr1611 = getelementptr { i32, [ 0 x i32 ] }* %array1608, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1611
  %index_ptr1612 = getelementptr { i32, [ 0 x i32 ] }* %array1608, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1612
  %index_ptr1613 = getelementptr { i32, [ 0 x i32 ] }* %array1608, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1613
  store { i32, [ 0 x i32 ] }* %array1608, { i32, [ 0 x i32 ] }** @arr11614
  ret void
}


