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


define i32 @program (i32 %argc740, { i32, [ 0 x i8* ] }* %argv738){

__fresh266:
  %argc_slot741 = alloca i32
  store i32 %argc740, i32* %argc_slot741
  %argv_slot739 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv738, { i32, [ 0 x i8* ] }** %argv_slot739
  %array_ptr742 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array743 = bitcast { i32, [ 0 x i32 ] }* %array_ptr742 to { i32, [ 0 x i32 ] }* 
  %index_ptr744 = getelementptr { i32, [ 0 x i32 ] }* %array743, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr744
  store i32 0, i32* %index_ptr745
  br label %__compare257

__fresh267:
  br label %__compare257

__compare257:
  %comparison_result746 = icmp slt i32* %index_ptr745, 3
  br i1 %comparison_result746, label %__body258, label %__end259

__fresh268:
  br label %__body258

__body258:
  store i32* %index_ptr745, i32* %i747
  %_lhs748 = load i32* %i747
  %index_ptr745 = add i32* %index_ptr745, 1
  br label %__compare257

__fresh269:
  br label %__end259

__end259:
  %a749 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array743, { i32, [ 0 x i32 ] }** %a749
  %array_ptr750 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array751 = bitcast { i32, [ 0 x i32 ] }* %array_ptr750 to { i32, [ 0 x i32 ] }* 
  %index_ptr752 = getelementptr { i32, [ 0 x i32 ] }* %array751, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr752
  store i32 0, i32* %index_ptr753
  br label %__compare260

__fresh270:
  br label %__compare260

__compare260:
  %comparison_result754 = icmp slt i32* %index_ptr753, 4
  br i1 %comparison_result754, label %__body261, label %__end262

__fresh271:
  br label %__body261

__body261:
  store i32* %index_ptr753, i32* %i755
  %_lhs756 = load i32* %i755
  %_lhs757 = load i32* %i755
  %bop758 = mul i32 %_lhs756, %_lhs757
  %index_ptr753 = add i32* %index_ptr753, 1
  br label %__compare260

__fresh272:
  br label %__end262

__end262:
  %arr759 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array751, { i32, [ 0 x i32 ] }** %arr759
  %index_ptr760 = getelementptr { i32, [ 0 x i32 ] }** %arr759, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs761 = load { i32, [ 0 x i32 ] }** %arr759
  %index_ptr762 = getelementptr { i32, [ 0 x i32 ] }** %a749, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs763 = load { i32, [ 0 x i32 ] }** %a749
  %bop764 = add { i32, [ 0 x i32 ] }* %_lhs761, %_lhs763
  %array_ptr765 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array766 = bitcast { i32, [ 0 x i32 ] }* %array_ptr765 to { i32, [ 0 x i32 ] }* 
  %index_ptr767 = getelementptr { i32, [ 0 x i32 ] }* %array766, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr767
  store i32 0, i32* %index_ptr768
  br label %__compare263

__fresh273:
  br label %__compare263

__compare263:
  %comparison_result769 = icmp slt i32* %index_ptr768, 3
  br i1 %comparison_result769, label %__body264, label %__end265

__fresh274:
  br label %__body264

__body264:
  store i32* %index_ptr768, i32* %i770
  %_lhs771 = load i32* %i770
  %bop772 = mul i32 2, %_lhs771
  %index_ptr768 = add i32* %index_ptr768, 1
  br label %__compare263

__fresh275:
  br label %__end265

__end265:
  %ret773 = call i32 @f ( i32* %array766 )
  %bop774 = add i32 %bop764, %ret773
  %ret775 = call i32 @g ( i32 4 )
  %bop776 = add i32 %bop774, %ret775
  ret i32 %bop776
}


define i32 @g (i32 %x726){

__fresh253:
  %x_slot727 = alloca i32
  store i32 %x726, i32* %x_slot727
  %array_ptr728 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array729 = bitcast { i32, [ 0 x i32 ] }* %array_ptr728 to { i32, [ 0 x i32 ] }* 
  %index_ptr730 = getelementptr { i32, [ 0 x i32 ] }* %array729, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr730
  store i32 0, i32* %index_ptr731
  br label %__compare250

__fresh254:
  br label %__compare250

__compare250:
  %comparison_result732 = icmp slt i32* %index_ptr731, 3
  br i1 %comparison_result732, label %__body251, label %__end252

__fresh255:
  br label %__body251

__body251:
  store i32* %index_ptr731, i32* %i733
  %_lhs734 = load i32* %x_slot727
  %index_ptr731 = add i32* %index_ptr731, 1
  br label %__compare250

__fresh256:
  br label %__end252

__end252:
  %arr735 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array729, { i32, [ 0 x i32 ] }** %arr735
  %index_ptr736 = getelementptr { i32, [ 0 x i32 ] }** %arr735, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs737 = load { i32, [ 0 x i32 ] }** %arr735
  ret { i32, [ 0 x i32 ] }* %_lhs737
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a722){

__fresh249:
  %a_slot723 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a722, { i32, [ 0 x i32 ] }** %a_slot723
  %index_ptr724 = getelementptr { i32, [ 0 x i32 ] }** %a_slot723, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs725 = load { i32, [ 0 x i32 ] }** %a_slot723
  ret { i32, [ 0 x i32 ] }* %_lhs725
}


