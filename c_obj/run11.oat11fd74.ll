declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2631 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2631.init
@arr1610 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1610.init
@i604 = global i32 1, align 4
define void @oat_init (){

__fresh146:
  call void @arr1610.init(  )
  call void @arr2631.init(  )
  ret void
}


define i32 @program (i32 %argc647, { i32, [ 0 x i8* ] }* %argv645){

__fresh145:
  %argc_slot648 = alloca i32
  store i32 %argc647, i32* %argc_slot648
  %argv_slot646 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv645, { i32, [ 0 x i8* ] }** %argv_slot646
  %c649 = alloca i32
  store i32 1, i32* %c649
  %ret650 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4651 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret650, { i32, [ 0 x i32 ] }** %arr4651
  %array_ptr652 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array653 = bitcast { i32, [ 0 x i32 ] }* %array_ptr652 to { i32, [ 0 x i32 ] }* 
  %index_ptr654 = getelementptr { i32, [ 0 x i32 ] }* %array653, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr654
  %index_ptr655 = getelementptr { i32, [ 0 x i32 ] }* %array653, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr655
  %index_ptr656 = getelementptr { i32, [ 0 x i32 ] }* %array653, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr656
  %index_ptr657 = getelementptr { i32, [ 0 x i32 ] }* %array653, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr657
  %arr3658 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array653, { i32, [ 0 x i32 ] }** %arr3658
  %_lhs659 = load i32* %c649
  %_lhs660 = load i32* @i604
  %bop661 = add i32 %_lhs659, %_lhs660
  store i32 %bop661, i32* %c649
  %_lhs662 = load i32* %c649
  %index_ptr663 = getelementptr { i32, [ 0 x i32 ] }** @arr1610, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs665 = load { i32, [ 0 x i32 ] }** @arr1610
  %bop666 = add i32 %_lhs662, %_lhs665
  store i32 %bop666, i32* %c649
  %_lhs667 = load i32* %c649
  %index_ptr668 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2631, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr670 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2631, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs672 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2631
  %bop673 = add i32 %_lhs667, %_lhs672
  store i32 %bop673, i32* %c649
  %_lhs674 = load i32* %c649
  %index_ptr675 = getelementptr { i32, [ 0 x i32 ] }** %arr3658, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs677 = load { i32, [ 0 x i32 ] }** %arr3658
  %bop678 = add i32 %_lhs674, %_lhs677
  store i32 %bop678, i32* %c649
  %_lhs679 = load i32* %c649
  %_lhs680 = load { i32, [ 0 x i32 ] }** %arr3658
  %ret681 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs680 )
  %bop682 = add i32 %_lhs679, %ret681
  store i32 %bop682, i32* %c649
  %_lhs683 = load i32* %c649
  %index_ptr684 = getelementptr { i32, [ 0 x i32 ] }** %arr4651, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs686 = load { i32, [ 0 x i32 ] }** %arr4651
  %bop687 = add i32 %_lhs683, %_lhs686
  store i32 %bop687, i32* %c649
  %_lhs688 = load i32* %c649
  ret i32 %_lhs688
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh144:
  %array_ptr637 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array638 = bitcast { i32, [ 0 x i32 ] }* %array_ptr637 to { i32, [ 0 x i32 ] }* 
  %index_ptr639 = getelementptr { i32, [ 0 x i32 ] }* %array638, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr639
  %index_ptr640 = getelementptr { i32, [ 0 x i32 ] }* %array638, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr640
  %index_ptr641 = getelementptr { i32, [ 0 x i32 ] }* %array638, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr641
  %index_ptr642 = getelementptr { i32, [ 0 x i32 ] }* %array638, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr642
  %arr643 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array638, { i32, [ 0 x i32 ] }** %arr643
  %_lhs644 = load { i32, [ 0 x i32 ] }** %arr643
  ret { i32, [ 0 x i32 ] }* %_lhs644
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr632){

__fresh143:
  %arr_slot633 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr632, { i32, [ 0 x i32 ] }** %arr_slot633
  %index_ptr634 = getelementptr { i32, [ 0 x i32 ] }** %arr_slot633, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs636 = load { i32, [ 0 x i32 ] }** %arr_slot633
  ret { i32, [ 0 x i32 ] }* %_lhs636
}


define void @arr2631.init (){

__fresh142:
  %array_ptr611 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array612 = bitcast { i32, [ 0 x i32 ] }* %array_ptr611 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr613 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array614 = bitcast { i32, [ 0 x i32 ] }* %array_ptr613 to { i32, [ 0 x i32 ] }* 
  %index_ptr615 = getelementptr { i32, [ 0 x i32 ] }* %array614, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr615
  %index_ptr616 = getelementptr { i32, [ 0 x i32 ] }* %array614, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr616
  %index_ptr617 = getelementptr { i32, [ 0 x i32 ] }* %array614, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr617
  %index_ptr618 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array612, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array614, { i32, [ 0 x i32 ] }** %index_ptr618
  %array_ptr619 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array620 = bitcast { i32, [ 0 x i32 ] }* %array_ptr619 to { i32, [ 0 x i32 ] }* 
  %index_ptr621 = getelementptr { i32, [ 0 x i32 ] }* %array620, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr621
  %index_ptr622 = getelementptr { i32, [ 0 x i32 ] }* %array620, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr622
  %index_ptr623 = getelementptr { i32, [ 0 x i32 ] }* %array620, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr623
  %index_ptr624 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array612, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array620, { i32, [ 0 x i32 ] }** %index_ptr624
  %array_ptr625 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array626 = bitcast { i32, [ 0 x i32 ] }* %array_ptr625 to { i32, [ 0 x i32 ] }* 
  %index_ptr627 = getelementptr { i32, [ 0 x i32 ] }* %array626, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr627
  %index_ptr628 = getelementptr { i32, [ 0 x i32 ] }* %array626, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr628
  %index_ptr629 = getelementptr { i32, [ 0 x i32 ] }* %array626, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr629
  %index_ptr630 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array612, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array626, { i32, [ 0 x i32 ] }** %index_ptr630
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array612, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2631
  ret void
}


define void @arr1610.init (){

__fresh141:
  %array_ptr605 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array606 = bitcast { i32, [ 0 x i32 ] }* %array_ptr605 to { i32, [ 0 x i32 ] }* 
  %index_ptr607 = getelementptr { i32, [ 0 x i32 ] }* %array606, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr607
  %index_ptr608 = getelementptr { i32, [ 0 x i32 ] }* %array606, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr608
  %index_ptr609 = getelementptr { i32, [ 0 x i32 ] }* %array606, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr609
  store { i32, [ 0 x i32 ] }* %array606, { i32, [ 0 x i32 ] }** @arr1610
  ret void
}


