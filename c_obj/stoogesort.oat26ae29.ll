declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh945:
  ret void
}


define i32 @program (i32 %argc2760, { i32, [ 0 x i8* ] }* %argv2758){

__fresh942:
  %argc_slot2761 = alloca i32
  store i32 %argc2760, i32* %argc_slot2761
  %argv_slot2759 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2758, { i32, [ 0 x i8* ] }** %argv_slot2759
  %array_ptr2762 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2763 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2762 to { i32, [ 0 x i32 ] }* 
  %index_ptr2764 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2764
  %index_ptr2765 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2765
  %index_ptr2766 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2766
  %index_ptr2767 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2767
  %unop2768 = sub i32 0, 6
  %index_ptr2769 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 4
  store i32 %unop2768, i32* %index_ptr2769
  %index_ptr2770 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2770
  %index_ptr2771 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2771
  %index_ptr2772 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2772
  %unop2773 = sub i32 0, 2
  %index_ptr2774 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 8
  store i32 %unop2773, i32* %index_ptr2774
  %unop2775 = sub i32 0, 5
  %index_ptr2776 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 9
  store i32 %unop2775, i32* %index_ptr2776
  %index_ptr2777 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2777
  %index_ptr2778 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2778
  %index_ptr2779 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2779
  %unop2780 = sub i32 0, 3
  %index_ptr2781 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 13
  store i32 %unop2780, i32* %index_ptr2781
  %index_ptr2782 = getelementptr { i32, [ 0 x i32 ] }* %array2763, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2782
  %nums2783 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2763, { i32, [ 0 x i32 ] }** %nums2783
  %i2784 = alloca i32
  store i32 0, i32* %i2784
  %_lhs2785 = load { i32, [ 0 x i32 ] }** %nums2783
  %len_ptr2786 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2785, i32 0, i32 0
  %len2787 = load i32* %len_ptr2786
  %n2788 = alloca i32
  store i32 %len2787, i32* %n2788
  %_lhs2790 = load i32* %n2788
  %bop2791 = sub i32 %_lhs2790, 1
  %_lhs2789 = load { i32, [ 0 x i32 ] }** %nums2783
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2789, i32 0, i32 %bop2791 )
  store i32 0, i32* %i2784
  br label %__cond941

__cond941:
  %_lhs2792 = load i32* %i2784
  %_lhs2793 = load i32* %n2788
  %bop2794 = sub i32 %_lhs2793, 1
  %bop2795 = icmp sle i32 %_lhs2792, %bop2794
  br i1 %bop2795, label %__body940, label %__post939

__fresh943:
  br label %__body940

__body940:
  %_lhs2796 = load i32* %i2784
  %size_ptr2798 = getelementptr { i32, [ 0 x i32 ] }* %nums2783, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2798, i32 %_lhs2796 )
  %index_ptr2797 = getelementptr { i32, [ 0 x i32 ] }* %nums2783, i32 0, i32 1, i32 %_lhs2796
  %_lhs2799 = load { i32, [ 0 x i32 ] }** %nums2783
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2799 )
  %_lhs2800 = load i32* %i2784
  %bop2801 = add i32 %_lhs2800, 1
  store i32 %bop2801, i32* %i2784
  br label %__cond941

__fresh944:
  br label %__post939

__post939:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2707, i32 %i2705, i32 %j2703){

__fresh934:
  %a_slot2708 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2707, { i32, [ 0 x i32 ] }** %a_slot2708
  %i_slot2706 = alloca i32
  store i32 %i2705, i32* %i_slot2706
  %j_slot2704 = alloca i32
  store i32 %j2703, i32* %j_slot2704
  %t2709 = alloca i32
  store i32 0, i32* %t2709
  %_lhs2710 = load i32* %j_slot2704
  %size_ptr2712 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2712, i32 %_lhs2710 )
  %index_ptr2711 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 1, i32 %_lhs2710
  %_lhs2713 = load { i32, [ 0 x i32 ] }** %a_slot2708
  %_lhs2714 = load i32* %i_slot2706
  %size_ptr2716 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2716, i32 %_lhs2714 )
  %index_ptr2715 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 1, i32 %_lhs2714
  %_lhs2717 = load { i32, [ 0 x i32 ] }** %a_slot2708
  %bop2718 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2713, %_lhs2717
  br i1 %bop2718, label %__then930, label %__else929

__fresh935:
  br label %__then930

__then930:
  %_lhs2719 = load i32* %i_slot2706
  %size_ptr2721 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2721, i32 %_lhs2719 )
  %index_ptr2720 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 1, i32 %_lhs2719
  %_lhs2722 = load { i32, [ 0 x i32 ] }** %a_slot2708
  store { i32, [ 0 x i32 ] }* %_lhs2722, i32* %t2709
  %_lhs2723 = load i32* %i_slot2706
  %size_ptr2725 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2725, i32 %_lhs2723 )
  %index_ptr2724 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 1, i32 %_lhs2723
  %_lhs2726 = load i32* %j_slot2704
  %size_ptr2728 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2728, i32 %_lhs2726 )
  %index_ptr2727 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 1, i32 %_lhs2726
  %_lhs2729 = load { i32, [ 0 x i32 ] }** %a_slot2708
  store { i32, [ 0 x i32 ] }* %_lhs2729, { i32, [ 0 x i32 ] }** %a_slot2708
  %_lhs2730 = load i32* %j_slot2704
  %size_ptr2732 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2732, i32 %_lhs2730 )
  %index_ptr2731 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2708, i32 0, i32 1, i32 %_lhs2730
  %_lhs2733 = load i32* %t2709
  store i32 %_lhs2733, { i32, [ 0 x i32 ] }** %a_slot2708
  br label %__merge928

__fresh936:
  br label %__else929

__else929:
  br label %__merge928

__merge928:
  %_lhs2734 = load i32* %j_slot2704
  %_lhs2735 = load i32* %i_slot2706
  %bop2736 = sub i32 %_lhs2734, %_lhs2735
  %bop2737 = icmp sgt i32 %bop2736, 1
  br i1 %bop2737, label %__then933, label %__else932

__fresh937:
  br label %__then933

__then933:
  %_lhs2738 = load i32* %j_slot2704
  %_lhs2739 = load i32* %i_slot2706
  %bop2740 = sub i32 %_lhs2738, %_lhs2739
  %bop2741 = add i32 %bop2740, 1
  %bop2742 = ashr i32 %bop2741, 1
  store i32 %bop2742, i32* %t2709
  %_lhs2745 = load i32* %j_slot2704
  %_lhs2746 = load i32* %t2709
  %bop2747 = sub i32 %_lhs2745, %_lhs2746
  %_lhs2744 = load i32* %i_slot2706
  %_lhs2743 = load { i32, [ 0 x i32 ] }** %a_slot2708
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2743, i32 %_lhs2744, i32 %bop2747 )
  %_lhs2752 = load i32* %j_slot2704
  %_lhs2749 = load i32* %i_slot2706
  %_lhs2750 = load i32* %t2709
  %bop2751 = add i32 %_lhs2749, %_lhs2750
  %_lhs2748 = load { i32, [ 0 x i32 ] }** %a_slot2708
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2748, i32 %bop2751, i32 %_lhs2752 )
  %_lhs2755 = load i32* %j_slot2704
  %_lhs2756 = load i32* %t2709
  %bop2757 = sub i32 %_lhs2755, %_lhs2756
  %_lhs2754 = load i32* %i_slot2706
  %_lhs2753 = load { i32, [ 0 x i32 ] }** %a_slot2708
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2753, i32 %_lhs2754, i32 %bop2757 )
  br label %__merge931

__fresh938:
  br label %__else932

__else932:
  br label %__merge931

__merge931:
  ret void
}


