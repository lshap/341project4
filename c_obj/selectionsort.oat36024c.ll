declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1177:
  ret void
}


define i32 @program (i32 %argc2867, { i32, [ 0 x i8* ] }* %argv2865){

__fresh1174:
  %argc_slot2868 = alloca i32
  store i32 %argc2867, i32* %argc_slot2868
  %argv_slot2866 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2865, { i32, [ 0 x i8* ] }** %argv_slot2866
  %array_ptr2869 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2870 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2869 to { i32, [ 0 x i32 ] }* 
  %index_ptr2871 = getelementptr { i32, [ 0 x i32 ] }* %array2870, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2871
  %index_ptr2872 = getelementptr { i32, [ 0 x i32 ] }* %array2870, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2872
  %index_ptr2873 = getelementptr { i32, [ 0 x i32 ] }* %array2870, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2873
  %index_ptr2874 = getelementptr { i32, [ 0 x i32 ] }* %array2870, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2874
  %index_ptr2875 = getelementptr { i32, [ 0 x i32 ] }* %array2870, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2875
  %index_ptr2876 = getelementptr { i32, [ 0 x i32 ] }* %array2870, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2876
  %index_ptr2877 = getelementptr { i32, [ 0 x i32 ] }* %array2870, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2877
  %index_ptr2878 = getelementptr { i32, [ 0 x i32 ] }* %array2870, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2878
  %ar2879 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2870, { i32, [ 0 x i32 ] }** %ar2879
  %_lhs2880 = load { i32, [ 0 x i32 ] }** %ar2879
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2880, i32 8 )
  %i2881 = alloca i32
  store i32 0, i32* %i2881
  br label %__cond1173

__cond1173:
  %_lhs2882 = load i32* %i2881
  %bop2883 = icmp slt i32 %_lhs2882, 8
  br i1 %bop2883, label %__body1172, label %__post1171

__fresh1175:
  br label %__body1172

__body1172:
  %_lhs2884 = load i32* %i2881
  %size_ptr2886 = getelementptr { i32, [ 0 x i32 ] }* %ar2879, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2886, i32 %_lhs2884 )
  %index_ptr2885 = getelementptr { i32, [ 0 x i32 ] }* %ar2879, i32 0, i32 1, i32 %_lhs2884
  %_lhs2887 = load { i32, [ 0 x i32 ] }** %ar2879
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2887 )
  %_lhs2888 = load i32* %i2881
  %bop2889 = add i32 %_lhs2888, 1
  store i32 %bop2889, i32* %i2881
  br label %__cond1173

__fresh1176:
  br label %__post1171

__post1171:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2836, i32 %s2834){

__fresh1168:
  %a_slot2837 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2836, { i32, [ 0 x i32 ] }** %a_slot2837
  %s_slot2835 = alloca i32
  store i32 %s2834, i32* %s_slot2835
  %t2838 = alloca i32
  store i32 0, i32* %t2838
  %mi2839 = alloca i32
  store i32 0, i32* %mi2839
  %i2840 = alloca i32
  store i32 0, i32* %i2840
  br label %__cond1167

__cond1167:
  %_lhs2841 = load i32* %i2840
  %_lhs2842 = load i32* %s_slot2835
  %bop2843 = icmp slt i32 %_lhs2841, %_lhs2842
  br i1 %bop2843, label %__body1166, label %__post1165

__fresh1169:
  br label %__body1166

__body1166:
  %_lhs2846 = load i32* %s_slot2835
  %_lhs2845 = load i32* %i2840
  %_lhs2844 = load { i32, [ 0 x i32 ] }** %a_slot2837
  %ret2847 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2844, i32 %_lhs2845, i32 %_lhs2846 )
  store i32 %ret2847, i32* %mi2839
  %_lhs2848 = load i32* %i2840
  %size_ptr2850 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2837, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2850, i32 %_lhs2848 )
  %index_ptr2849 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2837, i32 0, i32 1, i32 %_lhs2848
  %_lhs2851 = load { i32, [ 0 x i32 ] }** %a_slot2837
  store { i32, [ 0 x i32 ] }* %_lhs2851, i32* %t2838
  %_lhs2852 = load i32* %i2840
  %size_ptr2854 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2837, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2854, i32 %_lhs2852 )
  %index_ptr2853 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2837, i32 0, i32 1, i32 %_lhs2852
  %_lhs2855 = load i32* %mi2839
  %size_ptr2857 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2837, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2857, i32 %_lhs2855 )
  %index_ptr2856 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2837, i32 0, i32 1, i32 %_lhs2855
  %_lhs2858 = load { i32, [ 0 x i32 ] }** %a_slot2837
  store { i32, [ 0 x i32 ] }* %_lhs2858, { i32, [ 0 x i32 ] }** %a_slot2837
  %_lhs2859 = load i32* %mi2839
  %size_ptr2861 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2837, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2861, i32 %_lhs2859 )
  %index_ptr2860 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2837, i32 0, i32 1, i32 %_lhs2859
  %_lhs2862 = load i32* %t2838
  store i32 %_lhs2862, { i32, [ 0 x i32 ] }** %a_slot2837
  %_lhs2863 = load i32* %i2840
  %bop2864 = add i32 %_lhs2863, 1
  store i32 %bop2864, i32* %i2840
  br label %__cond1167

__fresh1170:
  br label %__post1165

__post1165:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2806, i32 %s2804, i32 %b2802){

__fresh1160:
  %a_slot2807 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2806, { i32, [ 0 x i32 ] }** %a_slot2807
  %s_slot2805 = alloca i32
  store i32 %s2804, i32* %s_slot2805
  %b_slot2803 = alloca i32
  store i32 %b2802, i32* %b_slot2803
  %_lhs2808 = load i32* %s_slot2805
  %i2809 = alloca i32
  store i32 %_lhs2808, i32* %i2809
  %_lhs2810 = load i32* %s_slot2805
  %size_ptr2812 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2807, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2812, i32 %_lhs2810 )
  %index_ptr2811 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2807, i32 0, i32 1, i32 %_lhs2810
  %_lhs2813 = load { i32, [ 0 x i32 ] }** %a_slot2807
  %min2814 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2813, i32* %min2814
  %_lhs2815 = load i32* %s_slot2805
  %mi2816 = alloca i32
  store i32 %_lhs2815, i32* %mi2816
  br label %__cond1156

__cond1156:
  %_lhs2817 = load i32* %i2809
  %_lhs2818 = load i32* %b_slot2803
  %bop2819 = icmp slt i32 %_lhs2817, %_lhs2818
  br i1 %bop2819, label %__body1155, label %__post1154

__fresh1161:
  br label %__body1155

__body1155:
  %_lhs2820 = load i32* %i2809
  %size_ptr2822 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2807, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2822, i32 %_lhs2820 )
  %index_ptr2821 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2807, i32 0, i32 1, i32 %_lhs2820
  %_lhs2823 = load { i32, [ 0 x i32 ] }** %a_slot2807
  %_lhs2824 = load i32* %min2814
  %bop2825 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2823, %_lhs2824
  br i1 %bop2825, label %__then1159, label %__else1158

__fresh1162:
  br label %__then1159

__then1159:
  %_lhs2826 = load i32* %i2809
  %size_ptr2828 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2807, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2828, i32 %_lhs2826 )
  %index_ptr2827 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2807, i32 0, i32 1, i32 %_lhs2826
  %_lhs2829 = load { i32, [ 0 x i32 ] }** %a_slot2807
  store { i32, [ 0 x i32 ] }* %_lhs2829, i32* %min2814
  %_lhs2830 = load i32* %i2809
  store i32 %_lhs2830, i32* %mi2816
  br label %__merge1157

__fresh1163:
  br label %__else1158

__else1158:
  br label %__merge1157

__merge1157:
  %_lhs2831 = load i32* %i2809
  %bop2832 = add i32 %_lhs2831, 1
  store i32 %bop2832, i32* %i2809
  br label %__cond1156

__fresh1164:
  br label %__post1154

__post1154:
  %_lhs2833 = load i32* %mi2816
  ret i32 %_lhs2833
}


