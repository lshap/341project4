declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh339:
  ret void
}


define i32 @program (i32 %argc841, { i32, [ 0 x i8* ] }* %argv839){

__fresh320:
  %argc_slot842 = alloca i32
  store i32 %argc841, i32* %argc_slot842
  %argv_slot840 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv839, { i32, [ 0 x i8* ] }** %argv_slot840
  %array_ptr843 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array844 = bitcast { i32, [ 0 x i32 ] }* %array_ptr843 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr846
  br label %__compare305

__fresh321:
  br label %__compare305

__compare305:
  %comparison_result847 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr846, 3
  br i1 %comparison_result847, label %__body306, label %__end307

__fresh322:
  br label %__body306

__body306:
  store { i32, [ 0 x i32 ] }** %index_ptr846, i32* %i848
  %array_ptr849 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array850 = bitcast { i32, [ 0 x i32 ] }* %array_ptr849 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr852
  br label %__compare302

__fresh323:
  br label %__compare302

__compare302:
  %comparison_result853 = icmp slt i32* %index_ptr852, 3
  br i1 %comparison_result853, label %__body303, label %__end304

__fresh324:
  br label %__body303

__body303:
  store i32* %index_ptr852, i32* %j854
  %_lhs855 = load i32* %j854
  %index_ptr852 = add i32* %index_ptr852, 1
  br label %__compare302

__fresh325:
  br label %__end304

__end304:
  %index_ptr846 = add { i32, [ 0 x i32 ] }** %index_ptr846, 1
  br label %__compare305

__fresh326:
  br label %__end307

__end307:
  %a856 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array844, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a856
  %array_ptr857 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array858 = bitcast { i32, [ 0 x i32 ] }* %array_ptr857 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr860
  br label %__compare311

__fresh327:
  br label %__compare311

__compare311:
  %comparison_result861 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr860, 4
  br i1 %comparison_result861, label %__body312, label %__end313

__fresh328:
  br label %__body312

__body312:
  store { i32, [ 0 x i32 ] }** %index_ptr860, i32* %i862
  %array_ptr863 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array864 = bitcast { i32, [ 0 x i32 ] }* %array_ptr863 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr866
  br label %__compare308

__fresh329:
  br label %__compare308

__compare308:
  %comparison_result867 = icmp slt i32* %index_ptr866, 5
  br i1 %comparison_result867, label %__body309, label %__end310

__fresh330:
  br label %__body309

__body309:
  store i32* %index_ptr866, i32* %j868
  %_lhs869 = load i32* %i862
  %_lhs870 = load i32* %j868
  %bop871 = mul i32 %_lhs869, %_lhs870
  %index_ptr866 = add i32* %index_ptr866, 1
  br label %__compare308

__fresh331:
  br label %__end310

__end310:
  %index_ptr860 = add { i32, [ 0 x i32 ] }** %index_ptr860, 1
  br label %__compare311

__fresh332:
  br label %__end313

__end313:
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
  br label %__compare317

__fresh333:
  br label %__compare317

__compare317:
  %comparison_result888 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr887, 3
  br i1 %comparison_result888, label %__body318, label %__end319

__fresh334:
  br label %__body318

__body318:
  store { i32, [ 0 x i32 ] }** %index_ptr887, i32* %i889
  %array_ptr890 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array891 = bitcast { i32, [ 0 x i32 ] }* %array_ptr890 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr893
  br label %__compare314

__fresh335:
  br label %__compare314

__compare314:
  %comparison_result894 = icmp slt i32* %index_ptr893, 3
  br i1 %comparison_result894, label %__body315, label %__end316

__fresh336:
  br label %__body315

__body315:
  store i32* %index_ptr893, i32* %j895
  %_lhs896 = load i32* %i889
  %_lhs897 = load i32* %j895
  %bop898 = mul i32 %_lhs896, %_lhs897
  %index_ptr893 = add i32* %index_ptr893, 1
  br label %__compare314

__fresh337:
  br label %__end316

__end316:
  %index_ptr887 = add { i32, [ 0 x i32 ] }** %index_ptr887, 1
  br label %__compare317

__fresh338:
  br label %__end319

__end319:
  %ret899 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array885 )
  %bop900 = add i32 %bop883, %ret899
  %ret901 = call i32 @g ( i32 4 )
  %bop902 = add i32 %bop900, %ret901
  ret i32 %bop902
}


define i32 @g (i32 %x818){

__fresh295:
  %x_slot819 = alloca i32
  store i32 %x818, i32* %x_slot819
  %array_ptr820 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array821 = bitcast { i32, [ 0 x i32 ] }* %array_ptr820 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr823
  br label %__compare292

__fresh296:
  br label %__compare292

__compare292:
  %comparison_result824 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr823, 3
  br i1 %comparison_result824, label %__body293, label %__end294

__fresh297:
  br label %__body293

__body293:
  store { i32, [ 0 x i32 ] }** %index_ptr823, i32* %i825
  %array_ptr826 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array827 = bitcast { i32, [ 0 x i32 ] }* %array_ptr826 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr829
  br label %__compare289

__fresh298:
  br label %__compare289

__compare289:
  %comparison_result830 = icmp slt i32* %index_ptr829, 3
  br i1 %comparison_result830, label %__body290, label %__end291

__fresh299:
  br label %__body290

__body290:
  store i32* %index_ptr829, i32* %j831
  %_lhs832 = load i32* %x_slot819
  %index_ptr829 = add i32* %index_ptr829, 1
  br label %__compare289

__fresh300:
  br label %__end291

__end291:
  %index_ptr823 = add { i32, [ 0 x i32 ] }** %index_ptr823, 1
  br label %__compare292

__fresh301:
  br label %__end294

__end294:
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

__fresh288:
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


