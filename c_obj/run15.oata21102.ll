declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh328:
  ret void
}


define i32 @program (i32 %argc803, { i32, [ 0 x i8* ] }* %argv801){

__fresh309:
  %argc_slot804 = alloca i32
  store i32 %argc803, i32* %argc_slot804
  %argv_slot802 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv801, { i32, [ 0 x i8* ] }** %argv_slot802
  %array_ptr805 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array806 = bitcast { i32, [ 0 x i32 ] }* %array_ptr805 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr808
  br label %__compare294

__fresh310:
  br label %__compare294

__compare294:
  %comparison_result809 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr808, 3
  br i1 %comparison_result809, label %__body295, label %__end296

__fresh311:
  br label %__body295

__body295:
  store { i32, [ 0 x i32 ] }** %index_ptr808, i32* %i810
  %array_ptr811 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array812 = bitcast { i32, [ 0 x i32 ] }* %array_ptr811 to { i32, [ 0 x i32 ] }* 
  store i32 0, i32* %index_ptr814
  br label %__compare291

__fresh312:
  br label %__compare291

__compare291:
  %comparison_result815 = icmp slt i32* %index_ptr814, 3
  br i1 %comparison_result815, label %__body292, label %__end293

__fresh313:
  br label %__body292

__body292:
  store i32* %index_ptr814, i32* %j816
  %_lhs817 = load i32* %j816
  %index_ptr814 = add i32* %index_ptr814, 1
  br label %__compare291

__fresh314:
  br label %__end293

__end293:
  %index_ptr808 = add { i32, [ 0 x i32 ] }** %index_ptr808, 1
  br label %__compare294

__fresh315:
  br label %__end296

__end296:
  %a818 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array806, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a818
  %array_ptr819 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array820 = bitcast { i32, [ 0 x i32 ] }* %array_ptr819 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr822
  br label %__compare300

__fresh316:
  br label %__compare300

__compare300:
  %comparison_result823 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr822, 4
  br i1 %comparison_result823, label %__body301, label %__end302

__fresh317:
  br label %__body301

__body301:
  store { i32, [ 0 x i32 ] }** %index_ptr822, i32* %i824
  %array_ptr825 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array826 = bitcast { i32, [ 0 x i32 ] }* %array_ptr825 to { i32, [ 0 x i32 ] }* 
  store i32 0, i32* %index_ptr828
  br label %__compare297

__fresh318:
  br label %__compare297

__compare297:
  %comparison_result829 = icmp slt i32* %index_ptr828, 5
  br i1 %comparison_result829, label %__body298, label %__end299

__fresh319:
  br label %__body298

__body298:
  store i32* %index_ptr828, i32* %j830
  %_lhs831 = load i32* %i824
  %_lhs832 = load i32* %j830
  %bop833 = mul i32 %_lhs831, %_lhs832
  %index_ptr828 = add i32* %index_ptr828, 1
  br label %__compare297

__fresh320:
  br label %__end299

__end299:
  %index_ptr822 = add { i32, [ 0 x i32 ] }** %index_ptr822, 1
  br label %__compare300

__fresh321:
  br label %__end302

__end302:
  %arr834 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array820, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr834
  %index_ptr835 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr834, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %index_ptr836 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr834, i32 4
  call void @oat_array_bounds_check( i32 0, i32 4 )
  %_lhs837 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr834
  %index_ptr838 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a818, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr839 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a818, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs840 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a818
  %bop841 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs837, %_lhs840
  %array_ptr842 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array843 = bitcast { i32, [ 0 x i32 ] }* %array_ptr842 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr845
  br label %__compare306

__fresh322:
  br label %__compare306

__compare306:
  %comparison_result846 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr845, 3
  br i1 %comparison_result846, label %__body307, label %__end308

__fresh323:
  br label %__body307

__body307:
  store { i32, [ 0 x i32 ] }** %index_ptr845, i32* %i847
  %array_ptr848 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array849 = bitcast { i32, [ 0 x i32 ] }* %array_ptr848 to { i32, [ 0 x i32 ] }* 
  store i32 0, i32* %index_ptr851
  br label %__compare303

__fresh324:
  br label %__compare303

__compare303:
  %comparison_result852 = icmp slt i32* %index_ptr851, 3
  br i1 %comparison_result852, label %__body304, label %__end305

__fresh325:
  br label %__body304

__body304:
  store i32* %index_ptr851, i32* %j853
  %_lhs854 = load i32* %i847
  %_lhs855 = load i32* %j853
  %bop856 = mul i32 %_lhs854, %_lhs855
  %index_ptr851 = add i32* %index_ptr851, 1
  br label %__compare303

__fresh326:
  br label %__end305

__end305:
  %index_ptr845 = add { i32, [ 0 x i32 ] }** %index_ptr845, 1
  br label %__compare306

__fresh327:
  br label %__end308

__end308:
  %ret857 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array843 )
  %bop858 = add i32 %bop841, %ret857
  %ret859 = call i32 @g ( i32 4 )
  %bop860 = add i32 %bop858, %ret859
  ret i32 %bop860
}


define i32 @g (i32 %x782){

__fresh284:
  %x_slot783 = alloca i32
  store i32 %x782, i32* %x_slot783
  %array_ptr784 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array785 = bitcast { i32, [ 0 x i32 ] }* %array_ptr784 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr787
  br label %__compare281

__fresh285:
  br label %__compare281

__compare281:
  %comparison_result788 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr787, 3
  br i1 %comparison_result788, label %__body282, label %__end283

__fresh286:
  br label %__body282

__body282:
  store { i32, [ 0 x i32 ] }** %index_ptr787, i32* %i789
  %array_ptr790 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array791 = bitcast { i32, [ 0 x i32 ] }* %array_ptr790 to { i32, [ 0 x i32 ] }* 
  store i32 0, i32* %index_ptr793
  br label %__compare278

__fresh287:
  br label %__compare278

__compare278:
  %comparison_result794 = icmp slt i32* %index_ptr793, 3
  br i1 %comparison_result794, label %__body279, label %__end280

__fresh288:
  br label %__body279

__body279:
  store i32* %index_ptr793, i32* %j795
  %_lhs796 = load i32* %x_slot783
  %index_ptr793 = add i32* %index_ptr793, 1
  br label %__compare278

__fresh289:
  br label %__end280

__end280:
  %index_ptr787 = add { i32, [ 0 x i32 ] }** %index_ptr787, 1
  br label %__compare281

__fresh290:
  br label %__end283

__end283:
  %arr797 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array785, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr797
  %index_ptr798 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr797, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr799 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr797, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs800 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr797
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs800
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a777){

__fresh277:
  %a_slot778 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a777, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot778
  %index_ptr779 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot778, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr780 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot778, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs781 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot778
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs781
}


