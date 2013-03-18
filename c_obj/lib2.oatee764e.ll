declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh168:
  ret void
}


define i32 @program (i32 %argc1145, { i32, [ 0 x i8* ] }* %argv1143){

__fresh167:
  %argc_slot1146 = alloca i32
  store i32 %argc1145, i32* %argc_slot1146
  %argv_slot1144 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1143, { i32, [ 0 x i8* ] }** %argv_slot1144
  %array_ptr1147 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1148 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1147 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1149 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1150 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1149 to { i32, [ 0 x i32 ] }* 
  %index_ptr1151 = getelementptr { i32, [ 0 x i32 ] }* %array1150, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1151
  %index_ptr1152 = getelementptr { i32, [ 0 x i32 ] }* %array1150, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1152
  %index_ptr1153 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1148, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1150, { i32, [ 0 x i32 ] }** %index_ptr1153
  %array_ptr1154 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1155 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1154 to { i32, [ 0 x i32 ] }* 
  %index_ptr1156 = getelementptr { i32, [ 0 x i32 ] }* %array1155, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1156
  %index_ptr1157 = getelementptr { i32, [ 0 x i32 ] }* %array1155, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1157
  %index_ptr1158 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1148, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1155, { i32, [ 0 x i32 ] }** %index_ptr1158
  %array_ptr1159 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1160 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1159 to { i32, [ 0 x i32 ] }* 
  %index_ptr1161 = getelementptr { i32, [ 0 x i32 ] }* %array1160, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1161
  %index_ptr1162 = getelementptr { i32, [ 0 x i32 ] }* %array1160, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1162
  %index_ptr1163 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1148, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1160, { i32, [ 0 x i32 ] }** %index_ptr1163
  %array_ptr1164 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1165 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1164 to { i32, [ 0 x i32 ] }* 
  %index_ptr1166 = getelementptr { i32, [ 0 x i32 ] }* %array1165, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1166
  %index_ptr1167 = getelementptr { i32, [ 0 x i32 ] }* %array1165, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1167
  %index_ptr1168 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1148, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1165, { i32, [ 0 x i32 ] }** %index_ptr1168
  %arr1169 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1148, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1169
  %index_ptr1170 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1169, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs1171 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1169
  %len_ptr1172 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1171, i32 0, i32 0
  %len1173 = load i32* %len_ptr1172
  %len1174 = alloca i32
  store i32 %len1173, i32* %len1174
  %_lhs1175 = load i32* %len1174
  ret i32 %_lhs1175
}


