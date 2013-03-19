declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2670 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2670.init
@arr1649 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1649.init
@i643 = global i32 1, align 4
define void @oat_init (){

__fresh245:
  call void @arr1649.init(  )
  call void @arr2670.init(  )
  ret void
}


define i32 @program (i32 %argc685, { i32, [ 0 x i8* ] }* %argv683){

__fresh244:
  %argc_slot686 = alloca i32
  store i32 %argc685, i32* %argc_slot686
  %argv_slot684 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv683, { i32, [ 0 x i8* ] }** %argv_slot684
  %c687 = alloca i32
  store i32 1, i32* %c687
  %ret688 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4689 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret688, { i32, [ 0 x i32 ] }** %arr4689
  %array_ptr690 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array691 = bitcast { i32, [ 0 x i32 ] }* %array_ptr690 to { i32, [ 0 x i32 ] }* 
  %index_ptr692 = getelementptr { i32, [ 0 x i32 ] }* %array691, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr692
  %index_ptr693 = getelementptr { i32, [ 0 x i32 ] }* %array691, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr693
  %index_ptr694 = getelementptr { i32, [ 0 x i32 ] }* %array691, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr694
  %index_ptr695 = getelementptr { i32, [ 0 x i32 ] }* %array691, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr695
  %arr3696 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array691, { i32, [ 0 x i32 ] }** %arr3696
  %_lhs697 = load i32* %c687
  %_lhs698 = load i32* @i643
  %bop699 = add i32 %_lhs697, %_lhs698
  store i32 %bop699, i32* %c687
  %_lhs700 = load i32* %c687
  %index_ptr701 = getelementptr { i32, [ 0 x i32 ] }** @arr1649, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs702 = load { i32, [ 0 x i32 ] }** @arr1649
  %bop703 = add i32 %_lhs700, %_lhs702
  store i32 %bop703, i32* %c687
  %_lhs704 = load i32* %c687
  %index_ptr705 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2670, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr706 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2670, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs707 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2670
  %bop708 = add i32 %_lhs704, %_lhs707
  store i32 %bop708, i32* %c687
  %_lhs709 = load i32* %c687
  %index_ptr710 = getelementptr { i32, [ 0 x i32 ] }** %arr3696, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs711 = load { i32, [ 0 x i32 ] }** %arr3696
  %bop712 = add i32 %_lhs709, %_lhs711
  store i32 %bop712, i32* %c687
  %_lhs713 = load i32* %c687
  %_lhs714 = load { i32, [ 0 x i32 ] }** %arr3696
  %ret715 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs714 )
  %bop716 = add i32 %_lhs713, %ret715
  store i32 %bop716, i32* %c687
  %_lhs717 = load i32* %c687
  %index_ptr718 = getelementptr { i32, [ 0 x i32 ] }** %arr4689, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs719 = load { i32, [ 0 x i32 ] }** %arr4689
  %bop720 = add i32 %_lhs717, %_lhs719
  store i32 %bop720, i32* %c687
  %_lhs721 = load i32* %c687
  ret i32 %_lhs721
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh243:
  %array_ptr675 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array676 = bitcast { i32, [ 0 x i32 ] }* %array_ptr675 to { i32, [ 0 x i32 ] }* 
  %index_ptr677 = getelementptr { i32, [ 0 x i32 ] }* %array676, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr677
  %index_ptr678 = getelementptr { i32, [ 0 x i32 ] }* %array676, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr678
  %index_ptr679 = getelementptr { i32, [ 0 x i32 ] }* %array676, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr679
  %index_ptr680 = getelementptr { i32, [ 0 x i32 ] }* %array676, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr680
  %arr681 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array676, { i32, [ 0 x i32 ] }** %arr681
  %_lhs682 = load { i32, [ 0 x i32 ] }** %arr681
  ret { i32, [ 0 x i32 ] }* %_lhs682
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr671){

__fresh242:
  %arr_slot672 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr671, { i32, [ 0 x i32 ] }** %arr_slot672
  %index_ptr673 = getelementptr { i32, [ 0 x i32 ] }** %arr_slot672, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs674 = load { i32, [ 0 x i32 ] }** %arr_slot672
  ret { i32, [ 0 x i32 ] }* %_lhs674
}


define void @arr2670.init (){

__fresh241:
  %array_ptr650 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array651 = bitcast { i32, [ 0 x i32 ] }* %array_ptr650 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr652 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array653 = bitcast { i32, [ 0 x i32 ] }* %array_ptr652 to { i32, [ 0 x i32 ] }* 
  %index_ptr654 = getelementptr { i32, [ 0 x i32 ] }* %array653, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr654
  %index_ptr655 = getelementptr { i32, [ 0 x i32 ] }* %array653, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr655
  %index_ptr656 = getelementptr { i32, [ 0 x i32 ] }* %array653, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr656
  %index_ptr657 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array651, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array653, { i32, [ 0 x i32 ] }** %index_ptr657
  %array_ptr658 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array659 = bitcast { i32, [ 0 x i32 ] }* %array_ptr658 to { i32, [ 0 x i32 ] }* 
  %index_ptr660 = getelementptr { i32, [ 0 x i32 ] }* %array659, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr660
  %index_ptr661 = getelementptr { i32, [ 0 x i32 ] }* %array659, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr661
  %index_ptr662 = getelementptr { i32, [ 0 x i32 ] }* %array659, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr662
  %index_ptr663 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array651, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array659, { i32, [ 0 x i32 ] }** %index_ptr663
  %array_ptr664 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array665 = bitcast { i32, [ 0 x i32 ] }* %array_ptr664 to { i32, [ 0 x i32 ] }* 
  %index_ptr666 = getelementptr { i32, [ 0 x i32 ] }* %array665, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr666
  %index_ptr667 = getelementptr { i32, [ 0 x i32 ] }* %array665, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr667
  %index_ptr668 = getelementptr { i32, [ 0 x i32 ] }* %array665, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr668
  %index_ptr669 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array651, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array665, { i32, [ 0 x i32 ] }** %index_ptr669
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array651, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2670
  ret void
}


define void @arr1649.init (){

__fresh240:
  %array_ptr644 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array645 = bitcast { i32, [ 0 x i32 ] }* %array_ptr644 to { i32, [ 0 x i32 ] }* 
  %index_ptr646 = getelementptr { i32, [ 0 x i32 ] }* %array645, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr646
  %index_ptr647 = getelementptr { i32, [ 0 x i32 ] }* %array645, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr647
  %index_ptr648 = getelementptr { i32, [ 0 x i32 ] }* %array645, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr648
  store { i32, [ 0 x i32 ] }* %array645, { i32, [ 0 x i32 ] }** @arr1649
  ret void
}


