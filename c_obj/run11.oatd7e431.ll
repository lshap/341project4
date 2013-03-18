declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2609 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2609.init
@arr1588 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1588.init
@i582 = global i32 1, align 4
define void @oat_init (){

__fresh146:
  call void @arr1588.init(  )
  call void @arr2609.init(  )
  ret void
}


define i32 @program (i32 %argc624, { i32, [ 0 x i8* ] }* %argv622){

__fresh145:
  %argc_slot625 = alloca i32
  store i32 %argc624, i32* %argc_slot625
  %argv_slot623 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv622, { i32, [ 0 x i8* ] }** %argv_slot623
  %c626 = alloca i32
  store i32 1, i32* %c626
  %ret627 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4628 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret627, { i32, [ 0 x i32 ] }** %arr4628
  %array_ptr629 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array630 = bitcast { i32, [ 0 x i32 ] }* %array_ptr629 to { i32, [ 0 x i32 ] }* 
  %index_ptr631 = getelementptr { i32, [ 0 x i32 ] }* %array630, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr631
  %index_ptr632 = getelementptr { i32, [ 0 x i32 ] }* %array630, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr632
  %index_ptr633 = getelementptr { i32, [ 0 x i32 ] }* %array630, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr633
  %index_ptr634 = getelementptr { i32, [ 0 x i32 ] }* %array630, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr634
  %arr3635 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array630, { i32, [ 0 x i32 ] }** %arr3635
  %_lhs636 = load i32* %c626
  %_lhs637 = load i32* @i582
  %bop638 = add i32 %_lhs636, %_lhs637
  store i32 %bop638, i32* %c626
  %_lhs639 = load i32* %c626
  %index_ptr640 = getelementptr { i32, [ 0 x i32 ] }** @arr1588, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs641 = load { i32, [ 0 x i32 ] }** @arr1588
  %bop642 = add i32 %_lhs639, %_lhs641
  store i32 %bop642, i32* %c626
  %_lhs643 = load i32* %c626
  %index_ptr644 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2609, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr645 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2609, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs646 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2609
  %bop647 = add i32 %_lhs643, %_lhs646
  store i32 %bop647, i32* %c626
  %_lhs648 = load i32* %c626
  %index_ptr649 = getelementptr { i32, [ 0 x i32 ] }** %arr3635, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs650 = load { i32, [ 0 x i32 ] }** %arr3635
  %bop651 = add i32 %_lhs648, %_lhs650
  store i32 %bop651, i32* %c626
  %_lhs652 = load i32* %c626
  %_lhs653 = load { i32, [ 0 x i32 ] }** %arr3635
  %ret654 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs653 )
  %bop655 = add i32 %_lhs652, %ret654
  store i32 %bop655, i32* %c626
  %_lhs656 = load i32* %c626
  %index_ptr657 = getelementptr { i32, [ 0 x i32 ] }** %arr4628, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs658 = load { i32, [ 0 x i32 ] }** %arr4628
  %bop659 = add i32 %_lhs656, %_lhs658
  store i32 %bop659, i32* %c626
  %_lhs660 = load i32* %c626
  ret i32 %_lhs660
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh144:
  %array_ptr614 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array615 = bitcast { i32, [ 0 x i32 ] }* %array_ptr614 to { i32, [ 0 x i32 ] }* 
  %index_ptr616 = getelementptr { i32, [ 0 x i32 ] }* %array615, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr616
  %index_ptr617 = getelementptr { i32, [ 0 x i32 ] }* %array615, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr617
  %index_ptr618 = getelementptr { i32, [ 0 x i32 ] }* %array615, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr618
  %index_ptr619 = getelementptr { i32, [ 0 x i32 ] }* %array615, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr619
  %arr620 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array615, { i32, [ 0 x i32 ] }** %arr620
  %_lhs621 = load { i32, [ 0 x i32 ] }** %arr620
  ret { i32, [ 0 x i32 ] }* %_lhs621
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr610){

__fresh143:
  %arr_slot611 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr610, { i32, [ 0 x i32 ] }** %arr_slot611
  %index_ptr612 = getelementptr { i32, [ 0 x i32 ] }** %arr_slot611, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs613 = load { i32, [ 0 x i32 ] }** %arr_slot611
  ret { i32, [ 0 x i32 ] }* %_lhs613
}


define void @arr2609.init (){

__fresh142:
  %array_ptr589 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array590 = bitcast { i32, [ 0 x i32 ] }* %array_ptr589 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr591 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array592 = bitcast { i32, [ 0 x i32 ] }* %array_ptr591 to { i32, [ 0 x i32 ] }* 
  %index_ptr593 = getelementptr { i32, [ 0 x i32 ] }* %array592, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr593
  %index_ptr594 = getelementptr { i32, [ 0 x i32 ] }* %array592, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr594
  %index_ptr595 = getelementptr { i32, [ 0 x i32 ] }* %array592, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr595
  %index_ptr596 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array590, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array592, { i32, [ 0 x i32 ] }** %index_ptr596
  %array_ptr597 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array598 = bitcast { i32, [ 0 x i32 ] }* %array_ptr597 to { i32, [ 0 x i32 ] }* 
  %index_ptr599 = getelementptr { i32, [ 0 x i32 ] }* %array598, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr599
  %index_ptr600 = getelementptr { i32, [ 0 x i32 ] }* %array598, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr600
  %index_ptr601 = getelementptr { i32, [ 0 x i32 ] }* %array598, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr601
  %index_ptr602 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array590, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array598, { i32, [ 0 x i32 ] }** %index_ptr602
  %array_ptr603 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array604 = bitcast { i32, [ 0 x i32 ] }* %array_ptr603 to { i32, [ 0 x i32 ] }* 
  %index_ptr605 = getelementptr { i32, [ 0 x i32 ] }* %array604, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr605
  %index_ptr606 = getelementptr { i32, [ 0 x i32 ] }* %array604, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr606
  %index_ptr607 = getelementptr { i32, [ 0 x i32 ] }* %array604, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr607
  %index_ptr608 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array590, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array604, { i32, [ 0 x i32 ] }** %index_ptr608
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array590, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2609
  ret void
}


define void @arr1588.init (){

__fresh141:
  %array_ptr583 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array584 = bitcast { i32, [ 0 x i32 ] }* %array_ptr583 to { i32, [ 0 x i32 ] }* 
  %index_ptr585 = getelementptr { i32, [ 0 x i32 ] }* %array584, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr585
  %index_ptr586 = getelementptr { i32, [ 0 x i32 ] }* %array584, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr586
  %index_ptr587 = getelementptr { i32, [ 0 x i32 ] }* %array584, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr587
  store { i32, [ 0 x i32 ] }* %array584, { i32, [ 0 x i32 ] }** @arr1588
  ret void
}


