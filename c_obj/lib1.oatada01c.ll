declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh166:
  ret void
}


define i32 @program (i32 %argc1130, { i32, [ 0 x i8* ] }* %argv1128){

__fresh165:
  %argc_slot1131 = alloca i32
  store i32 %argc1130, i32* %argc_slot1131
  %argv_slot1129 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1128, { i32, [ 0 x i8* ] }** %argv_slot1129
  %array_ptr1132 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1133 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1132 to { i32, [ 0 x i32 ] }* 
  %index_ptr1134 = getelementptr { i32, [ 0 x i32 ] }* %array1133, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1134
  %index_ptr1135 = getelementptr { i32, [ 0 x i32 ] }* %array1133, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1135
  %index_ptr1136 = getelementptr { i32, [ 0 x i32 ] }* %array1133, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1136
  %arr1137 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1133, { i32, [ 0 x i32 ] }** %arr1137
  %_lhs1138 = load { i32, [ 0 x i32 ] }** %arr1137
  %len_ptr1139 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1138, i32 0, i32 0
  %len1140 = load i32* %len_ptr1139
  %len1141 = alloca i32
  store i32 %len1140, i32* %len1141
  %_lhs1142 = load i32* %len1141
  ret i32 %_lhs1142
}


