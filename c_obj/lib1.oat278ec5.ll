declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh760:
  ret void
}


define i32 @program (i32 %argc1647, { i32, [ 0 x i8* ] }* %argv1645){

__fresh759:
  %argc_slot1648 = alloca i32
  store i32 %argc1647, i32* %argc_slot1648
  %argv_slot1646 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1645, { i32, [ 0 x i8* ] }** %argv_slot1646
  %array_ptr1649 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1650 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1649 to { i32, [ 0 x i32 ] }* 
  %index_ptr1651 = getelementptr { i32, [ 0 x i32 ] }* %array1650, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1651
  %index_ptr1652 = getelementptr { i32, [ 0 x i32 ] }* %array1650, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1652
  %index_ptr1653 = getelementptr { i32, [ 0 x i32 ] }* %array1650, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1653
  %arr1654 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1650, { i32, [ 0 x i32 ] }** %arr1654
  %_lhs1655 = load { i32, [ 0 x i32 ] }** %arr1654
  %len_ptr1656 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1655, i32 0, i32 0
  %len1657 = load i32* %len_ptr1656
  %len1658 = alloca i32
  store i32 %len1657, i32* %len1658
  %_lhs1659 = load i32* %len1658
  ret i32 %_lhs1659
}


