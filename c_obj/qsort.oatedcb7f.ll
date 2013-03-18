declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1820.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1820 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1820.str., i32 0, i32 0), align 4
@_oat_string1815.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1815 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1815.str., i32 0, i32 0), align 4
@_oat_string1811.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1811 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1811.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh443:
  ret void
}


define i32 @program (i32 %argc1797, { i32, [ 0 x i8* ] }* %argv1795){

__fresh442:
  %argc_slot1798 = alloca i32
  store i32 %argc1797, i32* %argc_slot1798
  %argv_slot1796 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1795, { i32, [ 0 x i8* ] }** %argv_slot1796
  %array_ptr1799 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1800 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1799 to { i32, [ 0 x i32 ] }* 
  %index_ptr1801 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1801
  %index_ptr1802 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1802
  %index_ptr1803 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1803
  %index_ptr1804 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1804
  %index_ptr1805 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1805
  %index_ptr1806 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1806
  %index_ptr1807 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1807
  %index_ptr1808 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1808
  %index_ptr1809 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1809
  %a1810 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1800, { i32, [ 0 x i32 ] }** %a1810
  %strval1812 = load i8** @_oat_string1811
  call void @print_string( i8* %strval1812 )
  %_lhs1813 = load { i32, [ 0 x i32 ] }** %a1810
  %ret1814 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1813 )
  call void @print_string( i8* %ret1814 )
  %strval1816 = load i8** @_oat_string1815
  call void @print_string( i8* %strval1816 )
  %_lhs1817 = load { i32, [ 0 x i32 ] }** %a1810
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1817, i32 0, i32 8 )
  %_lhs1818 = load { i32, [ 0 x i32 ] }** %a1810
  %ret1819 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1818 )
  call void @print_string( i8* %ret1819 )
  %strval1821 = load i8** @_oat_string1820
  call void @print_string( i8* %strval1821 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1730, i32 %l1728, i32 %r1726){

__fresh431:
  %a_slot1731 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1730, { i32, [ 0 x i32 ] }** %a_slot1731
  %l_slot1729 = alloca i32
  store i32 %l1728, i32* %l_slot1729
  %r_slot1727 = alloca i32
  store i32 %r1726, i32* %r_slot1727
  %_lhs1732 = load i32* %l_slot1729
  %index_ptr1733 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1732
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1732 )
  %_lhs1734 = load { i32, [ 0 x i32 ] }** %a_slot1731
  %pivot1735 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1734, i32* %pivot1735
  %_lhs1736 = load i32* %l_slot1729
  %i1737 = alloca i32
  store i32 %_lhs1736, i32* %i1737
  %_lhs1738 = load i32* %r_slot1727
  %bop1739 = add i32 %_lhs1738, 1
  %j1740 = alloca i32
  store i32 %bop1739, i32* %j1740
  %t1741 = alloca i32
  store i32 0, i32* %t1741
  %done1742 = alloca i32
  store i32 0, i32* %done1742
  br label %__cond418

__cond418:
  %_lhs1743 = load i32* %done1742
  %bop1744 = icmp eq i32 %_lhs1743, 0
  br i1 %bop1744, label %__body417, label %__post416

__fresh432:
  br label %__body417

__body417:
  %_lhs1745 = load i32* %i1737
  %bop1746 = add i32 %_lhs1745, 1
  store i32 %bop1746, i32* %i1737
  br label %__cond421

__cond421:
  %_lhs1747 = load i32* %i1737
  %index_ptr1748 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1747
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1747 )
  %_lhs1749 = load { i32, [ 0 x i32 ] }** %a_slot1731
  %_lhs1750 = load i32* %pivot1735
  %bop1751 = icmp sle { i32, [ 0 x i32 ] }* %_lhs1749, %_lhs1750
  %_lhs1752 = load i32* %i1737
  %_lhs1753 = load i32* %r_slot1727
  %bop1754 = icmp sle i32 %_lhs1752, %_lhs1753
  %bop1755 = and i1 %bop1751, %bop1754
  br i1 %bop1755, label %__body420, label %__post419

__fresh433:
  br label %__body420

__body420:
  %_lhs1756 = load i32* %i1737
  %bop1757 = add i32 %_lhs1756, 1
  store i32 %bop1757, i32* %i1737
  br label %__cond421

__fresh434:
  br label %__post419

__post419:
  %_lhs1758 = load i32* %j1740
  %bop1759 = sub i32 %_lhs1758, 1
  store i32 %bop1759, i32* %j1740
  br label %__cond424

__cond424:
  %_lhs1760 = load i32* %j1740
  %index_ptr1761 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1760
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1760 )
  %_lhs1762 = load { i32, [ 0 x i32 ] }** %a_slot1731
  %_lhs1763 = load i32* %pivot1735
  %bop1764 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1762, %_lhs1763
  br i1 %bop1764, label %__body423, label %__post422

__fresh435:
  br label %__body423

__body423:
  %_lhs1765 = load i32* %j1740
  %bop1766 = sub i32 %_lhs1765, 1
  store i32 %bop1766, i32* %j1740
  br label %__cond424

__fresh436:
  br label %__post422

__post422:
  %_lhs1767 = load i32* %i1737
  %_lhs1768 = load i32* %j1740
  %bop1769 = icmp sge i32 %_lhs1767, %_lhs1768
  br i1 %bop1769, label %__then427, label %__else426

__fresh437:
  br label %__then427

__then427:
  store i32 1, i32* %done1742
  br label %__merge425

__fresh438:
  br label %__else426

__else426:
  br label %__merge425

__merge425:
  %_lhs1770 = load i32* %done1742
  %bop1771 = icmp eq i32 %_lhs1770, 0
  br i1 %bop1771, label %__then430, label %__else429

__fresh439:
  br label %__then430

__then430:
  %_lhs1772 = load i32* %i1737
  %index_ptr1773 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1772
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1772 )
  %_lhs1774 = load { i32, [ 0 x i32 ] }** %a_slot1731
  store { i32, [ 0 x i32 ] }* %_lhs1774, i32* %t1741
  %_lhs1775 = load i32* %i1737
  %index_ptr1776 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1775
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1775 )
  %_lhs1777 = load i32* %j1740
  %index_ptr1778 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1777
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1777 )
  %_lhs1779 = load { i32, [ 0 x i32 ] }** %a_slot1731
  store { i32, [ 0 x i32 ] }* %_lhs1779, { i32, [ 0 x i32 ] }** %a_slot1731
  %_lhs1780 = load i32* %j1740
  %index_ptr1781 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1780
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1780 )
  %_lhs1782 = load i32* %t1741
  store i32 %_lhs1782, { i32, [ 0 x i32 ] }** %a_slot1731
  br label %__merge428

__fresh440:
  br label %__else429

__else429:
  br label %__merge428

__merge428:
  br label %__cond418

__fresh441:
  br label %__post416

__post416:
  %_lhs1783 = load i32* %l_slot1729
  %index_ptr1784 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1783
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1783 )
  %_lhs1785 = load { i32, [ 0 x i32 ] }** %a_slot1731
  store { i32, [ 0 x i32 ] }* %_lhs1785, i32* %t1741
  %_lhs1786 = load i32* %l_slot1729
  %index_ptr1787 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1786
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1786 )
  %_lhs1788 = load i32* %j1740
  %index_ptr1789 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1788
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1788 )
  %_lhs1790 = load { i32, [ 0 x i32 ] }** %a_slot1731
  store { i32, [ 0 x i32 ] }* %_lhs1790, { i32, [ 0 x i32 ] }** %a_slot1731
  %_lhs1791 = load i32* %j1740
  %index_ptr1792 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1731, i32 %_lhs1791
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1791 )
  %_lhs1793 = load i32* %t1741
  store i32 %_lhs1793, { i32, [ 0 x i32 ] }** %a_slot1731
  %_lhs1794 = load i32* %j1740
  ret i32 %_lhs1794
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1708, i32 %l1706, i32 %r1704){

__fresh413:
  %a_slot1709 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1708, { i32, [ 0 x i32 ] }** %a_slot1709
  %l_slot1707 = alloca i32
  store i32 %l1706, i32* %l_slot1707
  %r_slot1705 = alloca i32
  store i32 %r1704, i32* %r_slot1705
  %j1710 = alloca i32
  store i32 0, i32* %j1710
  %_lhs1711 = load i32* %l_slot1707
  %_lhs1712 = load i32* %r_slot1705
  %bop1713 = icmp slt i32 %_lhs1711, %_lhs1712
  br i1 %bop1713, label %__then412, label %__else411

__fresh414:
  br label %__then412

__then412:
  %_lhs1716 = load i32* %r_slot1705
  %_lhs1715 = load i32* %l_slot1707
  %_lhs1714 = load { i32, [ 0 x i32 ] }** %a_slot1709
  %ret1717 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1714, i32 %_lhs1715, i32 %_lhs1716 )
  store i32 %ret1717, i32* %j1710
  %_lhs1720 = load i32* %j1710
  %bop1721 = sub i32 %_lhs1720, 1
  %_lhs1719 = load i32* %l_slot1707
  %_lhs1718 = load { i32, [ 0 x i32 ] }** %a_slot1709
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1718, i32 %_lhs1719, i32 %bop1721 )
  %_lhs1725 = load i32* %r_slot1705
  %_lhs1723 = load i32* %j1710
  %bop1724 = add i32 %_lhs1723, 1
  %_lhs1722 = load { i32, [ 0 x i32 ] }** %a_slot1709
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1722, i32 %bop1724, i32 %_lhs1725 )
  br label %__merge410

__fresh415:
  br label %__else411

__else411:
  br label %__merge410

__merge410:
  ret void
}


