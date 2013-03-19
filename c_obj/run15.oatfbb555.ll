declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh391:
  ret void
}


define i32 @program (i32 %argc841, { i32, [ 0 x i8* ] }* %argv839){

__fresh372:
  %argc_slot842 = alloca i32
  store i32 %argc841, i32* %argc_slot842
  %argv_slot840 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv839, { i32, [ 0 x i8* ] }** %argv_slot840
  %array_ptr843 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array844 = bitcast { i32, [ 0 x i32 ] }* %array_ptr843 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr846
  br label %__compare357

__fresh373:
  br label %__compare357

__compare357:
  %comparison_result847 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr846, 3
  br i1 %comparison_result847, label %__body358, label %__end359

__fresh374:
  br label %__body358

__body358:
  store { i32, [ 0 x i32 ] }** %index_ptr846, i32* %i848
  %array_ptr849 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array850 = bitcast { i32, [ 0 x i32 ] }* %array_ptr849 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr852
  br label %__compare354

__fresh375:
  br label %__compare354

__compare354:
  %comparison_result853 = icmp slt i32* %index_ptr852, 3
  br i1 %comparison_result853, label %__body355, label %__end356

__fresh376:
  br label %__body355

__body355:
  store i32* %index_ptr852, i32* %j854
  %_lhs855 = load i32* %j854
  %index_ptr852 = add i32* %index_ptr852, 1
  br label %__compare354

__fresh377:
  br label %__end356

__end356:
  %index_ptr846 = add { i32, [ 0 x i32 ] }** %index_ptr846, 1
  br label %__compare357

__fresh378:
  br label %__end359

__end359:
  %a856 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array844, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a856
  %array_ptr857 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array858 = bitcast { i32, [ 0 x i32 ] }* %array_ptr857 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr860
  br label %__compare363

__fresh379:
  br label %__compare363

__compare363:
  %comparison_result861 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr860, 4
  br i1 %comparison_result861, label %__body364, label %__end365

__fresh380:
  br label %__body364

__body364:
  store { i32, [ 0 x i32 ] }** %index_ptr860, i32* %i862
  %array_ptr863 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array864 = bitcast { i32, [ 0 x i32 ] }* %array_ptr863 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr866
  br label %__compare360

__fresh381:
  br label %__compare360

__compare360:
  %comparison_result867 = icmp slt i32* %index_ptr866, 5
  br i1 %comparison_result867, label %__body361, label %__end362

__fresh382:
  br label %__body361

__body361:
  store i32* %index_ptr866, i32* %j868
  %_lhs869 = load i32* %i862
  %_lhs870 = load i32* %j868
  %bop871 = mul i32 %_lhs869, %_lhs870
  %index_ptr866 = add i32* %index_ptr866, 1
  br label %__compare360

__fresh383:
  br label %__end362

__end362:
  %index_ptr860 = add { i32, [ 0 x i32 ] }** %index_ptr860, 1
  br label %__compare363

__fresh384:
  br label %__end365

__end365:
  %arr872 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array858, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr872
  %size_ptr874 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr872, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr874, i32 3 )
  %index_ptr873 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr872, i32 0, i32 1, i32 3
  %size_ptr876 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr872, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr876, i32 4 )
  %index_ptr875 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr872, i32 0, i32 1, i32 4
  %_lhs877 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr872
  %size_ptr879 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a856, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr879, i32 1 )
  %index_ptr878 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a856, i32 0, i32 1, i32 1
  %size_ptr881 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a856, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr881, i32 2 )
  %index_ptr880 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a856, i32 0, i32 1, i32 2
  %_lhs882 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a856
  %bop883 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs877, %_lhs882
  %array_ptr884 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array885 = bitcast { i32, [ 0 x i32 ] }* %array_ptr884 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr887
  br label %__compare369

__fresh385:
  br label %__compare369

__compare369:
  %comparison_result888 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr887, 3
  br i1 %comparison_result888, label %__body370, label %__end371

__fresh386:
  br label %__body370

__body370:
  store { i32, [ 0 x i32 ] }** %index_ptr887, i32* %i889
  %array_ptr890 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array891 = bitcast { i32, [ 0 x i32 ] }* %array_ptr890 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr893
  br label %__compare366

__fresh387:
  br label %__compare366

__compare366:
  %comparison_result894 = icmp slt i32* %index_ptr893, 3
  br i1 %comparison_result894, label %__body367, label %__end368

__fresh388:
  br label %__body367

__body367:
  store i32* %index_ptr893, i32* %j895
  %_lhs896 = load i32* %i889
  %_lhs897 = load i32* %j895
  %bop898 = mul i32 %_lhs896, %_lhs897
  %index_ptr893 = add i32* %index_ptr893, 1
  br label %__compare366

__fresh389:
  br label %__end368

__end368:
  %index_ptr887 = add { i32, [ 0 x i32 ] }** %index_ptr887, 1
  br label %__compare369

__fresh390:
  br label %__end371

__end371:
  %ret899 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array885 )
  %bop900 = add i32 %bop883, %ret899
  %ret901 = call i32 @g ( i32 4 )
  %bop902 = add i32 %bop900, %ret901
  ret i32 %bop902
}


define i32 @g (i32 %x818){

__fresh347:
  %x_slot819 = alloca i32
  store i32 %x818, i32* %x_slot819
  %array_ptr820 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array821 = bitcast { i32, [ 0 x i32 ] }* %array_ptr820 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr823
  br label %__compare344

__fresh348:
  br label %__compare344

__compare344:
  %comparison_result824 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr823, 3
  br i1 %comparison_result824, label %__body345, label %__end346

__fresh349:
  br label %__body345

__body345:
  store { i32, [ 0 x i32 ] }** %index_ptr823, i32* %i825
  %array_ptr826 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array827 = bitcast { i32, [ 0 x i32 ] }* %array_ptr826 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr829
  br label %__compare341

__fresh350:
  br label %__compare341

__compare341:
  %comparison_result830 = icmp slt i32* %index_ptr829, 3
  br i1 %comparison_result830, label %__body342, label %__end343

__fresh351:
  br label %__body342

__body342:
  store i32* %index_ptr829, i32* %j831
  %_lhs832 = load i32* %x_slot819
  %index_ptr829 = add i32* %index_ptr829, 1
  br label %__compare341

__fresh352:
  br label %__end343

__end343:
  %index_ptr823 = add { i32, [ 0 x i32 ] }** %index_ptr823, 1
  br label %__compare344

__fresh353:
  br label %__end346

__end346:
  %arr833 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array821, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr833
  %size_ptr835 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr833, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr835, i32 1 )
  %index_ptr834 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr833, i32 0, i32 1, i32 1
  %size_ptr837 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr833, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr837, i32 1 )
  %index_ptr836 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr833, i32 0, i32 1, i32 1
  %_lhs838 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr833
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs838
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a811){

__fresh340:
  %a_slot812 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a811, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot812
  %size_ptr814 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot812, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr814, i32 1 )
  %index_ptr813 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot812, i32 0, i32 1, i32 1
  %size_ptr816 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot812, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr816, i32 1 )
  %index_ptr815 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot812, i32 0, i32 1, i32 1
  %_lhs817 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot812
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs817
}


