declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1732 = global i8* zeroinitializer, align 4		; initialized by str1732.init
@_oat_string1730.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1730 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1730.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh785:
  call void @str1732.init(  )
  ret void
}


define i32 @program (i32 %argc1736, { i32, [ 0 x i8* ] }* %argv1734){

__fresh782:
  %argc_slot1737 = alloca i32
  store i32 %argc1736, i32* %argc_slot1737
  %argv_slot1735 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1734, { i32, [ 0 x i8* ] }** %argv_slot1735
  %_lhs1738 = load i8** @str1732
  %ret1739 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1738 )
  %arr1740 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1739, { i32, [ 0 x i32 ] }** %arr1740
  %s1741 = alloca i32
  store i32 0, i32* %s1741
  %i1742 = alloca i32
  store i32 0, i32* %i1742
  br label %__cond781

__cond781:
  %_lhs1743 = load i32* %i1742
  %bop1744 = icmp slt i32 %_lhs1743, 5
  br i1 %bop1744, label %__body780, label %__post779

__fresh783:
  br label %__body780

__body780:
  %_lhs1745 = load i32* %s1741
  %_lhs1746 = load i32* %i1742
  %size_ptr1748 = getelementptr { i32, [ 0 x i32 ] }* %arr1740, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1748, i32 %_lhs1746 )
  %index_ptr1747 = getelementptr { i32, [ 0 x i32 ] }* %arr1740, i32 0, i32 1, i32 %_lhs1746
  %_lhs1749 = load { i32, [ 0 x i32 ] }** %arr1740
  %bop1750 = add i32 %_lhs1745, %_lhs1749
  store i32 %bop1750, i32* %s1741
  %_lhs1751 = load i32* %i1742
  %bop1752 = add i32 %_lhs1751, 1
  store i32 %bop1752, i32* %i1742
  br label %__cond781

__fresh784:
  br label %__post779

__post779:
  %_lhs1753 = load i32* %s1741
  ret i32 %_lhs1753
}


define void @str1732.init (){

__fresh778:
  %strval1731 = load i8** @_oat_string1730
  store i8* %strval1731, i8** @str1732
  ret void
}


