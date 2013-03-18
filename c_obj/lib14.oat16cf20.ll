declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1757 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1757.init
define void @oat_init (){

__fresh481:
  call void @a1757.init(  )
  ret void
}


define i32 @program (i32 %argc1760, { i32, [ 0 x i8* ] }* %argv1758){

__fresh480:
  %argc_slot1761 = alloca i32
  store i32 %argc1760, i32* %argc_slot1761
  %argv_slot1759 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1758, { i32, [ 0 x i8* ] }** %argv_slot1759
  %_lhs1762 = load { i32, [ 0 x i32 ] }** @a1757
  %ret1763 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1762 )
  call void @print_string( i8* %ret1763 )
  ret i32 0
}


define void @a1757.init (){

__fresh479:
  %array_ptr1745 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1746 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1745 to { i32, [ 0 x i32 ] }* 
  %index_ptr1747 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1747
  %index_ptr1748 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1748
  %index_ptr1749 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1749
  %index_ptr1750 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1750
  %index_ptr1751 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1751
  %index_ptr1752 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1752
  %index_ptr1753 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1753
  %index_ptr1754 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1754
  %index_ptr1755 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1755
  %index_ptr1756 = getelementptr { i32, [ 0 x i32 ] }* %array1746, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1756
  store { i32, [ 0 x i32 ] }* %array1746, { i32, [ 0 x i32 ] }** @a1757
  ret void
}


