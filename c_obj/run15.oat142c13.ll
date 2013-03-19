declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh327:
  ret void
}


define i32 @program (i32 %argc794, { i32, [ 0 x i8* ] }* %argv792){

__fresh308:
  %argc_slot795 = alloca i32
  store i32 %argc794, i32* %argc_slot795
  %argv_slot793 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv792, { i32, [ 0 x i8* ] }** %argv_slot793
  %array_ptr796 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array797 = bitcast { i32, [ 0 x i32 ] }* %array_ptr796 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr798 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array797, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr798
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr799
  br label %__compare293

__fresh309:
  br label %__compare293

__compare293:
  %comparison_result800 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr799, 3
  br i1 %comparison_result800, label %__body294, label %__end295

__fresh310:
  br label %__body294

__body294:
  store { i32, [ 0 x i32 ] }** %index_ptr799, i32* %i801
  %array_ptr802 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array803 = bitcast { i32, [ 0 x i32 ] }* %array_ptr802 to { i32, [ 0 x i32 ] }* 
  %index_ptr804 = getelementptr { i32, [ 0 x i32 ] }* %array803, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr804
  store i32 0, i32* %index_ptr805
  br label %__compare290

__fresh311:
  br label %__compare290

__compare290:
  %comparison_result806 = icmp slt i32* %index_ptr805, 3
  br i1 %comparison_result806, label %__body291, label %__end292

__fresh312:
  br label %__body291

__body291:
  store i32* %index_ptr805, i32* %j807
  %_lhs808 = load i32* %j807
  %index_ptr805 = add i32* %index_ptr805, 1
  br label %__compare290

__fresh313:
  br label %__end292

__end292:
  %index_ptr799 = add { i32, [ 0 x i32 ] }** %index_ptr799, 1
  br label %__compare293

__fresh314:
  br label %__end295

__end295:
  %a809 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array797, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a809
  %array_ptr810 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array811 = bitcast { i32, [ 0 x i32 ] }* %array_ptr810 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr812 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array811, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr812
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr813
  br label %__compare299

__fresh315:
  br label %__compare299

__compare299:
  %comparison_result814 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr813, 4
  br i1 %comparison_result814, label %__body300, label %__end301

__fresh316:
  br label %__body300

__body300:
  store { i32, [ 0 x i32 ] }** %index_ptr813, i32* %i815
  %array_ptr816 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array817 = bitcast { i32, [ 0 x i32 ] }* %array_ptr816 to { i32, [ 0 x i32 ] }* 
  %index_ptr818 = getelementptr { i32, [ 0 x i32 ] }* %array817, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr818
  store i32 0, i32* %index_ptr819
  br label %__compare296

__fresh317:
  br label %__compare296

__compare296:
  %comparison_result820 = icmp slt i32* %index_ptr819, 5
  br i1 %comparison_result820, label %__body297, label %__end298

__fresh318:
  br label %__body297

__body297:
  store i32* %index_ptr819, i32* %j821
  %_lhs822 = load i32* %i815
  %_lhs823 = load i32* %j821
  %bop824 = mul i32 %_lhs822, %_lhs823
  %index_ptr819 = add i32* %index_ptr819, 1
  br label %__compare296

__fresh319:
  br label %__end298

__end298:
  %index_ptr813 = add { i32, [ 0 x i32 ] }** %index_ptr813, 1
  br label %__compare299

__fresh320:
  br label %__end301

__end301:
  %arr825 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array811, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr825
  %index_ptr826 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr825, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %index_ptr827 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr825, i32 4
  call void @oat_array_bounds_check( i32 0, i32 4 )
  %_lhs828 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr825
  %index_ptr829 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a809, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr830 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a809, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs831 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a809
  %bop832 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs828, %_lhs831
  %array_ptr833 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array834 = bitcast { i32, [ 0 x i32 ] }* %array_ptr833 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr835 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array834, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr835
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr836
  br label %__compare305

__fresh321:
  br label %__compare305

__compare305:
  %comparison_result837 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr836, 3
  br i1 %comparison_result837, label %__body306, label %__end307

__fresh322:
  br label %__body306

__body306:
  store { i32, [ 0 x i32 ] }** %index_ptr836, i32* %i838
  %array_ptr839 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array840 = bitcast { i32, [ 0 x i32 ] }* %array_ptr839 to { i32, [ 0 x i32 ] }* 
  %index_ptr841 = getelementptr { i32, [ 0 x i32 ] }* %array840, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr841
  store i32 0, i32* %index_ptr842
  br label %__compare302

__fresh323:
  br label %__compare302

__compare302:
  %comparison_result843 = icmp slt i32* %index_ptr842, 3
  br i1 %comparison_result843, label %__body303, label %__end304

__fresh324:
  br label %__body303

__body303:
  store i32* %index_ptr842, i32* %j844
  %_lhs845 = load i32* %i838
  %_lhs846 = load i32* %j844
  %bop847 = mul i32 %_lhs845, %_lhs846
  %index_ptr842 = add i32* %index_ptr842, 1
  br label %__compare302

__fresh325:
  br label %__end304

__end304:
  %index_ptr836 = add { i32, [ 0 x i32 ] }** %index_ptr836, 1
  br label %__compare305

__fresh326:
  br label %__end307

__end307:
  %ret848 = call i32 @f ( { i32, [ 0 x i32 ] }** %array834 )
  %bop849 = add i32 %bop832, %ret848
  %ret850 = call i32 @g ( i32 4 )
  %bop851 = add i32 %bop849, %ret850
  ret i32 %bop851
}


define i32 @g (i32 %x773){

__fresh283:
  %x_slot774 = alloca i32
  store i32 %x773, i32* %x_slot774
  %array_ptr775 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array776 = bitcast { i32, [ 0 x i32 ] }* %array_ptr775 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr777 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array776, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr777
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr778
  br label %__compare280

__fresh284:
  br label %__compare280

__compare280:
  %comparison_result779 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr778, 3
  br i1 %comparison_result779, label %__body281, label %__end282

__fresh285:
  br label %__body281

__body281:
  store { i32, [ 0 x i32 ] }** %index_ptr778, i32* %i780
  %array_ptr781 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array782 = bitcast { i32, [ 0 x i32 ] }* %array_ptr781 to { i32, [ 0 x i32 ] }* 
  %index_ptr783 = getelementptr { i32, [ 0 x i32 ] }* %array782, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr783
  store i32 0, i32* %index_ptr784
  br label %__compare277

__fresh286:
  br label %__compare277

__compare277:
  %comparison_result785 = icmp slt i32* %index_ptr784, 3
  br i1 %comparison_result785, label %__body278, label %__end279

__fresh287:
  br label %__body278

__body278:
  store i32* %index_ptr784, i32* %j786
  %_lhs787 = load i32* %x_slot774
  %index_ptr784 = add i32* %index_ptr784, 1
  br label %__compare277

__fresh288:
  br label %__end279

__end279:
  %index_ptr778 = add { i32, [ 0 x i32 ] }** %index_ptr778, 1
  br label %__compare280

__fresh289:
  br label %__end282

__end282:
  %arr788 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array776, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr788
  %index_ptr789 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr788, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr790 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr788, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs791 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr788
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs791
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a768){

__fresh276:
  %a_slot769 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a768, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot769
  %index_ptr770 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot769, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr771 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot769, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs772 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot769
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs772
}


