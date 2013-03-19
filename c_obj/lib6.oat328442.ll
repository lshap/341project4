declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11617 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11617.init
define void @oat_init (){

__fresh623:
  call void @arr11617.init(  )
  ret void
}


define i32 @program (i32 %argc1620, { i32, [ 0 x i8* ] }* %argv1618){

__fresh620:
  %argc_slot1621 = alloca i32
  store i32 %argc1620, i32* %argc_slot1621
  %argv_slot1619 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1618, { i32, [ 0 x i8* ] }** %argv_slot1619
  %_lhs1622 = load { i32, [ 0 x i32 ] }** @arr11617
  %ret1623 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1622 )
  %str1624 = alloca i8*
  store i8* %ret1623, i8** %str1624
  %_lhs1625 = load i8** %str1624
  %ret1626 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1625 )
  %arr21627 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1626, { i32, [ 0 x i32 ] }** %arr21627
  %s1628 = alloca i32
  store i32 0, i32* %s1628
  %i1629 = alloca i32
  store i32 0, i32* %i1629
  br label %__cond619

__cond619:
  %_lhs1630 = load i32* %i1629
  %bop1631 = icmp slt i32 %_lhs1630, 5
  br i1 %bop1631, label %__body618, label %__post617

__fresh621:
  br label %__body618

__body618:
  %_lhs1632 = load i32* %s1628
  %_lhs1633 = load i32* %i1629
  %index_ptr1634 = getelementptr { i32, [ 0 x i32 ] }** %arr21627, i32 %_lhs1633
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1633 )
  %_lhs1635 = load { i32, [ 0 x i32 ] }** %arr21627
  %bop1636 = add i32 %_lhs1632, %_lhs1635
  store i32 %bop1636, i32* %s1628
  %_lhs1637 = load i32* %i1629
  %bop1638 = add i32 %_lhs1637, 1
  store i32 %bop1638, i32* %i1629
  br label %__cond619

__fresh622:
  br label %__post617

__post617:
  %_lhs1639 = load i32* %s1628
  ret i32 %_lhs1639
}


define void @arr11617.init (){

__fresh616:
  %array_ptr1610 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1611 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1610 to { i32, [ 0 x i32 ] }* 
  %index_ptr1612 = getelementptr { i32, [ 0 x i32 ] }* %array1611, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1612
  %index_ptr1613 = getelementptr { i32, [ 0 x i32 ] }* %array1611, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1613
  %index_ptr1614 = getelementptr { i32, [ 0 x i32 ] }* %array1611, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1614
  %index_ptr1615 = getelementptr { i32, [ 0 x i32 ] }* %array1611, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1615
  %index_ptr1616 = getelementptr { i32, [ 0 x i32 ] }* %array1611, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1616
  store { i32, [ 0 x i32 ] }* %array1611, { i32, [ 0 x i32 ] }** @arr11617
  ret void
}


