declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh170:
  ret void
}


define i32 @program (i32 %argc1178, { i32, [ 0 x i8* ] }* %argv1176){

__fresh169:
  %argc_slot1179 = alloca i32
  store i32 %argc1178, i32* %argc_slot1179
  %argv_slot1177 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1176, { i32, [ 0 x i8* ] }** %argv_slot1177
  %array_ptr1180 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1181 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1180 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1182 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1183 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1182 to { i32, [ 0 x i32 ] }* 
  %index_ptr1184 = getelementptr { i32, [ 0 x i32 ] }* %array1183, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1184
  %index_ptr1185 = getelementptr { i32, [ 0 x i32 ] }* %array1183, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1185
  %index_ptr1186 = getelementptr { i32, [ 0 x i32 ] }* %array1183, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1186
  %index_ptr1187 = getelementptr { i32, [ 0 x i32 ] }* %array1183, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1187
  %index_ptr1188 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1181, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1183, { i32, [ 0 x i32 ] }** %index_ptr1188
  %array_ptr1189 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1190 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1189 to { i32, [ 0 x i32 ] }* 
  %index_ptr1191 = getelementptr { i32, [ 0 x i32 ] }* %array1190, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1191
  %index_ptr1192 = getelementptr { i32, [ 0 x i32 ] }* %array1190, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1192
  %index_ptr1193 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1181, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1190, { i32, [ 0 x i32 ] }** %index_ptr1193
  %array_ptr1194 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1195 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1194 to { i32, [ 0 x i32 ] }* 
  %index_ptr1196 = getelementptr { i32, [ 0 x i32 ] }* %array1195, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1196
  %index_ptr1197 = getelementptr { i32, [ 0 x i32 ] }* %array1195, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1197
  %index_ptr1198 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1181, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1195, { i32, [ 0 x i32 ] }** %index_ptr1198
  %array_ptr1199 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1200 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1199 to { i32, [ 0 x i32 ] }* 
  %index_ptr1201 = getelementptr { i32, [ 0 x i32 ] }* %array1200, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1201
  %index_ptr1202 = getelementptr { i32, [ 0 x i32 ] }* %array1200, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1202
  %index_ptr1203 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1181, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1200, { i32, [ 0 x i32 ] }** %index_ptr1203
  %arr1204 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1181, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1204
  %index_ptr1205 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1204, i32 0
  %_lhs1206 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1204
  %len_ptr1207 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1206, i32 0, i32 0
  %len1208 = load i32* %len_ptr1207
  %len1209 = alloca i32
  store i32 %len1208, i32* %len1209
  %_lhs1210 = load i32* %len1209
  ret i32 %_lhs1210
}


