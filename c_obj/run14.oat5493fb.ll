declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh275:
  ret void
}


define i32 @program (i32 %argc731, { i32, [ 0 x i8* ] }* %argv729){

__fresh265:
  %argc_slot732 = alloca i32
  store i32 %argc731, i32* %argc_slot732
  %argv_slot730 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv729, { i32, [ 0 x i8* ] }** %argv_slot730
  %array_ptr733 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array734 = bitcast { i32, [ 0 x i32 ] }* %array_ptr733 to { i32, [ 0 x i32 ] }* 
  %index_ptr735 = getelementptr { i32, [ 0 x i32 ] }* %array734, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr735
  store i32 0, i32* %index_ptr736
  br label %__compare256

__fresh266:
  br label %__compare256

__compare256:
  %comparison_result737 = icmp slt i32* %index_ptr736, 3
  br i1 %comparison_result737, label %__body257, label %__end258

__fresh267:
  br label %__body257

__body257:
  store i32* %index_ptr736, i32* %i738
  %_lhs739 = load i32* %i738
  %index_ptr736 = add i32* %index_ptr736, 1
  br label %__compare256

__fresh268:
  br label %__end258

__end258:
  %a740 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array734, { i32, [ 0 x i32 ] }** %a740
  %array_ptr741 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array742 = bitcast { i32, [ 0 x i32 ] }* %array_ptr741 to { i32, [ 0 x i32 ] }* 
  %index_ptr743 = getelementptr { i32, [ 0 x i32 ] }* %array742, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr743
  store i32 0, i32* %index_ptr744
  br label %__compare259

__fresh269:
  br label %__compare259

__compare259:
  %comparison_result745 = icmp slt i32* %index_ptr744, 4
  br i1 %comparison_result745, label %__body260, label %__end261

__fresh270:
  br label %__body260

__body260:
  store i32* %index_ptr744, i32* %i746
  %_lhs747 = load i32* %i746
  %_lhs748 = load i32* %i746
  %bop749 = mul i32 %_lhs747, %_lhs748
  %index_ptr744 = add i32* %index_ptr744, 1
  br label %__compare259

__fresh271:
  br label %__end261

__end261:
  %arr750 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array742, { i32, [ 0 x i32 ] }** %arr750
  %index_ptr751 = getelementptr { i32, [ 0 x i32 ] }** %arr750, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs752 = load { i32, [ 0 x i32 ] }** %arr750
  %index_ptr753 = getelementptr { i32, [ 0 x i32 ] }** %a740, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs754 = load { i32, [ 0 x i32 ] }** %a740
  %bop755 = add { i32, [ 0 x i32 ] }* %_lhs752, %_lhs754
  %array_ptr756 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array757 = bitcast { i32, [ 0 x i32 ] }* %array_ptr756 to { i32, [ 0 x i32 ] }* 
  %index_ptr758 = getelementptr { i32, [ 0 x i32 ] }* %array757, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr758
  store i32 0, i32* %index_ptr759
  br label %__compare262

__fresh272:
  br label %__compare262

__compare262:
  %comparison_result760 = icmp slt i32* %index_ptr759, 3
  br i1 %comparison_result760, label %__body263, label %__end264

__fresh273:
  br label %__body263

__body263:
  store i32* %index_ptr759, i32* %i761
  %_lhs762 = load i32* %i761
  %bop763 = mul i32 2, %_lhs762
  %index_ptr759 = add i32* %index_ptr759, 1
  br label %__compare262

__fresh274:
  br label %__end264

__end264:
  %ret764 = call i32 @f ( i32* %array757 )
  %bop765 = add i32 %bop755, %ret764
  %ret766 = call i32 @g ( i32 4 )
  %bop767 = add i32 %bop765, %ret766
  ret i32 %bop767
}


define i32 @g (i32 %x717){

__fresh252:
  %x_slot718 = alloca i32
  store i32 %x717, i32* %x_slot718
  %array_ptr719 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array720 = bitcast { i32, [ 0 x i32 ] }* %array_ptr719 to { i32, [ 0 x i32 ] }* 
  %index_ptr721 = getelementptr { i32, [ 0 x i32 ] }* %array720, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr721
  store i32 0, i32* %index_ptr722
  br label %__compare249

__fresh253:
  br label %__compare249

__compare249:
  %comparison_result723 = icmp slt i32* %index_ptr722, 3
  br i1 %comparison_result723, label %__body250, label %__end251

__fresh254:
  br label %__body250

__body250:
  store i32* %index_ptr722, i32* %i724
  %_lhs725 = load i32* %x_slot718
  %index_ptr722 = add i32* %index_ptr722, 1
  br label %__compare249

__fresh255:
  br label %__end251

__end251:
  %arr726 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array720, { i32, [ 0 x i32 ] }** %arr726
  %index_ptr727 = getelementptr { i32, [ 0 x i32 ] }** %arr726, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs728 = load { i32, [ 0 x i32 ] }** %arr726
  ret { i32, [ 0 x i32 ] }* %_lhs728
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a713){

__fresh248:
  %a_slot714 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a713, { i32, [ 0 x i32 ] }** %a_slot714
  %index_ptr715 = getelementptr { i32, [ 0 x i32 ] }** %a_slot714, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs716 = load { i32, [ 0 x i32 ] }** %a_slot714
  ret { i32, [ 0 x i32 ] }* %_lhs716
}


