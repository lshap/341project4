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


define i32 @program (i32 %argc1269, { i32, [ 0 x i8* ] }* %argv1267){

__fresh167:
  %argc_slot1270 = alloca i32
  store i32 %argc1269, i32* %argc_slot1270
  %argv_slot1268 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1267, { i32, [ 0 x i8* ] }** %argv_slot1268
  %array_ptr1271 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1272 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1271 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1273 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1274 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1273 to { i32, [ 0 x i32 ] }* 
  %index_ptr1275 = getelementptr { i32, [ 0 x i32 ] }* %array1274, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1275
  %index_ptr1276 = getelementptr { i32, [ 0 x i32 ] }* %array1274, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1276
  %index_ptr1277 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1272, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1274, { i32, [ 0 x i32 ] }** %index_ptr1277
  %array_ptr1278 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1279 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1278 to { i32, [ 0 x i32 ] }* 
  %index_ptr1280 = getelementptr { i32, [ 0 x i32 ] }* %array1279, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1280
  %index_ptr1281 = getelementptr { i32, [ 0 x i32 ] }* %array1279, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1281
  %index_ptr1282 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1272, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1279, { i32, [ 0 x i32 ] }** %index_ptr1282
  %array_ptr1283 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1284 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1283 to { i32, [ 0 x i32 ] }* 
  %index_ptr1285 = getelementptr { i32, [ 0 x i32 ] }* %array1284, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1285
  %index_ptr1286 = getelementptr { i32, [ 0 x i32 ] }* %array1284, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1286
  %index_ptr1287 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1272, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1284, { i32, [ 0 x i32 ] }** %index_ptr1287
  %array_ptr1288 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1289 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1288 to { i32, [ 0 x i32 ] }* 
  %index_ptr1290 = getelementptr { i32, [ 0 x i32 ] }* %array1289, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1290
  %index_ptr1291 = getelementptr { i32, [ 0 x i32 ] }* %array1289, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1291
  %index_ptr1292 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1272, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1289, { i32, [ 0 x i32 ] }** %index_ptr1292
  %arr1293 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1272, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1293
  %index_ptr1294 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1293, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs1296 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1293
  %len_ptr1297 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1296, i32 0, i32 0
  %len1298 = load i32* %len_ptr1297
  %len1299 = alloca i32
  store i32 %len1298, i32* %len1299
  %_lhs1300 = load i32* %len1299
  ret i32 %_lhs1300
}


