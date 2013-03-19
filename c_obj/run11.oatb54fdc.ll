declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2661 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2661.init
@arr1640 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1640.init
@i634 = global i32 1, align 4
define void @oat_init (){

__fresh244:
  call void @arr1640.init(  )
  call void @arr2661.init(  )
  ret void
}


define i32 @program (i32 %argc676, { i32, [ 0 x i8* ] }* %argv674){

__fresh243:
  %argc_slot677 = alloca i32
  store i32 %argc676, i32* %argc_slot677
  %argv_slot675 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv674, { i32, [ 0 x i8* ] }** %argv_slot675
  %c678 = alloca i32
  store i32 1, i32* %c678
  %ret679 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4680 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret679, { i32, [ 0 x i32 ] }** %arr4680
  %array_ptr681 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array682 = bitcast { i32, [ 0 x i32 ] }* %array_ptr681 to { i32, [ 0 x i32 ] }* 
  %index_ptr683 = getelementptr { i32, [ 0 x i32 ] }* %array682, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr683
  %index_ptr684 = getelementptr { i32, [ 0 x i32 ] }* %array682, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr684
  %index_ptr685 = getelementptr { i32, [ 0 x i32 ] }* %array682, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr685
  %index_ptr686 = getelementptr { i32, [ 0 x i32 ] }* %array682, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr686
  %arr3687 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array682, { i32, [ 0 x i32 ] }** %arr3687
  %_lhs688 = load i32* %c678
  %_lhs689 = load i32* @i634
  %bop690 = add i32 %_lhs688, %_lhs689
  store i32 %bop690, i32* %c678
  %_lhs691 = load i32* %c678
  %index_ptr692 = getelementptr { i32, [ 0 x i32 ] }** @arr1640, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs693 = load { i32, [ 0 x i32 ] }** @arr1640
  %bop694 = add i32 %_lhs691, %_lhs693
  store i32 %bop694, i32* %c678
  %_lhs695 = load i32* %c678
  %index_ptr696 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2661, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr697 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2661, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs698 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2661
  %bop699 = add i32 %_lhs695, %_lhs698
  store i32 %bop699, i32* %c678
  %_lhs700 = load i32* %c678
  %index_ptr701 = getelementptr { i32, [ 0 x i32 ] }** %arr3687, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs702 = load { i32, [ 0 x i32 ] }** %arr3687
  %bop703 = add i32 %_lhs700, %_lhs702
  store i32 %bop703, i32* %c678
  %_lhs704 = load i32* %c678
  %_lhs705 = load { i32, [ 0 x i32 ] }** %arr3687
  %ret706 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs705 )
  %bop707 = add i32 %_lhs704, %ret706
  store i32 %bop707, i32* %c678
  %_lhs708 = load i32* %c678
  %index_ptr709 = getelementptr { i32, [ 0 x i32 ] }** %arr4680, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs710 = load { i32, [ 0 x i32 ] }** %arr4680
  %bop711 = add i32 %_lhs708, %_lhs710
  store i32 %bop711, i32* %c678
  %_lhs712 = load i32* %c678
  ret i32 %_lhs712
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh242:
  %array_ptr666 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array667 = bitcast { i32, [ 0 x i32 ] }* %array_ptr666 to { i32, [ 0 x i32 ] }* 
  %index_ptr668 = getelementptr { i32, [ 0 x i32 ] }* %array667, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr668
  %index_ptr669 = getelementptr { i32, [ 0 x i32 ] }* %array667, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr669
  %index_ptr670 = getelementptr { i32, [ 0 x i32 ] }* %array667, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr670
  %index_ptr671 = getelementptr { i32, [ 0 x i32 ] }* %array667, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr671
  %arr672 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array667, { i32, [ 0 x i32 ] }** %arr672
  %_lhs673 = load { i32, [ 0 x i32 ] }** %arr672
  ret { i32, [ 0 x i32 ] }* %_lhs673
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr662){

__fresh241:
  %arr_slot663 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr662, { i32, [ 0 x i32 ] }** %arr_slot663
  %index_ptr664 = getelementptr { i32, [ 0 x i32 ] }** %arr_slot663, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs665 = load { i32, [ 0 x i32 ] }** %arr_slot663
  ret { i32, [ 0 x i32 ] }* %_lhs665
}


define void @arr2661.init (){

__fresh240:
  %array_ptr641 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array642 = bitcast { i32, [ 0 x i32 ] }* %array_ptr641 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr643 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array644 = bitcast { i32, [ 0 x i32 ] }* %array_ptr643 to { i32, [ 0 x i32 ] }* 
  %index_ptr645 = getelementptr { i32, [ 0 x i32 ] }* %array644, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr645
  %index_ptr646 = getelementptr { i32, [ 0 x i32 ] }* %array644, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr646
  %index_ptr647 = getelementptr { i32, [ 0 x i32 ] }* %array644, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr647
  %index_ptr648 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array642, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array644, { i32, [ 0 x i32 ] }** %index_ptr648
  %array_ptr649 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array650 = bitcast { i32, [ 0 x i32 ] }* %array_ptr649 to { i32, [ 0 x i32 ] }* 
  %index_ptr651 = getelementptr { i32, [ 0 x i32 ] }* %array650, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr651
  %index_ptr652 = getelementptr { i32, [ 0 x i32 ] }* %array650, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr652
  %index_ptr653 = getelementptr { i32, [ 0 x i32 ] }* %array650, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr653
  %index_ptr654 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array642, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array650, { i32, [ 0 x i32 ] }** %index_ptr654
  %array_ptr655 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array656 = bitcast { i32, [ 0 x i32 ] }* %array_ptr655 to { i32, [ 0 x i32 ] }* 
  %index_ptr657 = getelementptr { i32, [ 0 x i32 ] }* %array656, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr657
  %index_ptr658 = getelementptr { i32, [ 0 x i32 ] }* %array656, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr658
  %index_ptr659 = getelementptr { i32, [ 0 x i32 ] }* %array656, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr659
  %index_ptr660 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array642, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array656, { i32, [ 0 x i32 ] }** %index_ptr660
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array642, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2661
  ret void
}


define void @arr1640.init (){

__fresh239:
  %array_ptr635 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array636 = bitcast { i32, [ 0 x i32 ] }* %array_ptr635 to { i32, [ 0 x i32 ] }* 
  %index_ptr637 = getelementptr { i32, [ 0 x i32 ] }* %array636, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr637
  %index_ptr638 = getelementptr { i32, [ 0 x i32 ] }* %array636, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr638
  %index_ptr639 = getelementptr { i32, [ 0 x i32 ] }* %array636, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr639
  store { i32, [ 0 x i32 ] }* %array636, { i32, [ 0 x i32 ] }** @arr1640
  ret void
}


