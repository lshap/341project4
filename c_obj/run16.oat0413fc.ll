declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh290:
  ret void
}


define i32 @program (i32 %argc854, { i32, [ 0 x i8* ] }* %argv852){

__fresh283:
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
  br label %__compare280

__fresh284:
  br label %__compare280

__compare280:
  %comparison_result861 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr860, 3
  br i1 %comparison_result861, label %__body281, label %__end282

__fresh285:
  br label %__body281

__body281:
  store { i32, [ 0 x i32 ] }** %index_ptr860, i32 %i862
  %array_ptr863 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array864 = bitcast { i32, [ 0 x i32 ] }* %array_ptr863 to { i32, [ 0 x i32 ] }* 
  %index_ptr865 = getelementptr { i32, [ 0 x i32 ] }* %array864, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr865
  store i32 0, i32* %index_ptr866
  br label %__compare277

__fresh286:
  br label %__compare277

__compare277:
  %comparison_result867 = icmp slt i32* %index_ptr866, 3
  br i1 %comparison_result867, label %__body278, label %__end279

__fresh287:
  br label %__body278

__body278:
  store i32* %index_ptr866, i32 %j868
  %_lhs869 = load i32* %x856
  %bop870 = add i32 %_lhs869, 4
  %bop871 = add i32 %bop870, 4
  %index_ptr866 = add i32* %index_ptr866, 1
  br label %__compare277

__fresh288:
  br label %__end279

__end279:
  %index_ptr860 = add { i32, [ 0 x i32 ] }** %index_ptr860, 1
  br label %__compare280

__fresh289:
  br label %__end282

__end282:
  %a872 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }*** %array858, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a872
  %_lhs873 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a872
  %b874 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs873, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b874
  %index_ptr875 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b874, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %index_ptr876 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b874, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs877 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b874
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs877
}


