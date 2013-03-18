declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1665 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1665.init
define void @oat_init (){

__fresh401:
  call void @a1665.init(  )
  ret void
}


define i32 @program (i32 %argc1668, { i32, [ 0 x i8* ] }* %argv1666){

__fresh400:
  %argc_slot1669 = alloca i32
  store i32 %argc1668, i32* %argc_slot1669
  %argv_slot1667 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1666, { i32, [ 0 x i8* ] }** %argv_slot1667
  %_lhs1670 = load { i32, [ 0 x i32 ] }** @a1665
  %ret1671 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1670 )
  call void @print_string( i8* %ret1671 )
  ret i32 0
}


define void @a1665.init (){

__fresh399:
  %array_ptr1653 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1654 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1653 to { i32, [ 0 x i32 ] }* 
  %index_ptr1655 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1655
  %index_ptr1656 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1656
  %index_ptr1657 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1657
  %index_ptr1658 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1658
  %index_ptr1659 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1659
  %index_ptr1660 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1660
  %index_ptr1661 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1661
  %index_ptr1662 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1662
  %index_ptr1663 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1663
  %index_ptr1664 = getelementptr { i32, [ 0 x i32 ] }* %array1654, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1664
  store { i32, [ 0 x i32 ] }* %array1654, { i32, [ 0 x i32 ] }** @a1665
  ret void
}


