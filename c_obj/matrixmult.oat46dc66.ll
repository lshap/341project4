declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3089.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3089 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3089.str., i32 0, i32 0), align 4
@_oat_string3085.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3085 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3085.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh1017:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3069, i32 %n3067){

__fresh1012:
  %ar_slot3070 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3069, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3070
  %n_slot3068 = alloca i32
  store i32 %n3067, i32* %n_slot3068
  %i3071 = alloca i32
  store i32 0, i32* %i3071
  br label %__cond1008

__cond1008:
  %_lhs3072 = load i32* %i3071
  %_lhs3073 = load i32* %n_slot3068
  %bop3074 = icmp slt i32 %_lhs3072, %_lhs3073
  br i1 %bop3074, label %__body1007, label %__post1006

__fresh1013:
  br label %__body1007

__body1007:
  %j3075 = alloca i32
  store i32 0, i32* %j3075
  br label %__cond1011

__cond1011:
  %_lhs3076 = load i32* %j3075
  %bop3077 = icmp slt i32 %_lhs3076, 4
  br i1 %bop3077, label %__body1010, label %__post1009

__fresh1014:
  br label %__body1010

__body1010:
  %_lhs3078 = load i32* %j3075
  %_lhs3079 = load i32* %i3071
  %size_ptr3081 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3070, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3081, i32 %_lhs3079 )
  %index_ptr3080 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3070, i32 0, i32 1, i32 %_lhs3079
  %size_ptr3083 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3070, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3083, i32 %_lhs3078 )
  %index_ptr3082 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3070, i32 0, i32 1, i32 %_lhs3078
  %_lhs3084 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3070
  call void @print_int( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3084 )
  %strval3086 = load i8** @_oat_string3085
  call void @print_string( i8* %strval3086 )
  %_lhs3087 = load i32* %j3075
  %bop3088 = add i32 %_lhs3087, 1
  store i32 %bop3088, i32* %j3075
  br label %__cond1011

__fresh1015:
  br label %__post1009

__post1009:
  %strval3090 = load i8** @_oat_string3089
  call void @print_string( i8* %strval3090 )
  %_lhs3091 = load i32* %i3071
  %bop3092 = add i32 %_lhs3091, 1
  store i32 %bop3092, i32* %i3071
  br label %__cond1008

__fresh1016:
  br label %__post1006

__post1006:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13041, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23039, i32 %row3037, i32 %col3035){

__fresh1003:
  %a1_slot3042 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13041, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3042
  %a2_slot3040 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23039, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3040
  %row_slot3038 = alloca i32
  store i32 %row3037, i32* %row_slot3038
  %col_slot3036 = alloca i32
  store i32 %col3035, i32* %col_slot3036
  %sum3043 = alloca i32
  store i32 0, i32* %sum3043
  %k3044 = alloca i32
  store i32 0, i32* %k3044
  br label %__cond1002

__cond1002:
  %_lhs3045 = load i32* %k3044
  %bop3046 = icmp slt i32 %_lhs3045, 3
  br i1 %bop3046, label %__body1001, label %__post1000

__fresh1004:
  br label %__body1001

__body1001:
  %_lhs3047 = load i32* %sum3043
  %_lhs3048 = load i32* %k3044
  %_lhs3049 = load i32* %row_slot3038
  %size_ptr3051 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot3042, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3051, i32 %_lhs3049 )
  %index_ptr3050 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot3042, i32 0, i32 1, i32 %_lhs3049
  %size_ptr3053 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot3042, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3053, i32 %_lhs3048 )
  %index_ptr3052 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot3042, i32 0, i32 1, i32 %_lhs3048
  %_lhs3054 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3042
  %_lhs3055 = load i32* %col_slot3036
  %_lhs3056 = load i32* %k3044
  %size_ptr3058 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot3040, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3058, i32 %_lhs3056 )
  %index_ptr3057 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot3040, i32 0, i32 1, i32 %_lhs3056
  %size_ptr3060 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot3040, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3060, i32 %_lhs3055 )
  %index_ptr3059 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot3040, i32 0, i32 1, i32 %_lhs3055
  %_lhs3061 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3040
  %bop3062 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3054, %_lhs3061
  %bop3063 = add i32 %_lhs3047, %bop3062
  store i32 %bop3063, i32* %sum3043
  %_lhs3064 = load i32* %k3044
  %bop3065 = add i32 %_lhs3064, 1
  store i32 %bop3065, i32* %k3044
  br label %__cond1002

__fresh1005:
  br label %__post1000

__post1000:
  %_lhs3066 = load i32* %sum3043
  ret i32 %_lhs3066
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13012, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23010, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33008){

__fresh995:
  %a1_slot3013 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13012, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3013
  %a2_slot3011 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23010, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3011
  %a3_slot3009 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33008, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3009
  %i3014 = alloca i32
  store i32 0, i32* %i3014
  br label %__cond991

__cond991:
  %_lhs3015 = load i32* %i3014
  %bop3016 = icmp slt i32 %_lhs3015, 2
  br i1 %bop3016, label %__body990, label %__post989

__fresh996:
  br label %__body990

__body990:
  %j3017 = alloca i32
  store i32 0, i32* %j3017
  br label %__cond994

__cond994:
  %_lhs3018 = load i32* %j3017
  %bop3019 = icmp slt i32 %_lhs3018, 4
  br i1 %bop3019, label %__body993, label %__post992

__fresh997:
  br label %__body993

__body993:
  %_lhs3020 = load i32* %j3017
  %_lhs3021 = load i32* %i3014
  %size_ptr3023 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3009, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3023, i32 %_lhs3021 )
  %index_ptr3022 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3009, i32 0, i32 1, i32 %_lhs3021
  %size_ptr3025 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3009, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3025, i32 %_lhs3020 )
  %index_ptr3024 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3009, i32 0, i32 1, i32 %_lhs3020
  %_lhs3029 = load i32* %j3017
  %_lhs3028 = load i32* %i3014
  %_lhs3027 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3011
  %_lhs3026 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3013
  %ret3030 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3026, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3027, i32 %_lhs3028, i32 %_lhs3029 )
  store i32 %ret3030, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3009
  %_lhs3031 = load i32* %j3017
  %bop3032 = add i32 %_lhs3031, 1
  store i32 %bop3032, i32* %j3017
  br label %__cond994

__fresh998:
  br label %__post992

__post992:
  %_lhs3033 = load i32* %i3014
  %bop3034 = add i32 %_lhs3033, 1
  store i32 %bop3034, i32* %i3014
  br label %__cond991

__fresh999:
  br label %__post989

__post989:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12962, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22960, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32958){

__fresh982:
  %a1_slot2963 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12962, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2963
  %a2_slot2961 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22960, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2961
  %a3_slot2959 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32958, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2959
  %i2964 = alloca i32
  store i32 0, i32* %i2964
  br label %__cond975

__cond975:
  %_lhs2965 = load i32* %i2964
  %bop2966 = icmp slt i32 %_lhs2965, 2
  br i1 %bop2966, label %__body974, label %__post973

__fresh983:
  br label %__body974

__body974:
  %j2967 = alloca i32
  store i32 0, i32* %j2967
  br label %__cond978

__cond978:
  %_lhs2968 = load i32* %j2967
  %bop2969 = icmp slt i32 %_lhs2968, 4
  br i1 %bop2969, label %__body977, label %__post976

__fresh984:
  br label %__body977

__body977:
  %k2970 = alloca i32
  store i32 0, i32* %k2970
  br label %__cond981

__cond981:
  %_lhs2971 = load i32* %k2970
  %bop2972 = icmp slt i32 %_lhs2971, 3
  br i1 %bop2972, label %__body980, label %__post979

__fresh985:
  br label %__body980

__body980:
  %_lhs2973 = load i32* %j2967
  %_lhs2974 = load i32* %i2964
  %size_ptr2976 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2959, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2976, i32 %_lhs2974 )
  %index_ptr2975 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2959, i32 0, i32 1, i32 %_lhs2974
  %size_ptr2978 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2959, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2978, i32 %_lhs2973 )
  %index_ptr2977 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2959, i32 0, i32 1, i32 %_lhs2973
  %_lhs2979 = load i32* %j2967
  %_lhs2980 = load i32* %i2964
  %size_ptr2982 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2959, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2982, i32 %_lhs2980 )
  %index_ptr2981 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2959, i32 0, i32 1, i32 %_lhs2980
  %size_ptr2984 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2959, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2984, i32 %_lhs2979 )
  %index_ptr2983 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2959, i32 0, i32 1, i32 %_lhs2979
  %_lhs2985 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2959
  %_lhs2986 = load i32* %k2970
  %_lhs2987 = load i32* %i2964
  %size_ptr2989 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2963, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2989, i32 %_lhs2987 )
  %index_ptr2988 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2963, i32 0, i32 1, i32 %_lhs2987
  %size_ptr2991 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2963, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2991, i32 %_lhs2986 )
  %index_ptr2990 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2963, i32 0, i32 1, i32 %_lhs2986
  %_lhs2992 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2963
  %_lhs2993 = load i32* %j2967
  %_lhs2994 = load i32* %k2970
  %size_ptr2996 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2961, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2996, i32 %_lhs2994 )
  %index_ptr2995 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2961, i32 0, i32 1, i32 %_lhs2994
  %size_ptr2998 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2961, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2998, i32 %_lhs2993 )
  %index_ptr2997 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2961, i32 0, i32 1, i32 %_lhs2993
  %_lhs2999 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2961
  %bop3000 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2992, %_lhs2999
  %bop3001 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2985, %bop3000
  store i32 %bop3001, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2959
  %_lhs3002 = load i32* %k2970
  %bop3003 = add i32 %_lhs3002, 1
  store i32 %bop3003, i32* %k2970
  br label %__cond981

__fresh986:
  br label %__post979

__post979:
  %_lhs3004 = load i32* %j2967
  %bop3005 = add i32 %_lhs3004, 1
  store i32 %bop3005, i32* %j2967
  br label %__cond978

__fresh987:
  br label %__post976

__post976:
  %_lhs3006 = load i32* %i2964
  %bop3007 = add i32 %_lhs3006, 1
  store i32 %bop3007, i32* %i2964
  br label %__cond975

__fresh988:
  br label %__post973

__post973:
  ret void
}


define i32 @program (i32 %argc2892, { i32, [ 0 x i8* ] }* %argv2890){

__fresh972:
  %argc_slot2893 = alloca i32
  store i32 %argc2892, i32* %argc_slot2893
  %argv_slot2891 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2890, { i32, [ 0 x i8* ] }** %argv_slot2891
  %array_ptr2894 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2895 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2894 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2896 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2897 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2896 to { i32, [ 0 x i32 ] }* 
  %index_ptr2898 = getelementptr { i32, [ 0 x i32 ] }* %array2897, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2898
  %index_ptr2899 = getelementptr { i32, [ 0 x i32 ] }* %array2897, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr2899
  %index_ptr2900 = getelementptr { i32, [ 0 x i32 ] }* %array2897, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr2900
  %index_ptr2901 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2895, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2897, { i32, [ 0 x i32 ] }** %index_ptr2901
  %array_ptr2902 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2903 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2902 to { i32, [ 0 x i32 ] }* 
  %index_ptr2904 = getelementptr { i32, [ 0 x i32 ] }* %array2903, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2904
  %index_ptr2905 = getelementptr { i32, [ 0 x i32 ] }* %array2903, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2905
  %index_ptr2906 = getelementptr { i32, [ 0 x i32 ] }* %array2903, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2906
  %index_ptr2907 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2895, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2903, { i32, [ 0 x i32 ] }** %index_ptr2907
  %a2908 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2895, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2908
  %array_ptr2909 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2910 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2909 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2911 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2912 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2911 to { i32, [ 0 x i32 ] }* 
  %index_ptr2913 = getelementptr { i32, [ 0 x i32 ] }* %array2912, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2913
  %index_ptr2914 = getelementptr { i32, [ 0 x i32 ] }* %array2912, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2914
  %index_ptr2915 = getelementptr { i32, [ 0 x i32 ] }* %array2912, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr2915
  %index_ptr2916 = getelementptr { i32, [ 0 x i32 ] }* %array2912, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr2916
  %index_ptr2917 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2910, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2912, { i32, [ 0 x i32 ] }** %index_ptr2917
  %array_ptr2918 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2919 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2918 to { i32, [ 0 x i32 ] }* 
  %index_ptr2920 = getelementptr { i32, [ 0 x i32 ] }* %array2919, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2920
  %index_ptr2921 = getelementptr { i32, [ 0 x i32 ] }* %array2919, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2921
  %index_ptr2922 = getelementptr { i32, [ 0 x i32 ] }* %array2919, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr2922
  %index_ptr2923 = getelementptr { i32, [ 0 x i32 ] }* %array2919, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr2923
  %index_ptr2924 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2910, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2919, { i32, [ 0 x i32 ] }** %index_ptr2924
  %array_ptr2925 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2926 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2925 to { i32, [ 0 x i32 ] }* 
  %index_ptr2927 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2927
  %index_ptr2928 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2928
  %index_ptr2929 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2929
  %index_ptr2930 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr2930
  %index_ptr2931 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2910, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array2926, { i32, [ 0 x i32 ] }** %index_ptr2931
  %b2932 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2910, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2932
  %array_ptr2933 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2934 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2933 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2935 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2936 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2935 to { i32, [ 0 x i32 ] }* 
  %index_ptr2937 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2937
  %index_ptr2938 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2938
  %index_ptr2939 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2939
  %index_ptr2940 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2940
  %index_ptr2941 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2934, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2936, { i32, [ 0 x i32 ] }** %index_ptr2941
  %array_ptr2942 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2943 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2942 to { i32, [ 0 x i32 ] }* 
  %index_ptr2944 = getelementptr { i32, [ 0 x i32 ] }* %array2943, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2944
  %index_ptr2945 = getelementptr { i32, [ 0 x i32 ] }* %array2943, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2945
  %index_ptr2946 = getelementptr { i32, [ 0 x i32 ] }* %array2943, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2946
  %index_ptr2947 = getelementptr { i32, [ 0 x i32 ] }* %array2943, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2947
  %index_ptr2948 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2934, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2943, { i32, [ 0 x i32 ] }** %index_ptr2948
  %c2949 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2934, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2949
  %_lhs2952 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2949
  %_lhs2951 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2932
  %_lhs2950 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2908
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2950, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2951, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2952 )
  %_lhs2953 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2949
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2953, i32 2 )
  %_lhs2956 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2949
  %_lhs2955 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2932
  %_lhs2954 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2908
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2954, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2955, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2956 )
  %_lhs2957 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2949
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2957, i32 2 )
  ret i32 0
}


