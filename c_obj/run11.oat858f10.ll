declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2694 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2694.init
@arr1673 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1673.init
@i667 = global i32 1, align 4
define void @oat_init (){

__fresh251:
  call void @arr1673.init(  )
  call void @arr2694.init(  )
  ret void
}


define i32 @program (i32 %argc710, { i32, [ 0 x i8* ] }* %argv708){

__fresh250:
  %argc_slot711 = alloca i32
  store i32 %argc710, i32* %argc_slot711
  %argv_slot709 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv708, { i32, [ 0 x i8* ] }** %argv_slot709
  %c712 = alloca i32
  store i32 1, i32* %c712
  %ret713 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4714 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret713, { i32, [ 0 x i32 ] }** %arr4714
  %array_ptr715 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array716 = bitcast { i32, [ 0 x i32 ] }* %array_ptr715 to { i32, [ 0 x i32 ] }* 
  %index_ptr717 = getelementptr { i32, [ 0 x i32 ] }* %array716, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr717
  %index_ptr718 = getelementptr { i32, [ 0 x i32 ] }* %array716, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr718
  %index_ptr719 = getelementptr { i32, [ 0 x i32 ] }* %array716, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr719
  %index_ptr720 = getelementptr { i32, [ 0 x i32 ] }* %array716, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr720
  %arr3721 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array716, { i32, [ 0 x i32 ] }** %arr3721
  %_lhs722 = load i32* %c712
  %_lhs723 = load i32* @i667
  %bop724 = add i32 %_lhs722, %_lhs723
  store i32 %bop724, i32* %c712
  %_lhs725 = load i32* %c712
  %size_ptr727 = getelementptr { i32, [ 0 x i32 ] }* @arr1673, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr727, i32 1 )
  %index_ptr726 = getelementptr { i32, [ 0 x i32 ] }* @arr1673, i32 0, i32 1, i32 1
  %_lhs728 = load { i32, [ 0 x i32 ] }** @arr1673
  %bop729 = add i32 %_lhs725, %_lhs728
  store i32 %bop729, i32* %c712
  %_lhs730 = load i32* %c712
  %size_ptr732 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr2694, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr732, i32 1 )
  %index_ptr731 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr2694, i32 0, i32 1, i32 1
  %size_ptr734 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr2694, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr734, i32 1 )
  %index_ptr733 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr2694, i32 0, i32 1, i32 1
  %_lhs735 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2694
  %bop736 = add i32 %_lhs730, %_lhs735
  store i32 %bop736, i32* %c712
  %_lhs737 = load i32* %c712
  %size_ptr739 = getelementptr { i32, [ 0 x i32 ] }* %arr3721, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr739, i32 3 )
  %index_ptr738 = getelementptr { i32, [ 0 x i32 ] }* %arr3721, i32 0, i32 1, i32 3
  %_lhs740 = load { i32, [ 0 x i32 ] }** %arr3721
  %bop741 = add i32 %_lhs737, %_lhs740
  store i32 %bop741, i32* %c712
  %_lhs742 = load i32* %c712
  %_lhs743 = load { i32, [ 0 x i32 ] }** %arr3721
  %ret744 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs743 )
  %bop745 = add i32 %_lhs742, %ret744
  store i32 %bop745, i32* %c712
  %_lhs746 = load i32* %c712
  %size_ptr748 = getelementptr { i32, [ 0 x i32 ] }* %arr4714, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr748, i32 1 )
  %index_ptr747 = getelementptr { i32, [ 0 x i32 ] }* %arr4714, i32 0, i32 1, i32 1
  %_lhs749 = load { i32, [ 0 x i32 ] }** %arr4714
  %bop750 = add i32 %_lhs746, %_lhs749
  store i32 %bop750, i32* %c712
  %_lhs751 = load i32* %c712
  ret i32 %_lhs751
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh249:
  %array_ptr700 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array701 = bitcast { i32, [ 0 x i32 ] }* %array_ptr700 to { i32, [ 0 x i32 ] }* 
  %index_ptr702 = getelementptr { i32, [ 0 x i32 ] }* %array701, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr702
  %index_ptr703 = getelementptr { i32, [ 0 x i32 ] }* %array701, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr703
  %index_ptr704 = getelementptr { i32, [ 0 x i32 ] }* %array701, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr704
  %index_ptr705 = getelementptr { i32, [ 0 x i32 ] }* %array701, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr705
  %arr706 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array701, { i32, [ 0 x i32 ] }** %arr706
  %_lhs707 = load { i32, [ 0 x i32 ] }** %arr706
  ret { i32, [ 0 x i32 ] }* %_lhs707
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr695){

__fresh248:
  %arr_slot696 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr695, { i32, [ 0 x i32 ] }** %arr_slot696
  %size_ptr698 = getelementptr { i32, [ 0 x i32 ] }* %arr_slot696, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr698, i32 3 )
  %index_ptr697 = getelementptr { i32, [ 0 x i32 ] }* %arr_slot696, i32 0, i32 1, i32 3
  %_lhs699 = load { i32, [ 0 x i32 ] }** %arr_slot696
  ret { i32, [ 0 x i32 ] }* %_lhs699
}


define void @arr2694.init (){

__fresh247:
  %array_ptr674 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array675 = bitcast { i32, [ 0 x i32 ] }* %array_ptr674 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr676 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array677 = bitcast { i32, [ 0 x i32 ] }* %array_ptr676 to { i32, [ 0 x i32 ] }* 
  %index_ptr678 = getelementptr { i32, [ 0 x i32 ] }* %array677, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr678
  %index_ptr679 = getelementptr { i32, [ 0 x i32 ] }* %array677, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr679
  %index_ptr680 = getelementptr { i32, [ 0 x i32 ] }* %array677, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr680
  %index_ptr681 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array675, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array677, { i32, [ 0 x i32 ] }** %index_ptr681
  %array_ptr682 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array683 = bitcast { i32, [ 0 x i32 ] }* %array_ptr682 to { i32, [ 0 x i32 ] }* 
  %index_ptr684 = getelementptr { i32, [ 0 x i32 ] }* %array683, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr684
  %index_ptr685 = getelementptr { i32, [ 0 x i32 ] }* %array683, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr685
  %index_ptr686 = getelementptr { i32, [ 0 x i32 ] }* %array683, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr686
  %index_ptr687 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array675, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array683, { i32, [ 0 x i32 ] }** %index_ptr687
  %array_ptr688 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array689 = bitcast { i32, [ 0 x i32 ] }* %array_ptr688 to { i32, [ 0 x i32 ] }* 
  %index_ptr690 = getelementptr { i32, [ 0 x i32 ] }* %array689, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr690
  %index_ptr691 = getelementptr { i32, [ 0 x i32 ] }* %array689, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr691
  %index_ptr692 = getelementptr { i32, [ 0 x i32 ] }* %array689, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr692
  %index_ptr693 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array675, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array689, { i32, [ 0 x i32 ] }** %index_ptr693
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array675, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2694
  ret void
}


define void @arr1673.init (){

__fresh246:
  %array_ptr668 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array669 = bitcast { i32, [ 0 x i32 ] }* %array_ptr668 to { i32, [ 0 x i32 ] }* 
  %index_ptr670 = getelementptr { i32, [ 0 x i32 ] }* %array669, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr670
  %index_ptr671 = getelementptr { i32, [ 0 x i32 ] }* %array669, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr671
  %index_ptr672 = getelementptr { i32, [ 0 x i32 ] }* %array669, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr672
  store { i32, [ 0 x i32 ] }* %array669, { i32, [ 0 x i32 ] }** @arr1673
  ret void
}


