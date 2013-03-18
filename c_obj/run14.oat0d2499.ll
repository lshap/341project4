declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh224:
  ret void
}


define i32 @program (i32 %argc740, { i32, [ 0 x i8* ] }* %argv738){

__fresh214:
  %argc_slot741 = alloca i32
  store i32 %argc740, i32* %argc_slot741
  %argv_slot739 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv738, { i32, [ 0 x i8* ] }** %argv_slot739
  %array_ptr742 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array743 = bitcast { i32, [ 0 x i32 ] }* %array_ptr742 to { i32, [ 0 x i32 ] }* 
  %index_ptr744 = getelementptr { i32, [ 0 x i32 ] }* %array743, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr744
  store i32 0, i32* %index_ptr745
  br label %__compare205

__fresh215:
  br label %__compare205

__compare205:
  %comparison_result746 = icmp slt i32* %index_ptr745, 3
  br i1 %comparison_result746, label %__body206, label %__end207

__fresh216:
  br label %__body206

__body206:
  store i32* %index_ptr745, i32 %i747
  %index_ptr745 = add i32* %index_ptr745, 1
  br label %__compare205

__fresh217:
  br label %__end207

__end207:
  %a748 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array743, { i32, [ 0 x i32 ] }** %a748
  %array_ptr749 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array750 = bitcast { i32, [ 0 x i32 ] }* %array_ptr749 to { i32, [ 0 x i32 ] }* 
  %index_ptr751 = getelementptr { i32, [ 0 x i32 ] }* %array750, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr751
  store i32 0, i32* %index_ptr752
  br label %__compare208

__fresh218:
  br label %__compare208

__compare208:
  %comparison_result753 = icmp slt i32* %index_ptr752, 4
  br i1 %comparison_result753, label %__body209, label %__end210

__fresh219:
  br label %__body209

__body209:
  store i32* %index_ptr752, i32 %i754
  %bop755 = mul i32 4, 4
  %index_ptr752 = add i32* %index_ptr752, 1
  br label %__compare208

__fresh220:
  br label %__end210

__end210:
  %arr756 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array750, { i32, [ 0 x i32 ] }** %arr756
  %index_ptr757 = getelementptr { i32, [ 0 x i32 ] }** %arr756, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs758 = load { i32, [ 0 x i32 ] }** %arr756
  %index_ptr759 = getelementptr { i32, [ 0 x i32 ] }** %a748, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs760 = load { i32, [ 0 x i32 ] }** %a748
  %bop761 = add { i32, [ 0 x i32 ] }* %_lhs758, %_lhs760
  %array_ptr762 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array763 = bitcast { i32, [ 0 x i32 ] }* %array_ptr762 to { i32, [ 0 x i32 ] }* 
  %index_ptr764 = getelementptr { i32, [ 0 x i32 ] }* %array763, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr764
  store i32 0, i32* %index_ptr765
  br label %__compare211

__fresh221:
  br label %__compare211

__compare211:
  %comparison_result766 = icmp slt i32* %index_ptr765, 3
  br i1 %comparison_result766, label %__body212, label %__end213

__fresh222:
  br label %__body212

__body212:
  store i32* %index_ptr765, i32 %i767
  %bop768 = mul i32 2, 4
  %index_ptr765 = add i32* %index_ptr765, 1
  br label %__compare211

__fresh223:
  br label %__end213

__end213:
  %ret769 = call i32 @f ( i32** %array763 )
  %bop770 = add i32 %bop761, %ret769
  %ret771 = call i32 @g ( i32 4 )
  %bop772 = add i32 %bop770, %ret771
  ret i32 %bop772
}


define i32 @g (i32 %x726){

__fresh201:
  %x_slot727 = alloca i32
  store i32 %x726, i32* %x_slot727
  %array_ptr728 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array729 = bitcast { i32, [ 0 x i32 ] }* %array_ptr728 to { i32, [ 0 x i32 ] }* 
  %index_ptr730 = getelementptr { i32, [ 0 x i32 ] }* %array729, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr730
  store i32 0, i32* %index_ptr731
  br label %__compare198

__fresh202:
  br label %__compare198

__compare198:
  %comparison_result732 = icmp slt i32* %index_ptr731, 3
  br i1 %comparison_result732, label %__body199, label %__end200

__fresh203:
  br label %__body199

__body199:
  store i32* %index_ptr731, i32 %i733
  %_lhs734 = load i32* %x_slot727
  %index_ptr731 = add i32* %index_ptr731, 1
  br label %__compare198

__fresh204:
  br label %__end200

__end200:
  %arr735 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array729, { i32, [ 0 x i32 ] }** %arr735
  %index_ptr736 = getelementptr { i32, [ 0 x i32 ] }** %arr735, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs737 = load { i32, [ 0 x i32 ] }** %arr735
  ret { i32, [ 0 x i32 ] }* %_lhs737
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a722){

__fresh197:
  %a_slot723 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a722, { i32, [ 0 x i32 ] }** %a_slot723
  %index_ptr724 = getelementptr { i32, [ 0 x i32 ] }** %a_slot723, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs725 = load { i32, [ 0 x i32 ] }** %a_slot723
  ret { i32, [ 0 x i32 ] }* %_lhs725
}


