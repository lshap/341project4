declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2819.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2819 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2819.str., i32 0, i32 0), align 4
@_oat_string2815.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2815 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2815.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh781:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2801, i32 %n2799){

__fresh776:
  %ar_slot2802 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2801, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2802
  %n_slot2800 = alloca i32
  store i32 %n2799, i32* %n_slot2800
  %i2803 = alloca i32
  store i32 0, i32* %i2803
  br label %__cond772

__cond772:
  %_lhs2804 = load i32* %i2803
  %_lhs2805 = load i32* %n_slot2800
  %bop2806 = icmp slt i32 %_lhs2804, %_lhs2805
  br i1 %bop2806, label %__body771, label %__post770

__fresh777:
  br label %__body771

__body771:
  %j2807 = alloca i32
  store i32 0, i32* %j2807
  br label %__cond775

__cond775:
  %_lhs2808 = load i32* %j2807
  %bop2809 = icmp slt i32 %_lhs2808, 4
  br i1 %bop2809, label %__body774, label %__post773

__fresh778:
  br label %__body774

__body774:
  %_lhs2810 = load i32* %j2807
  %_lhs2811 = load i32* %i2803
  %index_ptr2812 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2802, i32 %_lhs2811
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2811 )
  %index_ptr2813 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2802, i32 %_lhs2810
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2810 )
  %_lhs2814 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2802
  call void @print_int( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2814 )
  %strval2816 = load i8** @_oat_string2815
  call void @print_string( i8* %strval2816 )
  %_lhs2817 = load i32* %j2807
  %bop2818 = add i32 %_lhs2817, 1
  store i32 %bop2818, i32* %j2807
  br label %__cond775

__fresh779:
  br label %__post773

__post773:
  %strval2820 = load i8** @_oat_string2819
  call void @print_string( i8* %strval2820 )
  %_lhs2821 = load i32* %i2803
  %bop2822 = add i32 %_lhs2821, 1
  store i32 %bop2822, i32* %i2803
  br label %__cond772

__fresh780:
  br label %__post770

__post770:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12777, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22775, i32 %row2773, i32 %col2771){

__fresh767:
  %a1_slot2778 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12777, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2778
  %a2_slot2776 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22775, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2776
  %row_slot2774 = alloca i32
  store i32 %row2773, i32* %row_slot2774
  %col_slot2772 = alloca i32
  store i32 %col2771, i32* %col_slot2772
  %sum2779 = alloca i32
  store i32 0, i32* %sum2779
  %k2780 = alloca i32
  store i32 0, i32* %k2780
  br label %__cond766

__cond766:
  %_lhs2781 = load i32* %k2780
  %bop2782 = icmp slt i32 %_lhs2781, 3
  br i1 %bop2782, label %__body765, label %__post764

__fresh768:
  br label %__body765

__body765:
  %_lhs2783 = load i32* %sum2779
  %_lhs2784 = load i32* %k2780
  %_lhs2785 = load i32* %row_slot2774
  %index_ptr2786 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2778, i32 %_lhs2785
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2785 )
  %index_ptr2787 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2778, i32 %_lhs2784
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2784 )
  %_lhs2788 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2778
  %_lhs2789 = load i32* %col_slot2772
  %_lhs2790 = load i32* %k2780
  %index_ptr2791 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2776, i32 %_lhs2790
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2790 )
  %index_ptr2792 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2776, i32 %_lhs2789
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2789 )
  %_lhs2793 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2776
  %bop2794 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2788, %_lhs2793
  %bop2795 = add i32 %_lhs2783, %bop2794
  store i32 %bop2795, i32* %sum2779
  %_lhs2796 = load i32* %k2780
  %bop2797 = add i32 %_lhs2796, 1
  store i32 %bop2797, i32* %k2780
  br label %__cond766

__fresh769:
  br label %__post764

__post764:
  %_lhs2798 = load i32* %sum2779
  ret i32 %_lhs2798
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12750, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22748, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32746){

__fresh759:
  %a1_slot2751 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12750, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2751
  %a2_slot2749 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22748, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2749
  %a3_slot2747 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32746, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2747
  %i2752 = alloca i32
  store i32 0, i32* %i2752
  br label %__cond755

__cond755:
  %_lhs2753 = load i32* %i2752
  %bop2754 = icmp slt i32 %_lhs2753, 2
  br i1 %bop2754, label %__body754, label %__post753

__fresh760:
  br label %__body754

__body754:
  %j2755 = alloca i32
  store i32 0, i32* %j2755
  br label %__cond758

__cond758:
  %_lhs2756 = load i32* %j2755
  %bop2757 = icmp slt i32 %_lhs2756, 4
  br i1 %bop2757, label %__body757, label %__post756

__fresh761:
  br label %__body757

__body757:
  %_lhs2758 = load i32* %j2755
  %_lhs2759 = load i32* %i2752
  %index_ptr2760 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2747, i32 %_lhs2759
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2759 )
  %index_ptr2761 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2747, i32 %_lhs2758
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2758 )
  %_lhs2765 = load i32* %j2755
  %_lhs2764 = load i32* %i2752
  %_lhs2763 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2749
  %_lhs2762 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2751
  %ret2766 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2762, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2763, i32 %_lhs2764, i32 %_lhs2765 )
  store i32 %ret2766, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2747
  %_lhs2767 = load i32* %j2755
  %bop2768 = add i32 %_lhs2767, 1
  store i32 %bop2768, i32* %j2755
  br label %__cond758

__fresh762:
  br label %__post756

__post756:
  %_lhs2769 = load i32* %i2752
  %bop2770 = add i32 %_lhs2769, 1
  store i32 %bop2770, i32* %i2752
  br label %__cond755

__fresh763:
  br label %__post753

__post753:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12708, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22706, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32704){

__fresh746:
  %a1_slot2709 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12708, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2709
  %a2_slot2707 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22706, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2707
  %a3_slot2705 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32704, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2705
  %i2710 = alloca i32
  store i32 0, i32* %i2710
  br label %__cond739

__cond739:
  %_lhs2711 = load i32* %i2710
  %bop2712 = icmp slt i32 %_lhs2711, 2
  br i1 %bop2712, label %__body738, label %__post737

__fresh747:
  br label %__body738

__body738:
  %j2713 = alloca i32
  store i32 0, i32* %j2713
  br label %__cond742

__cond742:
  %_lhs2714 = load i32* %j2713
  %bop2715 = icmp slt i32 %_lhs2714, 4
  br i1 %bop2715, label %__body741, label %__post740

__fresh748:
  br label %__body741

__body741:
  %k2716 = alloca i32
  store i32 0, i32* %k2716
  br label %__cond745

__cond745:
  %_lhs2717 = load i32* %k2716
  %bop2718 = icmp slt i32 %_lhs2717, 3
  br i1 %bop2718, label %__body744, label %__post743

__fresh749:
  br label %__body744

__body744:
  %_lhs2719 = load i32* %j2713
  %_lhs2720 = load i32* %i2710
  %index_ptr2721 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2705, i32 %_lhs2720
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2720 )
  %index_ptr2722 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2705, i32 %_lhs2719
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2719 )
  %_lhs2723 = load i32* %j2713
  %_lhs2724 = load i32* %i2710
  %index_ptr2725 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2705, i32 %_lhs2724
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2724 )
  %index_ptr2726 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2705, i32 %_lhs2723
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2723 )
  %_lhs2727 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2705
  %_lhs2728 = load i32* %k2716
  %_lhs2729 = load i32* %i2710
  %index_ptr2730 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2709, i32 %_lhs2729
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2729 )
  %index_ptr2731 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2709, i32 %_lhs2728
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2728 )
  %_lhs2732 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2709
  %_lhs2733 = load i32* %j2713
  %_lhs2734 = load i32* %k2716
  %index_ptr2735 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2707, i32 %_lhs2734
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2734 )
  %index_ptr2736 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2707, i32 %_lhs2733
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2733 )
  %_lhs2737 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2707
  %bop2738 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2732, %_lhs2737
  %bop2739 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2727, %bop2738
  store i32 %bop2739, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2705
  %_lhs2740 = load i32* %k2716
  %bop2741 = add i32 %_lhs2740, 1
  store i32 %bop2741, i32* %k2716
  br label %__cond745

__fresh750:
  br label %__post743

__post743:
  %_lhs2742 = load i32* %j2713
  %bop2743 = add i32 %_lhs2742, 1
  store i32 %bop2743, i32* %j2713
  br label %__cond742

__fresh751:
  br label %__post740

__post740:
  %_lhs2744 = load i32* %i2710
  %bop2745 = add i32 %_lhs2744, 1
  store i32 %bop2745, i32* %i2710
  br label %__cond739

__fresh752:
  br label %__post737

__post737:
  ret void
}


define i32 @program (i32 %argc2638, { i32, [ 0 x i8* ] }* %argv2636){

__fresh736:
  %argc_slot2639 = alloca i32
  store i32 %argc2638, i32* %argc_slot2639
  %argv_slot2637 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2636, { i32, [ 0 x i8* ] }** %argv_slot2637
  %array_ptr2640 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2641 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2640 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2642 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2643 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2642 to { i32, [ 0 x i32 ] }* 
  %index_ptr2644 = getelementptr { i32, [ 0 x i32 ] }* %array2643, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2644
  %index_ptr2645 = getelementptr { i32, [ 0 x i32 ] }* %array2643, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr2645
  %index_ptr2646 = getelementptr { i32, [ 0 x i32 ] }* %array2643, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr2646
  %index_ptr2647 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2641, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2643, { i32, [ 0 x i32 ] }** %index_ptr2647
  %array_ptr2648 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2649 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2648 to { i32, [ 0 x i32 ] }* 
  %index_ptr2650 = getelementptr { i32, [ 0 x i32 ] }* %array2649, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2650
  %index_ptr2651 = getelementptr { i32, [ 0 x i32 ] }* %array2649, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2651
  %index_ptr2652 = getelementptr { i32, [ 0 x i32 ] }* %array2649, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2652
  %index_ptr2653 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2641, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2649, { i32, [ 0 x i32 ] }** %index_ptr2653
  %a2654 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2641, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2654
  %array_ptr2655 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2656 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2655 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2657 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2658 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2657 to { i32, [ 0 x i32 ] }* 
  %index_ptr2659 = getelementptr { i32, [ 0 x i32 ] }* %array2658, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2659
  %index_ptr2660 = getelementptr { i32, [ 0 x i32 ] }* %array2658, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2660
  %index_ptr2661 = getelementptr { i32, [ 0 x i32 ] }* %array2658, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr2661
  %index_ptr2662 = getelementptr { i32, [ 0 x i32 ] }* %array2658, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr2662
  %index_ptr2663 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2656, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2658, { i32, [ 0 x i32 ] }** %index_ptr2663
  %array_ptr2664 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2665 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2664 to { i32, [ 0 x i32 ] }* 
  %index_ptr2666 = getelementptr { i32, [ 0 x i32 ] }* %array2665, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2666
  %index_ptr2667 = getelementptr { i32, [ 0 x i32 ] }* %array2665, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2667
  %index_ptr2668 = getelementptr { i32, [ 0 x i32 ] }* %array2665, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr2668
  %index_ptr2669 = getelementptr { i32, [ 0 x i32 ] }* %array2665, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr2669
  %index_ptr2670 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2656, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2665, { i32, [ 0 x i32 ] }** %index_ptr2670
  %array_ptr2671 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2672 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2671 to { i32, [ 0 x i32 ] }* 
  %index_ptr2673 = getelementptr { i32, [ 0 x i32 ] }* %array2672, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2673
  %index_ptr2674 = getelementptr { i32, [ 0 x i32 ] }* %array2672, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2674
  %index_ptr2675 = getelementptr { i32, [ 0 x i32 ] }* %array2672, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2675
  %index_ptr2676 = getelementptr { i32, [ 0 x i32 ] }* %array2672, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr2676
  %index_ptr2677 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2656, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array2672, { i32, [ 0 x i32 ] }** %index_ptr2677
  %b2678 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2656, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2678
  %array_ptr2679 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2680 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2679 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2681 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2682 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2681 to { i32, [ 0 x i32 ] }* 
  %index_ptr2683 = getelementptr { i32, [ 0 x i32 ] }* %array2682, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2683
  %index_ptr2684 = getelementptr { i32, [ 0 x i32 ] }* %array2682, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2684
  %index_ptr2685 = getelementptr { i32, [ 0 x i32 ] }* %array2682, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2685
  %index_ptr2686 = getelementptr { i32, [ 0 x i32 ] }* %array2682, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2686
  %index_ptr2687 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2680, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2682, { i32, [ 0 x i32 ] }** %index_ptr2687
  %array_ptr2688 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2689 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2688 to { i32, [ 0 x i32 ] }* 
  %index_ptr2690 = getelementptr { i32, [ 0 x i32 ] }* %array2689, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2690
  %index_ptr2691 = getelementptr { i32, [ 0 x i32 ] }* %array2689, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2691
  %index_ptr2692 = getelementptr { i32, [ 0 x i32 ] }* %array2689, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2692
  %index_ptr2693 = getelementptr { i32, [ 0 x i32 ] }* %array2689, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2693
  %index_ptr2694 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2680, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2689, { i32, [ 0 x i32 ] }** %index_ptr2694
  %c2695 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2680, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2695
  %_lhs2698 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2695
  %_lhs2697 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2678
  %_lhs2696 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2654
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2696, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2697, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2698 )
  %_lhs2699 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2695
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2699, i32 2 )
  %_lhs2702 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2695
  %_lhs2701 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2678
  %_lhs2700 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2654
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2700, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2701, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2702 )
  %_lhs2703 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2695
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2703, i32 2 )
  ret i32 0
}


