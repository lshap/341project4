declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2806.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2806 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2806.str., i32 0, i32 0), align 4
@_oat_string2802.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2802 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2802.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh781:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2788, i32 %n2786){

__fresh776:
  %ar_slot2789 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2788, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2789
  %n_slot2787 = alloca i32
  store i32 %n2786, i32* %n_slot2787
  %i2790 = alloca i32
  store i32 0, i32* %i2790
  br label %__cond772

__cond772:
  %_lhs2791 = load i32* %i2790
  %_lhs2792 = load i32* %n_slot2787
  %bop2793 = icmp slt i32 %_lhs2791, %_lhs2792
  br i1 %bop2793, label %__body771, label %__post770

__fresh777:
  br label %__body771

__body771:
  %j2794 = alloca i32
  store i32 0, i32* %j2794
  br label %__cond775

__cond775:
  %_lhs2795 = load i32* %j2794
  %bop2796 = icmp slt i32 %_lhs2795, 4
  br i1 %bop2796, label %__body774, label %__post773

__fresh778:
  br label %__body774

__body774:
  %_lhs2797 = load i32* %j2794
  %_lhs2798 = load i32* %i2790
  %index_ptr2799 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2789, i32 %_lhs2798
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2798 )
  %index_ptr2800 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2789, i32 %_lhs2797
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2797 )
  %_lhs2801 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2789
  call void @print_int( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2801 )
  %strval2803 = load i8** @_oat_string2802
  call void @print_string( i8* %strval2803 )
  %_lhs2804 = load i32* %j2794
  %bop2805 = add i32 %_lhs2804, 1
  store i32 %bop2805, i32* %j2794
  br label %__cond775

__fresh779:
  br label %__post773

__post773:
  %strval2807 = load i8** @_oat_string2806
  call void @print_string( i8* %strval2807 )
  %_lhs2808 = load i32* %i2790
  %bop2809 = add i32 %_lhs2808, 1
  store i32 %bop2809, i32* %i2790
  br label %__cond772

__fresh780:
  br label %__post770

__post770:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12764, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22762, i32 %row2760, i32 %col2758){

__fresh767:
  %a1_slot2765 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12764, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2765
  %a2_slot2763 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22762, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2763
  %row_slot2761 = alloca i32
  store i32 %row2760, i32* %row_slot2761
  %col_slot2759 = alloca i32
  store i32 %col2758, i32* %col_slot2759
  %sum2766 = alloca i32
  store i32 0, i32* %sum2766
  %k2767 = alloca i32
  store i32 0, i32* %k2767
  br label %__cond766

__cond766:
  %_lhs2768 = load i32* %k2767
  %bop2769 = icmp slt i32 %_lhs2768, 3
  br i1 %bop2769, label %__body765, label %__post764

__fresh768:
  br label %__body765

__body765:
  %_lhs2770 = load i32* %sum2766
  %_lhs2771 = load i32* %k2767
  %_lhs2772 = load i32* %row_slot2761
  %index_ptr2773 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2765, i32 %_lhs2772
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2772 )
  %index_ptr2774 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2765, i32 %_lhs2771
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2771 )
  %_lhs2775 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2765
  %_lhs2776 = load i32* %col_slot2759
  %_lhs2777 = load i32* %k2767
  %index_ptr2778 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2763, i32 %_lhs2777
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2777 )
  %index_ptr2779 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2763, i32 %_lhs2776
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2776 )
  %_lhs2780 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2763
  %bop2781 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2775, %_lhs2780
  %bop2782 = add i32 %_lhs2770, %bop2781
  store i32 %bop2782, i32* %sum2766
  %_lhs2783 = load i32* %k2767
  %bop2784 = add i32 %_lhs2783, 1
  store i32 %bop2784, i32* %k2767
  br label %__cond766

__fresh769:
  br label %__post764

__post764:
  %_lhs2785 = load i32* %sum2766
  ret i32 %_lhs2785
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12737, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22735, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32733){

__fresh759:
  %a1_slot2738 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12737, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2738
  %a2_slot2736 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22735, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2736
  %a3_slot2734 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32733, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2734
  %i2739 = alloca i32
  store i32 0, i32* %i2739
  br label %__cond755

__cond755:
  %_lhs2740 = load i32* %i2739
  %bop2741 = icmp slt i32 %_lhs2740, 2
  br i1 %bop2741, label %__body754, label %__post753

__fresh760:
  br label %__body754

__body754:
  %j2742 = alloca i32
  store i32 0, i32* %j2742
  br label %__cond758

__cond758:
  %_lhs2743 = load i32* %j2742
  %bop2744 = icmp slt i32 %_lhs2743, 4
  br i1 %bop2744, label %__body757, label %__post756

__fresh761:
  br label %__body757

__body757:
  %_lhs2745 = load i32* %j2742
  %_lhs2746 = load i32* %i2739
  %index_ptr2747 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2734, i32 %_lhs2746
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2746 )
  %index_ptr2748 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2734, i32 %_lhs2745
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2745 )
  %_lhs2752 = load i32* %j2742
  %_lhs2751 = load i32* %i2739
  %_lhs2750 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2736
  %_lhs2749 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2738
  %ret2753 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2749, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2750, i32 %_lhs2751, i32 %_lhs2752 )
  store i32 %ret2753, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2734
  %_lhs2754 = load i32* %j2742
  %bop2755 = add i32 %_lhs2754, 1
  store i32 %bop2755, i32* %j2742
  br label %__cond758

__fresh762:
  br label %__post756

__post756:
  %_lhs2756 = load i32* %i2739
  %bop2757 = add i32 %_lhs2756, 1
  store i32 %bop2757, i32* %i2739
  br label %__cond755

__fresh763:
  br label %__post753

__post753:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12695, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22693, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32691){

__fresh746:
  %a1_slot2696 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12695, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2696
  %a2_slot2694 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22693, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2694
  %a3_slot2692 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32691, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2692
  %i2697 = alloca i32
  store i32 0, i32* %i2697
  br label %__cond739

__cond739:
  %_lhs2698 = load i32* %i2697
  %bop2699 = icmp slt i32 %_lhs2698, 2
  br i1 %bop2699, label %__body738, label %__post737

__fresh747:
  br label %__body738

__body738:
  %j2700 = alloca i32
  store i32 0, i32* %j2700
  br label %__cond742

__cond742:
  %_lhs2701 = load i32* %j2700
  %bop2702 = icmp slt i32 %_lhs2701, 4
  br i1 %bop2702, label %__body741, label %__post740

__fresh748:
  br label %__body741

__body741:
  %k2703 = alloca i32
  store i32 0, i32* %k2703
  br label %__cond745

__cond745:
  %_lhs2704 = load i32* %k2703
  %bop2705 = icmp slt i32 %_lhs2704, 3
  br i1 %bop2705, label %__body744, label %__post743

__fresh749:
  br label %__body744

__body744:
  %_lhs2706 = load i32* %j2700
  %_lhs2707 = load i32* %i2697
  %index_ptr2708 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2692, i32 %_lhs2707
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2707 )
  %index_ptr2709 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2692, i32 %_lhs2706
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2706 )
  %_lhs2710 = load i32* %j2700
  %_lhs2711 = load i32* %i2697
  %index_ptr2712 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2692, i32 %_lhs2711
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2711 )
  %index_ptr2713 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2692, i32 %_lhs2710
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2710 )
  %_lhs2714 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2692
  %_lhs2715 = load i32* %k2703
  %_lhs2716 = load i32* %i2697
  %index_ptr2717 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2696, i32 %_lhs2716
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2716 )
  %index_ptr2718 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2696, i32 %_lhs2715
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2715 )
  %_lhs2719 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2696
  %_lhs2720 = load i32* %j2700
  %_lhs2721 = load i32* %k2703
  %index_ptr2722 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2694, i32 %_lhs2721
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2721 )
  %index_ptr2723 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2694, i32 %_lhs2720
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2720 )
  %_lhs2724 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2694
  %bop2725 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2719, %_lhs2724
  %bop2726 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2714, %bop2725
  store i32 %bop2726, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2692
  %_lhs2727 = load i32* %k2703
  %bop2728 = add i32 %_lhs2727, 1
  store i32 %bop2728, i32* %k2703
  br label %__cond745

__fresh750:
  br label %__post743

__post743:
  %_lhs2729 = load i32* %j2700
  %bop2730 = add i32 %_lhs2729, 1
  store i32 %bop2730, i32* %j2700
  br label %__cond742

__fresh751:
  br label %__post740

__post740:
  %_lhs2731 = load i32* %i2697
  %bop2732 = add i32 %_lhs2731, 1
  store i32 %bop2732, i32* %i2697
  br label %__cond739

__fresh752:
  br label %__post737

__post737:
  ret void
}


define i32 @program (i32 %argc2625, { i32, [ 0 x i8* ] }* %argv2623){

__fresh736:
  %argc_slot2626 = alloca i32
  store i32 %argc2625, i32* %argc_slot2626
  %argv_slot2624 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2623, { i32, [ 0 x i8* ] }** %argv_slot2624
  %array_ptr2627 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2628 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2627 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2629 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2630 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2629 to { i32, [ 0 x i32 ] }* 
  %index_ptr2631 = getelementptr { i32, [ 0 x i32 ] }* %array2630, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2631
  %index_ptr2632 = getelementptr { i32, [ 0 x i32 ] }* %array2630, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr2632
  %index_ptr2633 = getelementptr { i32, [ 0 x i32 ] }* %array2630, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr2633
  %index_ptr2634 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2628, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2630, { i32, [ 0 x i32 ] }** %index_ptr2634
  %array_ptr2635 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2636 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2635 to { i32, [ 0 x i32 ] }* 
  %index_ptr2637 = getelementptr { i32, [ 0 x i32 ] }* %array2636, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2637
  %index_ptr2638 = getelementptr { i32, [ 0 x i32 ] }* %array2636, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2638
  %index_ptr2639 = getelementptr { i32, [ 0 x i32 ] }* %array2636, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2639
  %index_ptr2640 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2628, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2636, { i32, [ 0 x i32 ] }** %index_ptr2640
  %a2641 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2628, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2641
  %array_ptr2642 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2643 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2642 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2644 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2645 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2644 to { i32, [ 0 x i32 ] }* 
  %index_ptr2646 = getelementptr { i32, [ 0 x i32 ] }* %array2645, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2646
  %index_ptr2647 = getelementptr { i32, [ 0 x i32 ] }* %array2645, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2647
  %index_ptr2648 = getelementptr { i32, [ 0 x i32 ] }* %array2645, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr2648
  %index_ptr2649 = getelementptr { i32, [ 0 x i32 ] }* %array2645, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr2649
  %index_ptr2650 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2643, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2645, { i32, [ 0 x i32 ] }** %index_ptr2650
  %array_ptr2651 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2652 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2651 to { i32, [ 0 x i32 ] }* 
  %index_ptr2653 = getelementptr { i32, [ 0 x i32 ] }* %array2652, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2653
  %index_ptr2654 = getelementptr { i32, [ 0 x i32 ] }* %array2652, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2654
  %index_ptr2655 = getelementptr { i32, [ 0 x i32 ] }* %array2652, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr2655
  %index_ptr2656 = getelementptr { i32, [ 0 x i32 ] }* %array2652, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr2656
  %index_ptr2657 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2643, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2652, { i32, [ 0 x i32 ] }** %index_ptr2657
  %array_ptr2658 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2659 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2658 to { i32, [ 0 x i32 ] }* 
  %index_ptr2660 = getelementptr { i32, [ 0 x i32 ] }* %array2659, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2660
  %index_ptr2661 = getelementptr { i32, [ 0 x i32 ] }* %array2659, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2661
  %index_ptr2662 = getelementptr { i32, [ 0 x i32 ] }* %array2659, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2662
  %index_ptr2663 = getelementptr { i32, [ 0 x i32 ] }* %array2659, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr2663
  %index_ptr2664 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2643, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array2659, { i32, [ 0 x i32 ] }** %index_ptr2664
  %b2665 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2643, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2665
  %array_ptr2666 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2667 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2666 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2668 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2669 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2668 to { i32, [ 0 x i32 ] }* 
  %index_ptr2670 = getelementptr { i32, [ 0 x i32 ] }* %array2669, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2670
  %index_ptr2671 = getelementptr { i32, [ 0 x i32 ] }* %array2669, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2671
  %index_ptr2672 = getelementptr { i32, [ 0 x i32 ] }* %array2669, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2672
  %index_ptr2673 = getelementptr { i32, [ 0 x i32 ] }* %array2669, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2673
  %index_ptr2674 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2667, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2669, { i32, [ 0 x i32 ] }** %index_ptr2674
  %array_ptr2675 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2676 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2675 to { i32, [ 0 x i32 ] }* 
  %index_ptr2677 = getelementptr { i32, [ 0 x i32 ] }* %array2676, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2677
  %index_ptr2678 = getelementptr { i32, [ 0 x i32 ] }* %array2676, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2678
  %index_ptr2679 = getelementptr { i32, [ 0 x i32 ] }* %array2676, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2679
  %index_ptr2680 = getelementptr { i32, [ 0 x i32 ] }* %array2676, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2680
  %index_ptr2681 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2667, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2676, { i32, [ 0 x i32 ] }** %index_ptr2681
  %c2682 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2667, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2682
  %_lhs2685 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2682
  %_lhs2684 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2665
  %_lhs2683 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2641
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2683, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2684, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2685 )
  %_lhs2686 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2682
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2686, i32 2 )
  %_lhs2689 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2682
  %_lhs2688 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2665
  %_lhs2687 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2641
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2687, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2688, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2689 )
  %_lhs2690 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2682
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2690, i32 2 )
  ret i32 0
}


