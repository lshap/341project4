declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh341:
  ret void
}


define i32 @program (i32 %argc854, { i32, [ 0 x i8* ] }* %argv852){

__fresh334:
  %argc_slot855 = alloca i32
  store i32 %argc854, i32* %argc_slot855
  %argv_slot853 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv852, { i32, [ 0 x i8* ] }** %argv_slot853
  %x856 = alloca i32
  store i32 10, i32* %x856
  %array_ptr857 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array858 = bitcast { i32, [ 0 x i32 ] }* %array_ptr857 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr859 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array858, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr859
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr860
  br label %__compare331

__fresh335:
  br label %__compare331

__compare331:
  %comparison_result861 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr860, 3
  br i1 %comparison_result861, label %__body332, label %__end333

__fresh336:
  br label %__body332

__body332:
  store { i32, [ 0 x i32 ] }** %index_ptr860, i32* %i862
  %array_ptr863 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array864 = bitcast { i32, [ 0 x i32 ] }* %array_ptr863 to { i32, [ 0 x i32 ] }* 
  %index_ptr865 = getelementptr { i32, [ 0 x i32 ] }* %array864, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr865
  store i32 0, i32* %index_ptr866
  br label %__compare328

__fresh337:
  br label %__compare328

__compare328:
  %comparison_result867 = icmp slt i32* %index_ptr866, 3
  br i1 %comparison_result867, label %__body329, label %__end330

__fresh338:
  br label %__body329

__body329:
  store i32* %index_ptr866, i32* %j868
  %_lhs869 = load i32* %x856
  %_lhs870 = load i32* %i862
  %bop871 = add i32 %_lhs869, %_lhs870
  %_lhs872 = load i32* %j868
  %bop873 = add i32 %bop871, %_lhs872
  %index_ptr866 = add i32* %index_ptr866, 1
  br label %__compare328

__fresh339:
  br label %__end330

__end330:
  %index_ptr860 = add { i32, [ 0 x i32 ] }** %index_ptr860, 1
  br label %__compare331

__fresh340:
  br label %__end333

__end333:
  %a874 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array858, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a874
  %_lhs875 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a874
  %b876 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs875, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b876
  %index_ptr877 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b876, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %index_ptr878 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b876, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs879 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b876
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs879
}


