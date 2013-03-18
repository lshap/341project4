declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh319:
  ret void
}


define i32 @program (i32 %argc1799, { i32, [ 0 x i8* ] }* %argv1797){

__fresh316:
  %argc_slot1800 = alloca i32
  store i32 %argc1799, i32* %argc_slot1800
  %argv_slot1798 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1797, { i32, [ 0 x i8* ] }** %argv_slot1798
  %array_ptr1801 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array1802 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1801 to { i32, [ 0 x i32 ] }* 
  %index_ptr1803 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1803
  %index_ptr1804 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr1804
  %index_ptr1805 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr1805
  %index_ptr1806 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr1806
  %unop1807 = sub i32 0, 6
  %index_ptr1808 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 4
  store i32 %unop1807, i32* %index_ptr1808
  %index_ptr1809 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr1809
  %index_ptr1810 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr1810
  %index_ptr1811 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr1811
  %unop1812 = sub i32 0, 2
  %index_ptr1813 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 8
  store i32 %unop1812, i32* %index_ptr1813
  %unop1814 = sub i32 0, 5
  %index_ptr1815 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 9
  store i32 %unop1814, i32* %index_ptr1815
  %index_ptr1816 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr1816
  %index_ptr1817 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr1817
  %index_ptr1818 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr1818
  %unop1819 = sub i32 0, 3
  %index_ptr1820 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 13
  store i32 %unop1819, i32* %index_ptr1820
  %index_ptr1821 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr1821
  %nums1822 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1802, { i32, [ 0 x i32 ] }** %nums1822
  %i1823 = alloca i32
  store i32 0, i32* %i1823
  %_lhs1824 = load { i32, [ 0 x i32 ] }** %nums1822
  %len_ptr1825 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1824, i32 0, i32 0
  %len1826 = load i32* %len_ptr1825
  %n1827 = alloca i32
  store i32 %len1826, i32* %n1827
  %_lhs1829 = load i32* %n1827
  %bop1830 = sub i32 %_lhs1829, 1
  %_lhs1828 = load { i32, [ 0 x i32 ] }** %nums1822
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1828, i32 0, i32 %bop1830 )
  store i32 0, i32* %i1823
  br label %__cond315

__cond315:
  %_lhs1831 = load i32* %i1823
  %_lhs1832 = load i32* %n1827
  %bop1833 = sub i32 %_lhs1832, 1
  %bop1834 = icmp sle i32 %_lhs1831, %bop1833
  br i1 %bop1834, label %__body314, label %__post313

__fresh317:
  br label %__body314

__body314:
  %_lhs1835 = load i32* %i1823
  %index_ptr1836 = getelementptr { i32, [ 0 x i32 ] }** %nums1822, i32 %_lhs1835
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1835 )
  %_lhs1837 = load { i32, [ 0 x i32 ] }** %nums1822
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs1837 )
  %_lhs1838 = load i32* %i1823
  %bop1839 = add i32 %_lhs1838, 1
  store i32 %bop1839, i32* %i1823
  br label %__cond315

__fresh318:
  br label %__post313

__post313:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a1752, i32 %i1750, i32 %j1748){

__fresh308:
  %a_slot1753 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1752, { i32, [ 0 x i32 ] }** %a_slot1753
  %i_slot1751 = alloca i32
  store i32 %i1750, i32* %i_slot1751
  %j_slot1749 = alloca i32
  store i32 %j1748, i32* %j_slot1749
  %t1754 = alloca i32
  store i32 0, i32* %t1754
  %_lhs1755 = load i32* %j_slot1749
  %index_ptr1756 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1753, i32 %_lhs1755
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1755 )
  %_lhs1757 = load { i32, [ 0 x i32 ] }** %a_slot1753
  %_lhs1758 = load i32* %i_slot1751
  %index_ptr1759 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1753, i32 %_lhs1758
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1758 )
  %_lhs1760 = load { i32, [ 0 x i32 ] }** %a_slot1753
  %bop1761 = icmp slt { i32, [ 0 x i32 ] }* %_lhs1757, %_lhs1760
  br i1 %bop1761, label %__then304, label %__else303

__fresh309:
  br label %__then304

__then304:
  %_lhs1762 = load i32* %i_slot1751
  %index_ptr1763 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1753, i32 %_lhs1762
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1762 )
  %_lhs1764 = load { i32, [ 0 x i32 ] }** %a_slot1753
  store { i32, [ 0 x i32 ] }* %_lhs1764, i32* %t1754
  %_lhs1765 = load i32* %i_slot1751
  %index_ptr1766 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1753, i32 %_lhs1765
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1765 )
  %_lhs1767 = load i32* %j_slot1749
  %index_ptr1768 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1753, i32 %_lhs1767
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1767 )
  %_lhs1769 = load { i32, [ 0 x i32 ] }** %a_slot1753
  store { i32, [ 0 x i32 ] }* %_lhs1769, { i32, [ 0 x i32 ] }** %a_slot1753
  %_lhs1770 = load i32* %j_slot1749
  %index_ptr1771 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1753, i32 %_lhs1770
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1770 )
  %_lhs1772 = load i32* %t1754
  store i32 %_lhs1772, { i32, [ 0 x i32 ] }** %a_slot1753
  br label %__merge302

__fresh310:
  br label %__else303

__else303:
  br label %__merge302

__merge302:
  %_lhs1773 = load i32* %j_slot1749
  %_lhs1774 = load i32* %i_slot1751
  %bop1775 = sub i32 %_lhs1773, %_lhs1774
  %bop1776 = icmp sgt i32 %bop1775, 1
  br i1 %bop1776, label %__then307, label %__else306

__fresh311:
  br label %__then307

__then307:
  %_lhs1777 = load i32* %j_slot1749
  %_lhs1778 = load i32* %i_slot1751
  %bop1779 = sub i32 %_lhs1777, %_lhs1778
  %bop1780 = add i32 %bop1779, 1
  %bop1781 = ashr i32 %bop1780, 1
  store i32 %bop1781, i32* %t1754
  %_lhs1784 = load i32* %j_slot1749
  %_lhs1785 = load i32* %t1754
  %bop1786 = sub i32 %_lhs1784, %_lhs1785
  %_lhs1783 = load i32* %i_slot1751
  %_lhs1782 = load { i32, [ 0 x i32 ] }** %a_slot1753
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1782, i32 %_lhs1783, i32 %bop1786 )
  %_lhs1791 = load i32* %j_slot1749
  %_lhs1788 = load i32* %i_slot1751
  %_lhs1789 = load i32* %t1754
  %bop1790 = add i32 %_lhs1788, %_lhs1789
  %_lhs1787 = load { i32, [ 0 x i32 ] }** %a_slot1753
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1787, i32 %bop1790, i32 %_lhs1791 )
  %_lhs1794 = load i32* %j_slot1749
  %_lhs1795 = load i32* %t1754
  %bop1796 = sub i32 %_lhs1794, %_lhs1795
  %_lhs1793 = load i32* %i_slot1751
  %_lhs1792 = load { i32, [ 0 x i32 ] }** %a_slot1753
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1792, i32 %_lhs1793, i32 %bop1796 )
  br label %__merge305

__fresh312:
  br label %__else306

__else306:
  br label %__merge305

__merge305:
  ret void
}


