declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh276:
  ret void
}


define i32 @program (i32 %argc803, { i32, [ 0 x i8* ] }* %argv801){

__fresh257:
  %argc_slot804 = alloca i32
  store i32 %argc803, i32* %argc_slot804
  %argv_slot802 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv801, { i32, [ 0 x i8* ] }** %argv_slot802
  %array_ptr805 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array806 = bitcast { i32, [ 0 x i32 ] }* %array_ptr805 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr807 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array806, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr807
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr808
  br label %__compare242

__fresh258:
  br label %__compare242

__compare242:
  %comparison_result809 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr808, 3
  br i1 %comparison_result809, label %__body243, label %__end244

__fresh259:
  br label %__body243

__body243:
  store { i32, [ 0 x i32 ] }** %index_ptr808, i32* %i810
  %array_ptr811 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array812 = bitcast { i32, [ 0 x i32 ] }* %array_ptr811 to { i32, [ 0 x i32 ] }* 
  %index_ptr813 = getelementptr { i32, [ 0 x i32 ] }* %array812, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr813
  store i32 0, i32* %index_ptr814
  br label %__compare239

__fresh260:
  br label %__compare239

__compare239:
  %comparison_result815 = icmp slt i32* %index_ptr814, 3
  br i1 %comparison_result815, label %__body240, label %__end241

__fresh261:
  br label %__body240

__body240:
  store i32* %index_ptr814, i32* %j816
  %_lhs817 = load i32* %j816
  %index_ptr814 = add i32* %index_ptr814, 1
  br label %__compare239

__fresh262:
  br label %__end241

__end241:
  %index_ptr808 = add { i32, [ 0 x i32 ] }** %index_ptr808, 1
  br label %__compare242

__fresh263:
  br label %__end244

__end244:
  %a818 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array806, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a818
  %array_ptr819 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array820 = bitcast { i32, [ 0 x i32 ] }* %array_ptr819 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr821 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array820, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr821
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr822
  br label %__compare248

__fresh264:
  br label %__compare248

__compare248:
  %comparison_result823 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr822, 4
  br i1 %comparison_result823, label %__body249, label %__end250

__fresh265:
  br label %__body249

__body249:
  store { i32, [ 0 x i32 ] }** %index_ptr822, i32* %i824
  %array_ptr825 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array826 = bitcast { i32, [ 0 x i32 ] }* %array_ptr825 to { i32, [ 0 x i32 ] }* 
  %index_ptr827 = getelementptr { i32, [ 0 x i32 ] }* %array826, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr827
  store i32 0, i32* %index_ptr828
  br label %__compare245

__fresh266:
  br label %__compare245

__compare245:
  %comparison_result829 = icmp slt i32* %index_ptr828, 5
  br i1 %comparison_result829, label %__body246, label %__end247

__fresh267:
  br label %__body246

__body246:
  store i32* %index_ptr828, i32* %j830
  %_lhs831 = load i32* %i824
  %_lhs832 = load i32* %j830
  %bop833 = mul i32 %_lhs831, %_lhs832
  %index_ptr828 = add i32* %index_ptr828, 1
  br label %__compare245

__fresh268:
  br label %__end247

__end247:
  %index_ptr822 = add { i32, [ 0 x i32 ] }** %index_ptr822, 1
  br label %__compare248

__fresh269:
  br label %__end250

__end250:
  %arr834 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array820, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr834
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
  %index_ptr844 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array843, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr844
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr845
  br label %__compare254

__fresh270:
  br label %__compare254

__compare254:
  %comparison_result846 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr845, 3
  br i1 %comparison_result846, label %__body255, label %__end256

__fresh271:
  br label %__body255

__body255:
  store { i32, [ 0 x i32 ] }** %index_ptr845, i32* %i847
  %array_ptr848 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array849 = bitcast { i32, [ 0 x i32 ] }* %array_ptr848 to { i32, [ 0 x i32 ] }* 
  %index_ptr850 = getelementptr { i32, [ 0 x i32 ] }* %array849, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr850
  store i32 0, i32* %index_ptr851
  br label %__compare251

__fresh272:
  br label %__compare251

__compare251:
  %comparison_result852 = icmp slt i32* %index_ptr851, 3
  br i1 %comparison_result852, label %__body252, label %__end253

__fresh273:
  br label %__body252

__body252:
  store i32* %index_ptr851, i32* %j853
  %_lhs854 = load i32* %i847
  %_lhs855 = load i32* %j853
  %bop856 = mul i32 %_lhs854, %_lhs855
  %index_ptr851 = add i32* %index_ptr851, 1
  br label %__compare251

__fresh274:
  br label %__end253

__end253:
  %index_ptr845 = add { i32, [ 0 x i32 ] }** %index_ptr845, 1
  br label %__compare254

__fresh275:
  br label %__end256

__end256:
  %ret857 = call i32 @f ( { i32, [ 0 x i32 ] }** %array843 )
  %bop858 = add i32 %bop841, %ret857
  %ret859 = call i32 @g ( i32 4 )
  %bop860 = add i32 %bop858, %ret859
  ret i32 %bop860
}


define i32 @g (i32 %x782){

__fresh232:
  %x_slot783 = alloca i32
  store i32 %x782, i32* %x_slot783
  %array_ptr784 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array785 = bitcast { i32, [ 0 x i32 ] }* %array_ptr784 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr786 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array785, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr786
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr787
  br label %__compare229

__fresh233:
  br label %__compare229

__compare229:
  %comparison_result788 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr787, 3
  br i1 %comparison_result788, label %__body230, label %__end231

__fresh234:
  br label %__body230

__body230:
  store { i32, [ 0 x i32 ] }** %index_ptr787, i32* %i789
  %array_ptr790 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array791 = bitcast { i32, [ 0 x i32 ] }* %array_ptr790 to { i32, [ 0 x i32 ] }* 
  %index_ptr792 = getelementptr { i32, [ 0 x i32 ] }* %array791, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr792
  store i32 0, i32* %index_ptr793
  br label %__compare226

__fresh235:
  br label %__compare226

__compare226:
  %comparison_result794 = icmp slt i32* %index_ptr793, 3
  br i1 %comparison_result794, label %__body227, label %__end228

__fresh236:
  br label %__body227

__body227:
  store i32* %index_ptr793, i32* %j795
  %_lhs796 = load i32* %x_slot783
  %index_ptr793 = add i32* %index_ptr793, 1
  br label %__compare226

__fresh237:
  br label %__end228

__end228:
  %index_ptr787 = add { i32, [ 0 x i32 ] }** %index_ptr787, 1
  br label %__compare229

__fresh238:
  br label %__end231

__end231:
  %arr797 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array785, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr797
  %index_ptr798 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr797, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr799 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr797, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs800 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr797
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs800
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a777){

__fresh225:
  %a_slot778 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a777, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot778
  %index_ptr779 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot778, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr780 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot778, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs781 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot778
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs781
}


