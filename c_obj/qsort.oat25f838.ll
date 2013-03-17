declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1687.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1687 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1687.str., i32 0, i32 0), align 4
@_oat_string1682.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1682 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1682.str., i32 0, i32 0), align 4
@_oat_string1678.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1678 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1678.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh269:
  ret void
}


define i32 @program (i32 %argc1664, { i32, [ 0 x i8* ] }* %argv1662){

__fresh268:
  %argc_slot1665 = alloca i32
  store i32 %argc1664, i32* %argc_slot1665
  %argv_slot1663 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1662, { i32, [ 0 x i8* ] }** %argv_slot1663
  %array_ptr1666 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1667 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1666 to { i32, [ 0 x i32 ] }* 
  %index_ptr1668 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1668
  %index_ptr1669 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1669
  %index_ptr1670 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1670
  %index_ptr1671 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1671
  %index_ptr1672 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1672
  %index_ptr1673 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1673
  %index_ptr1674 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1674
  %index_ptr1675 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1675
  %index_ptr1676 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1676
  %a1677 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1667, { i32, [ 0 x i32 ] }** %a1677
  %strval1679 = load i8** @_oat_string1678
  call void @print_string( i8* %strval1679 )
  %_lhs1680 = load { i32, [ 0 x i32 ] }** %a1677
  %ret1681 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1680 )
  call void @print_string( i8* %ret1681 )
  %strval1683 = load i8** @_oat_string1682
  call void @print_string( i8* %strval1683 )
  %_lhs1684 = load { i32, [ 0 x i32 ] }** %a1677
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1684, i32 0, i32 8 )
  %_lhs1685 = load { i32, [ 0 x i32 ] }** %a1677
  %ret1686 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1685 )
  call void @print_string( i8* %ret1686 )
  %strval1688 = load i8** @_oat_string1687
  call void @print_string( i8* %strval1688 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1586, i32 %l1584, i32 %r1582){

__fresh257:
  %a_slot1587 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1586, { i32, [ 0 x i32 ] }** %a_slot1587
  %l_slot1585 = alloca i32
  store i32 %l1584, i32* %l_slot1585
  %r_slot1583 = alloca i32
  store i32 %r1582, i32* %r_slot1583
  %_lhs1588 = load i32* %l_slot1585
  %index_ptr1589 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1588
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1588 )
  %_lhs1591 = load { i32, [ 0 x i32 ] }** %a_slot1587
  %pivot1592 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1591, i32* %pivot1592
  %_lhs1593 = load i32* %l_slot1585
  %i1594 = alloca i32
  store i32 %_lhs1593, i32* %i1594
  %_lhs1595 = load i32* %r_slot1583
  %bop1596 = add i32 %_lhs1595, 1
  %j1597 = alloca i32
  store i32 %bop1596, i32* %j1597
  %t1598 = alloca i32
  store i32 0, i32* %t1598
  %done1599 = alloca i32
  store i32 0, i32* %done1599
  br label %__cond244

__cond244:
  %_lhs1600 = load i32* %done1599
  %bop1601 = icmp eq i32 %_lhs1600, 0
  br i1 %bop1601, label %__body243, label %__post242

__fresh258:
  br label %__body243

__body243:
  %_lhs1602 = load i32* %i1594
  %bop1603 = add i32 %_lhs1602, 1
  store i32 %bop1603, i32* %i1594
  br label %__cond247

__cond247:
  %_lhs1604 = load i32* %i1594
  %index_ptr1605 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1604
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1604 )
  %_lhs1607 = load { i32, [ 0 x i32 ] }** %a_slot1587
  %_lhs1608 = load i32* %pivot1592
  %bop1609 = icmp sle { i32, [ 0 x i32 ] }* %_lhs1607, %_lhs1608
  %_lhs1610 = load i32* %i1594
  %_lhs1611 = load i32* %r_slot1583
  %bop1612 = icmp sle i32 %_lhs1610, %_lhs1611
  %bop1613 = and i1 %bop1609, %bop1612
  br i1 %bop1613, label %__body246, label %__post245

__fresh259:
  br label %__body246

__body246:
  %_lhs1614 = load i32* %i1594
  %bop1615 = add i32 %_lhs1614, 1
  store i32 %bop1615, i32* %i1594
  br label %__cond247

__fresh260:
  br label %__post245

__post245:
  %_lhs1616 = load i32* %j1597
  %bop1617 = sub i32 %_lhs1616, 1
  store i32 %bop1617, i32* %j1597
  br label %__cond250

__cond250:
  %_lhs1618 = load i32* %j1597
  %index_ptr1619 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1618
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1618 )
  %_lhs1621 = load { i32, [ 0 x i32 ] }** %a_slot1587
  %_lhs1622 = load i32* %pivot1592
  %bop1623 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1621, %_lhs1622
  br i1 %bop1623, label %__body249, label %__post248

__fresh261:
  br label %__body249

__body249:
  %_lhs1624 = load i32* %j1597
  %bop1625 = sub i32 %_lhs1624, 1
  store i32 %bop1625, i32* %j1597
  br label %__cond250

__fresh262:
  br label %__post248

__post248:
  %_lhs1626 = load i32* %i1594
  %_lhs1627 = load i32* %j1597
  %bop1628 = icmp sge i32 %_lhs1626, %_lhs1627
  br i1 %bop1628, label %__then253, label %__else252

__fresh263:
  br label %__then253

__then253:
  store i32 1, i32* %done1599
  br label %__merge251

__fresh264:
  br label %__else252

__else252:
  br label %__merge251

__merge251:
  %_lhs1629 = load i32* %done1599
  %bop1630 = icmp eq i32 %_lhs1629, 0
  br i1 %bop1630, label %__then256, label %__else255

__fresh265:
  br label %__then256

__then256:
  %_lhs1631 = load i32* %i1594
  %index_ptr1632 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1631
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1631 )
  %_lhs1634 = load { i32, [ 0 x i32 ] }** %a_slot1587
  store { i32, [ 0 x i32 ] }* %_lhs1634, i32* %t1598
  %_lhs1635 = load i32* %i1594
  %index_ptr1636 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1635
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1635 )
  %_lhs1638 = load i32* %j1597
  %index_ptr1639 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1638
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1638 )
  %_lhs1641 = load { i32, [ 0 x i32 ] }** %a_slot1587
  store { i32, [ 0 x i32 ] }* %_lhs1641, { i32, [ 0 x i32 ] }** %a_slot1587
  %_lhs1642 = load i32* %j1597
  %index_ptr1643 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1642
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1642 )
  %_lhs1645 = load i32* %t1598
  store i32 %_lhs1645, { i32, [ 0 x i32 ] }** %a_slot1587
  br label %__merge254

__fresh266:
  br label %__else255

__else255:
  br label %__merge254

__merge254:
  br label %__cond244

__fresh267:
  br label %__post242

__post242:
  %_lhs1646 = load i32* %l_slot1585
  %index_ptr1647 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1646
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1646 )
  %_lhs1649 = load { i32, [ 0 x i32 ] }** %a_slot1587
  store { i32, [ 0 x i32 ] }* %_lhs1649, i32* %t1598
  %_lhs1650 = load i32* %l_slot1585
  %index_ptr1651 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1650
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1650 )
  %_lhs1653 = load i32* %j1597
  %index_ptr1654 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1653
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1653 )
  %_lhs1656 = load { i32, [ 0 x i32 ] }** %a_slot1587
  store { i32, [ 0 x i32 ] }* %_lhs1656, { i32, [ 0 x i32 ] }** %a_slot1587
  %_lhs1657 = load i32* %j1597
  %index_ptr1658 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1587, i32 %_lhs1657
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1657 )
  %_lhs1660 = load i32* %t1598
  store i32 %_lhs1660, { i32, [ 0 x i32 ] }** %a_slot1587
  %_lhs1661 = load i32* %j1597
  ret i32 %_lhs1661
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1564, i32 %l1562, i32 %r1560){

__fresh239:
  %a_slot1565 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1564, { i32, [ 0 x i32 ] }** %a_slot1565
  %l_slot1563 = alloca i32
  store i32 %l1562, i32* %l_slot1563
  %r_slot1561 = alloca i32
  store i32 %r1560, i32* %r_slot1561
  %j1566 = alloca i32
  store i32 0, i32* %j1566
  %_lhs1567 = load i32* %l_slot1563
  %_lhs1568 = load i32* %r_slot1561
  %bop1569 = icmp slt i32 %_lhs1567, %_lhs1568
  br i1 %bop1569, label %__then238, label %__else237

__fresh240:
  br label %__then238

__then238:
  %_lhs1572 = load i32* %r_slot1561
  %_lhs1571 = load i32* %l_slot1563
  %_lhs1570 = load { i32, [ 0 x i32 ] }** %a_slot1565
  %ret1573 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1570, i32 %_lhs1571, i32 %_lhs1572 )
  store i32 %ret1573, i32* %j1566
  %_lhs1576 = load i32* %j1566
  %bop1577 = sub i32 %_lhs1576, 1
  %_lhs1575 = load i32* %l_slot1563
  %_lhs1574 = load { i32, [ 0 x i32 ] }** %a_slot1565
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1574, i32 %_lhs1575, i32 %bop1577 )
  %_lhs1581 = load i32* %r_slot1561
  %_lhs1579 = load i32* %j1566
  %bop1580 = add i32 %_lhs1579, 1
  %_lhs1578 = load { i32, [ 0 x i32 ] }** %a_slot1565
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1578, i32 %bop1580, i32 %_lhs1581 )
  br label %__merge236

__fresh241:
  br label %__else237

__else237:
  br label %__merge236

__merge236:
  ret void
}


