declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh338:
  ret void
}


define i32 @program (i32 %argc772, { i32, [ 0 x i8* ] }* %argv770){

__fresh328:
  %argc_slot773 = alloca i32
  store i32 %argc772, i32* %argc_slot773
  %argv_slot771 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv770, { i32, [ 0 x i8* ] }** %argv_slot771
  %array_ptr774 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array775 = bitcast { i32, [ 0 x i32 ] }* %array_ptr774 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr777
  br label %__compare319

__fresh329:
  br label %__compare319

__compare319:
  %comparison_result778 = icmp slt i32* %index_ptr777, 3
  br i1 %comparison_result778, label %__body320, label %__end321

__fresh330:
  br label %__body320

__body320:
  store i32* %index_ptr777, i32* %i779
  %_lhs780 = load i32* %i779
  %index_ptr777 = add i32* %index_ptr777, 1
  br label %__compare319

__fresh331:
  br label %__end321

__end321:
  %a781 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array775, { i32, [ 0 x i32 ] }** %a781
  %array_ptr782 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array783 = bitcast { i32, [ 0 x i32 ] }* %array_ptr782 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr785
  br label %__compare322

__fresh332:
  br label %__compare322

__compare322:
  %comparison_result786 = icmp slt i32* %index_ptr785, 4
  br i1 %comparison_result786, label %__body323, label %__end324

__fresh333:
  br label %__body323

__body323:
  store i32* %index_ptr785, i32* %i787
  %_lhs788 = load i32* %i787
  %_lhs789 = load i32* %i787
  %bop790 = mul i32 %_lhs788, %_lhs789
  %index_ptr785 = add i32* %index_ptr785, 1
  br label %__compare322

__fresh334:
  br label %__end324

__end324:
  %arr791 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array783, { i32, [ 0 x i32 ] }** %arr791
  %size_ptr793 = getelementptr { i32, [ 0 x i32 ] }* %arr791, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr793, i32 3 )
  %index_ptr792 = getelementptr { i32, [ 0 x i32 ] }* %arr791, i32 0, i32 1, i32 3
  %_lhs794 = load { i32, [ 0 x i32 ] }** %arr791
  %size_ptr796 = getelementptr { i32, [ 0 x i32 ] }* %a781, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr796, i32 1 )
  %index_ptr795 = getelementptr { i32, [ 0 x i32 ] }* %a781, i32 0, i32 1, i32 1
  %_lhs797 = load { i32, [ 0 x i32 ] }** %a781
  %bop798 = add { i32, [ 0 x i32 ] }* %_lhs794, %_lhs797
  %array_ptr799 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array800 = bitcast { i32, [ 0 x i32 ] }* %array_ptr799 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr802
  br label %__compare325

__fresh335:
  br label %__compare325

__compare325:
  %comparison_result803 = icmp slt i32* %index_ptr802, 3
  br i1 %comparison_result803, label %__body326, label %__end327

__fresh336:
  br label %__body326

__body326:
  store i32* %index_ptr802, i32* %i804
  %_lhs805 = load i32* %i804
  %bop806 = mul i32 2, %_lhs805
  %index_ptr802 = add i32* %index_ptr802, 1
  br label %__compare325

__fresh337:
  br label %__end327

__end327:
  %ret807 = call i32 @f ( { i32, [ 0 x i32 ] }* %array800 )
  %bop808 = add i32 %bop798, %ret807
  %ret809 = call i32 @g ( i32 4 )
  %bop810 = add i32 %bop808, %ret809
  ret i32 %bop810
}


define i32 @g (i32 %x757){

__fresh315:
  %x_slot758 = alloca i32
  store i32 %x757, i32* %x_slot758
  %array_ptr759 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array760 = bitcast { i32, [ 0 x i32 ] }* %array_ptr759 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr762
  br label %__compare312

__fresh316:
  br label %__compare312

__compare312:
  %comparison_result763 = icmp slt i32* %index_ptr762, 3
  br i1 %comparison_result763, label %__body313, label %__end314

__fresh317:
  br label %__body313

__body313:
  store i32* %index_ptr762, i32* %i764
  %_lhs765 = load i32* %x_slot758
  %index_ptr762 = add i32* %index_ptr762, 1
  br label %__compare312

__fresh318:
  br label %__end314

__end314:
  %arr766 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array760, { i32, [ 0 x i32 ] }** %arr766
  %size_ptr768 = getelementptr { i32, [ 0 x i32 ] }* %arr766, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr768, i32 1 )
  %index_ptr767 = getelementptr { i32, [ 0 x i32 ] }* %arr766, i32 0, i32 1, i32 1
  %_lhs769 = load { i32, [ 0 x i32 ] }** %arr766
  ret { i32, [ 0 x i32 ] }* %_lhs769
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a752){

__fresh311:
  %a_slot753 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a752, { i32, [ 0 x i32 ] }** %a_slot753
  %size_ptr755 = getelementptr { i32, [ 0 x i32 ] }* %a_slot753, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr755, i32 1 )
  %index_ptr754 = getelementptr { i32, [ 0 x i32 ] }* %a_slot753, i32 0, i32 1, i32 1
  %_lhs756 = load { i32, [ 0 x i32 ] }** %a_slot753
  ret { i32, [ 0 x i32 ] }* %_lhs756
}


