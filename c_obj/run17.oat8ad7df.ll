declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1072:
  ret void
}


define i32 @program (i32 %argc3153, { i32, [ 0 x i8* ] }* %argv3151){

__fresh1065:
  %argc_slot3154 = alloca i32
  store i32 %argc3153, i32* %argc_slot3154
  %argv_slot3152 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3151, { i32, [ 0 x i8* ] }** %argv_slot3152
  %x3155 = alloca i32
  store i32 10, i32* %x3155
  %array_ptr3156 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3157 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3156 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr3159
  br label %__compare1062

__fresh1066:
  br label %__compare1062

__compare1062:
  %comparison_result3160 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr3159, 3
  br i1 %comparison_result3160, label %__body1063, label %__end1064

__fresh1067:
  br label %__body1063

__body1063:
  store { i32, [ 0 x i32 ] }** %index_ptr3159, i32* %i3161
  %array_ptr3162 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3163 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3162 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr3165
  br label %__compare1059

__fresh1068:
  br label %__compare1059

__compare1059:
  %comparison_result3166 = icmp slt i32* %index_ptr3165, 3
  br i1 %comparison_result3166, label %__body1060, label %__end1061

__fresh1069:
  br label %__body1060

__body1060:
  store i32* %index_ptr3165, i32* %j3167
  %_lhs3168 = load i32* %x3155
  %_lhs3169 = load i32* %i3161
  %bop3170 = add i32 %_lhs3168, %_lhs3169
  %_lhs3171 = load i32* %j3167
  %bop3172 = add i32 %bop3170, %_lhs3171
  %index_ptr3165 = add i32* %index_ptr3165, 1
  br label %__compare1059

__fresh1070:
  br label %__end1061

__end1061:
  %index_ptr3159 = add { i32, [ 0 x i32 ] }** %index_ptr3159, 1
  br label %__compare1062

__fresh1071:
  br label %__end1064

__end1064:
  %a3173 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3157, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3173
  %_lhs3174 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3173
  %b3175 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3174, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3175
  %size_ptr3177 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3175, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3177, i32 2 )
  %index_ptr3176 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3175, i32 0, i32 1, i32 2
  %size_ptr3179 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3175, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3179, i32 3 )
  %index_ptr3178 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3175, i32 0, i32 1, i32 3
  %_lhs3180 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3175
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3180
}


