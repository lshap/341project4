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


define i32 @program (i32 %argc799, { i32, [ 0 x i8* ] }* %argv797){

__fresh257:
  %argc_slot800 = alloca i32
  store i32 %argc799, i32* %argc_slot800
  %argv_slot798 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv797, { i32, [ 0 x i8* ] }** %argv_slot798
  %array_ptr801 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array802 = bitcast { i32, [ 0 x i32 ] }* %array_ptr801 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr803 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array802, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr803
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr804
  br label %__compare242

__fresh258:
  br label %__compare242

__compare242:
  %comparison_result805 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr804, 3
  br i1 %comparison_result805, label %__body243, label %__end244

__fresh259:
  br label %__body243

__body243:
  store { i32, [ 0 x i32 ] }** %index_ptr804, i32 %i806
  %array_ptr807 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array808 = bitcast { i32, [ 0 x i32 ] }* %array_ptr807 to { i32, [ 0 x i32 ] }* 
  %index_ptr809 = getelementptr { i32, [ 0 x i32 ] }* %array808, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr809
  store i32 0, i32* %index_ptr810
  br label %__compare239

__fresh260:
  br label %__compare239

__compare239:
  %comparison_result811 = icmp slt i32* %index_ptr810, 3
  br i1 %comparison_result811, label %__body240, label %__end241

__fresh261:
  br label %__body240

__body240:
  store i32* %index_ptr810, i32 %j812
  %index_ptr810 = add i32* %index_ptr810, 1
  br label %__compare239

__fresh262:
  br label %__end241

__end241:
  %index_ptr804 = add { i32, [ 0 x i32 ] }** %index_ptr804, 1
  br label %__compare242

__fresh263:
  br label %__end244

__end244:
  %a813 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }*** %array802, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a813
  %array_ptr814 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array815 = bitcast { i32, [ 0 x i32 ] }* %array_ptr814 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr816 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array815, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr816
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr817
  br label %__compare248

__fresh264:
  br label %__compare248

__compare248:
  %comparison_result818 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr817, 4
  br i1 %comparison_result818, label %__body249, label %__end250

__fresh265:
  br label %__body249

__body249:
  store { i32, [ 0 x i32 ] }** %index_ptr817, i32 %i819
  %array_ptr820 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array821 = bitcast { i32, [ 0 x i32 ] }* %array_ptr820 to { i32, [ 0 x i32 ] }* 
  %index_ptr822 = getelementptr { i32, [ 0 x i32 ] }* %array821, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr822
  store i32 0, i32* %index_ptr823
  br label %__compare245

__fresh266:
  br label %__compare245

__compare245:
  %comparison_result824 = icmp slt i32* %index_ptr823, 5
  br i1 %comparison_result824, label %__body246, label %__end247

__fresh267:
  br label %__body246

__body246:
  store i32* %index_ptr823, i32 %j825
  %bop826 = mul i32 4, 4
  %index_ptr823 = add i32* %index_ptr823, 1
  br label %__compare245

__fresh268:
  br label %__end247

__end247:
  %index_ptr817 = add { i32, [ 0 x i32 ] }** %index_ptr817, 1
  br label %__compare248

__fresh269:
  br label %__end250

__end250:
  %arr827 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }*** %array815, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr827
  %index_ptr828 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr827, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %index_ptr829 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr827, i32 4
  call void @oat_array_bounds_check( i32 0, i32 4 )
  %_lhs830 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr827
  %index_ptr831 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a813, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr832 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a813, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs833 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a813
  %bop834 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs830, %_lhs833
  %array_ptr835 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array836 = bitcast { i32, [ 0 x i32 ] }* %array_ptr835 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr837 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array836, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr837
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr838
  br label %__compare254

__fresh270:
  br label %__compare254

__compare254:
  %comparison_result839 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr838, 3
  br i1 %comparison_result839, label %__body255, label %__end256

__fresh271:
  br label %__body255

__body255:
  store { i32, [ 0 x i32 ] }** %index_ptr838, i32 %i840
  %array_ptr841 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array842 = bitcast { i32, [ 0 x i32 ] }* %array_ptr841 to { i32, [ 0 x i32 ] }* 
  %index_ptr843 = getelementptr { i32, [ 0 x i32 ] }* %array842, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr843
  store i32 0, i32* %index_ptr844
  br label %__compare251

__fresh272:
  br label %__compare251

__compare251:
  %comparison_result845 = icmp slt i32* %index_ptr844, 3
  br i1 %comparison_result845, label %__body252, label %__end253

__fresh273:
  br label %__body252

__body252:
  store i32* %index_ptr844, i32 %j846
  %bop847 = mul i32 4, 4
  %index_ptr844 = add i32* %index_ptr844, 1
  br label %__compare251

__fresh274:
  br label %__end253

__end253:
  %index_ptr838 = add { i32, [ 0 x i32 ] }** %index_ptr838, 1
  br label %__compare254

__fresh275:
  br label %__end256

__end256:
  %ret848 = call i32 @f ( { i32, [ 0 x i32 ] }*** %array836 )
  %bop849 = add i32 %bop834, %ret848
  %ret850 = call i32 @g ( i32 4 )
  %bop851 = add i32 %bop849, %ret850
  ret i32 %bop851
}


define i32 @g (i32 %x778){

__fresh232:
  %x_slot779 = alloca i32
  store i32 %x778, i32* %x_slot779
  %array_ptr780 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array781 = bitcast { i32, [ 0 x i32 ] }* %array_ptr780 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr782 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array781, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr782
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr783
  br label %__compare229

__fresh233:
  br label %__compare229

__compare229:
  %comparison_result784 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr783, 3
  br i1 %comparison_result784, label %__body230, label %__end231

__fresh234:
  br label %__body230

__body230:
  store { i32, [ 0 x i32 ] }** %index_ptr783, i32 %i785
  %array_ptr786 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array787 = bitcast { i32, [ 0 x i32 ] }* %array_ptr786 to { i32, [ 0 x i32 ] }* 
  %index_ptr788 = getelementptr { i32, [ 0 x i32 ] }* %array787, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr788
  store i32 0, i32* %index_ptr789
  br label %__compare226

__fresh235:
  br label %__compare226

__compare226:
  %comparison_result790 = icmp slt i32* %index_ptr789, 3
  br i1 %comparison_result790, label %__body227, label %__end228

__fresh236:
  br label %__body227

__body227:
  store i32* %index_ptr789, i32 %j791
  %_lhs792 = load i32* %x_slot779
  %index_ptr789 = add i32* %index_ptr789, 1
  br label %__compare226

__fresh237:
  br label %__end228

__end228:
  %index_ptr783 = add { i32, [ 0 x i32 ] }** %index_ptr783, 1
  br label %__compare229

__fresh238:
  br label %__end231

__end231:
  %arr793 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }*** %array781, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr793
  %index_ptr794 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr793, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr795 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr793, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs796 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr793
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs796
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a773){

__fresh225:
  %a_slot774 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a773, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot774
  %index_ptr775 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot774, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr776 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot774, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs777 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot774
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs777
}


