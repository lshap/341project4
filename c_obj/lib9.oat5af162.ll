declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh831:
  ret void
}


define i32 @program (i32 %argc1851, { i32, [ 0 x i8* ] }* %argv1849){

__fresh828:
  %argc_slot1852 = alloca i32
  store i32 %argc1851, i32* %argc_slot1852
  %argv_slot1850 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1849, { i32, [ 0 x i8* ] }** %argv_slot1850
  %i1853 = alloca i32
  store i32 1, i32* %i1853
  br label %__cond827

__cond827:
  %_lhs1854 = load i32* %i1853
  %_lhs1855 = load i32* %argc_slot1852
  %bop1856 = icmp slt i32 %_lhs1854, %_lhs1855
  br i1 %bop1856, label %__body826, label %__post825

__fresh829:
  br label %__body826

__body826:
  %_lhs1857 = load i32* %i1853
  %size_ptr1859 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1850, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1859, i32 %_lhs1857 )
  %index_ptr1858 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1850, i32 0, i32 1, i32 %_lhs1857
  %_lhs1860 = load { i32, [ 0 x i8* ] }** %argv_slot1850
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs1860 )
  %_lhs1861 = load i32* %i1853
  %bop1862 = add i32 %_lhs1861, 1
  store i32 %bop1862, i32* %i1853
  br label %__cond827

__fresh830:
  br label %__post825

__post825:
  %_lhs1863 = load i32* %argc_slot1852
  ret i32 %_lhs1863
}


