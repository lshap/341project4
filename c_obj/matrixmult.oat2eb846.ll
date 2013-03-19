declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2810.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2810 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2810.str., i32 0, i32 0), align 4
@_oat_string2806.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2806 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2806.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh991:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2792, i32 %n2790){

__fresh986:
  %ar_slot2793 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2792, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2793
  %n_slot2791 = alloca i32
  store i32 %n2790, i32* %n_slot2791
  %i2794 = alloca i32
  store i32 0, i32* %i2794
  br label %__cond982

__cond982:
  %_lhs2795 = load i32* %i2794
  %_lhs2796 = load i32* %n_slot2791
  %bop2797 = icmp slt i32 %_lhs2795, %_lhs2796
  br i1 %bop2797, label %__body981, label %__post980

__fresh987:
  br label %__body981

__body981:
  %j2798 = alloca i32
  store i32 0, i32* %j2798
  br label %__cond985

__cond985:
  %_lhs2799 = load i32* %j2798
  %bop2800 = icmp slt i32 %_lhs2799, 4
  br i1 %bop2800, label %__body984, label %__post983

__fresh988:
  br label %__body984

__body984:
  %_lhs2801 = load i32* %j2798
  %_lhs2802 = load i32* %i2794
  %index_ptr2803 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2793, i32 %_lhs2802
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2802 )
  %index_ptr2804 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2793, i32 %_lhs2801
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2801 )
  %_lhs2805 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2793
  call void @print_int( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2805 )
  %strval2807 = load i8** @_oat_string2806
  call void @print_string( i8* %strval2807 )
  %_lhs2808 = load i32* %j2798
  %bop2809 = add i32 %_lhs2808, 1
  store i32 %bop2809, i32* %j2798
  br label %__cond985

__fresh989:
  br label %__post983

__post983:
  %strval2811 = load i8** @_oat_string2810
  call void @print_string( i8* %strval2811 )
  %_lhs2812 = load i32* %i2794
  %bop2813 = add i32 %_lhs2812, 1
  store i32 %bop2813, i32* %i2794
  br label %__cond982

__fresh990:
  br label %__post980

__post980:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12768, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22766, i32 %row2764, i32 %col2762){

__fresh977:
  %a1_slot2769 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12768, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2769
  %a2_slot2767 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22766, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2767
  %row_slot2765 = alloca i32
  store i32 %row2764, i32* %row_slot2765
  %col_slot2763 = alloca i32
  store i32 %col2762, i32* %col_slot2763
  %sum2770 = alloca i32
  store i32 0, i32* %sum2770
  %k2771 = alloca i32
  store i32 0, i32* %k2771
  br label %__cond976

__cond976:
  %_lhs2772 = load i32* %k2771
  %bop2773 = icmp slt i32 %_lhs2772, 3
  br i1 %bop2773, label %__body975, label %__post974

__fresh978:
  br label %__body975

__body975:
  %_lhs2774 = load i32* %sum2770
  %_lhs2775 = load i32* %k2771
  %_lhs2776 = load i32* %row_slot2765
  %index_ptr2777 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2769, i32 %_lhs2776
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2776 )
  %index_ptr2778 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2769, i32 %_lhs2775
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2775 )
  %_lhs2779 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2769
  %_lhs2780 = load i32* %col_slot2763
  %_lhs2781 = load i32* %k2771
  %index_ptr2782 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2767, i32 %_lhs2781
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2781 )
  %index_ptr2783 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2767, i32 %_lhs2780
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2780 )
  %_lhs2784 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2767
  %bop2785 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2779, %_lhs2784
  %bop2786 = add i32 %_lhs2774, %bop2785
  store i32 %bop2786, i32* %sum2770
  %_lhs2787 = load i32* %k2771
  %bop2788 = add i32 %_lhs2787, 1
  store i32 %bop2788, i32* %k2771
  br label %__cond976

__fresh979:
  br label %__post974

__post974:
  %_lhs2789 = load i32* %sum2770
  ret i32 %_lhs2789
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12741, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22739, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32737){

__fresh969:
  %a1_slot2742 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12741, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2742
  %a2_slot2740 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22739, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2740
  %a3_slot2738 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32737, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2738
  %i2743 = alloca i32
  store i32 0, i32* %i2743
  br label %__cond965

__cond965:
  %_lhs2744 = load i32* %i2743
  %bop2745 = icmp slt i32 %_lhs2744, 2
  br i1 %bop2745, label %__body964, label %__post963

__fresh970:
  br label %__body964

__body964:
  %j2746 = alloca i32
  store i32 0, i32* %j2746
  br label %__cond968

__cond968:
  %_lhs2747 = load i32* %j2746
  %bop2748 = icmp slt i32 %_lhs2747, 4
  br i1 %bop2748, label %__body967, label %__post966

__fresh971:
  br label %__body967

__body967:
  %_lhs2749 = load i32* %j2746
  %_lhs2750 = load i32* %i2743
  %index_ptr2751 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2738, i32 %_lhs2750
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2750 )
  %index_ptr2752 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2738, i32 %_lhs2749
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2749 )
  %_lhs2756 = load i32* %j2746
  %_lhs2755 = load i32* %i2743
  %_lhs2754 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2740
  %_lhs2753 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2742
  %ret2757 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2753, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2754, i32 %_lhs2755, i32 %_lhs2756 )
  store i32 %ret2757, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2738
  %_lhs2758 = load i32* %j2746
  %bop2759 = add i32 %_lhs2758, 1
  store i32 %bop2759, i32* %j2746
  br label %__cond968

__fresh972:
  br label %__post966

__post966:
  %_lhs2760 = load i32* %i2743
  %bop2761 = add i32 %_lhs2760, 1
  store i32 %bop2761, i32* %i2743
  br label %__cond965

__fresh973:
  br label %__post963

__post963:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12699, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22697, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32695){

__fresh956:
  %a1_slot2700 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12699, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2700
  %a2_slot2698 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22697, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2698
  %a3_slot2696 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32695, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2696
  %i2701 = alloca i32
  store i32 0, i32* %i2701
  br label %__cond949

__cond949:
  %_lhs2702 = load i32* %i2701
  %bop2703 = icmp slt i32 %_lhs2702, 2
  br i1 %bop2703, label %__body948, label %__post947

__fresh957:
  br label %__body948

__body948:
  %j2704 = alloca i32
  store i32 0, i32* %j2704
  br label %__cond952

__cond952:
  %_lhs2705 = load i32* %j2704
  %bop2706 = icmp slt i32 %_lhs2705, 4
  br i1 %bop2706, label %__body951, label %__post950

__fresh958:
  br label %__body951

__body951:
  %k2707 = alloca i32
  store i32 0, i32* %k2707
  br label %__cond955

__cond955:
  %_lhs2708 = load i32* %k2707
  %bop2709 = icmp slt i32 %_lhs2708, 3
  br i1 %bop2709, label %__body954, label %__post953

__fresh959:
  br label %__body954

__body954:
  %_lhs2710 = load i32* %j2704
  %_lhs2711 = load i32* %i2701
  %index_ptr2712 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2696, i32 %_lhs2711
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2711 )
  %index_ptr2713 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2696, i32 %_lhs2710
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2710 )
  %_lhs2714 = load i32* %j2704
  %_lhs2715 = load i32* %i2701
  %index_ptr2716 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2696, i32 %_lhs2715
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2715 )
  %index_ptr2717 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2696, i32 %_lhs2714
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2714 )
  %_lhs2718 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2696
  %_lhs2719 = load i32* %k2707
  %_lhs2720 = load i32* %i2701
  %index_ptr2721 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2700, i32 %_lhs2720
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2720 )
  %index_ptr2722 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2700, i32 %_lhs2719
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2719 )
  %_lhs2723 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2700
  %_lhs2724 = load i32* %j2704
  %_lhs2725 = load i32* %k2707
  %index_ptr2726 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2698, i32 %_lhs2725
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2725 )
  %index_ptr2727 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2698, i32 %_lhs2724
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2724 )
  %_lhs2728 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2698
  %bop2729 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2723, %_lhs2728
  %bop2730 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2718, %bop2729
  store i32 %bop2730, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2696
  %_lhs2731 = load i32* %k2707
  %bop2732 = add i32 %_lhs2731, 1
  store i32 %bop2732, i32* %k2707
  br label %__cond955

__fresh960:
  br label %__post953

__post953:
  %_lhs2733 = load i32* %j2704
  %bop2734 = add i32 %_lhs2733, 1
  store i32 %bop2734, i32* %j2704
  br label %__cond952

__fresh961:
  br label %__post950

__post950:
  %_lhs2735 = load i32* %i2701
  %bop2736 = add i32 %_lhs2735, 1
  store i32 %bop2736, i32* %i2701
  br label %__cond949

__fresh962:
  br label %__post947

__post947:
  ret void
}


define i32 @program (i32 %argc2629, { i32, [ 0 x i8* ] }* %argv2627){

__fresh946:
  %argc_slot2630 = alloca i32
  store i32 %argc2629, i32* %argc_slot2630
  %argv_slot2628 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2627, { i32, [ 0 x i8* ] }** %argv_slot2628
  %array_ptr2631 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2632 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2631 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2633 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2634 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2633 to { i32, [ 0 x i32 ] }* 
  %index_ptr2635 = getelementptr { i32, [ 0 x i32 ] }* %array2634, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2635
  %index_ptr2636 = getelementptr { i32, [ 0 x i32 ] }* %array2634, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr2636
  %index_ptr2637 = getelementptr { i32, [ 0 x i32 ] }* %array2634, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr2637
  %index_ptr2638 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2632, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2634, { i32, [ 0 x i32 ] }** %index_ptr2638
  %array_ptr2639 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2640 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2639 to { i32, [ 0 x i32 ] }* 
  %index_ptr2641 = getelementptr { i32, [ 0 x i32 ] }* %array2640, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2641
  %index_ptr2642 = getelementptr { i32, [ 0 x i32 ] }* %array2640, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2642
  %index_ptr2643 = getelementptr { i32, [ 0 x i32 ] }* %array2640, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2643
  %index_ptr2644 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2632, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2640, { i32, [ 0 x i32 ] }** %index_ptr2644
  %a2645 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2632, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2645
  %array_ptr2646 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2647 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2646 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2648 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2649 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2648 to { i32, [ 0 x i32 ] }* 
  %index_ptr2650 = getelementptr { i32, [ 0 x i32 ] }* %array2649, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2650
  %index_ptr2651 = getelementptr { i32, [ 0 x i32 ] }* %array2649, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2651
  %index_ptr2652 = getelementptr { i32, [ 0 x i32 ] }* %array2649, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr2652
  %index_ptr2653 = getelementptr { i32, [ 0 x i32 ] }* %array2649, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr2653
  %index_ptr2654 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2647, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2649, { i32, [ 0 x i32 ] }** %index_ptr2654
  %array_ptr2655 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2656 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2655 to { i32, [ 0 x i32 ] }* 
  %index_ptr2657 = getelementptr { i32, [ 0 x i32 ] }* %array2656, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2657
  %index_ptr2658 = getelementptr { i32, [ 0 x i32 ] }* %array2656, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2658
  %index_ptr2659 = getelementptr { i32, [ 0 x i32 ] }* %array2656, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr2659
  %index_ptr2660 = getelementptr { i32, [ 0 x i32 ] }* %array2656, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr2660
  %index_ptr2661 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2647, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2656, { i32, [ 0 x i32 ] }** %index_ptr2661
  %array_ptr2662 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2663 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2662 to { i32, [ 0 x i32 ] }* 
  %index_ptr2664 = getelementptr { i32, [ 0 x i32 ] }* %array2663, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2664
  %index_ptr2665 = getelementptr { i32, [ 0 x i32 ] }* %array2663, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2665
  %index_ptr2666 = getelementptr { i32, [ 0 x i32 ] }* %array2663, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2666
  %index_ptr2667 = getelementptr { i32, [ 0 x i32 ] }* %array2663, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr2667
  %index_ptr2668 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2647, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array2663, { i32, [ 0 x i32 ] }** %index_ptr2668
  %b2669 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2647, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2669
  %array_ptr2670 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2671 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2670 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2672 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2673 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2672 to { i32, [ 0 x i32 ] }* 
  %index_ptr2674 = getelementptr { i32, [ 0 x i32 ] }* %array2673, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2674
  %index_ptr2675 = getelementptr { i32, [ 0 x i32 ] }* %array2673, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2675
  %index_ptr2676 = getelementptr { i32, [ 0 x i32 ] }* %array2673, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2676
  %index_ptr2677 = getelementptr { i32, [ 0 x i32 ] }* %array2673, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2677
  %index_ptr2678 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2671, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2673, { i32, [ 0 x i32 ] }** %index_ptr2678
  %array_ptr2679 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2680 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2679 to { i32, [ 0 x i32 ] }* 
  %index_ptr2681 = getelementptr { i32, [ 0 x i32 ] }* %array2680, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2681
  %index_ptr2682 = getelementptr { i32, [ 0 x i32 ] }* %array2680, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2682
  %index_ptr2683 = getelementptr { i32, [ 0 x i32 ] }* %array2680, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2683
  %index_ptr2684 = getelementptr { i32, [ 0 x i32 ] }* %array2680, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2684
  %index_ptr2685 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2671, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2680, { i32, [ 0 x i32 ] }** %index_ptr2685
  %c2686 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2671, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2686
  %_lhs2689 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2686
  %_lhs2688 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2669
  %_lhs2687 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2645
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2687, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2688, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2689 )
  %_lhs2690 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2686
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2690, i32 2 )
  %_lhs2693 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2686
  %_lhs2692 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2669
  %_lhs2691 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2645
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2691, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2692, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2693 )
  %_lhs2694 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2686
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2694, i32 2 )
  ret i32 0
}


