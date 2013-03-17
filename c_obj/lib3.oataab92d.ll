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


define i32 @program (i32 %argc1303, { i32, [ 0 x i8* ] }* %argv1301){

__fresh169:
  %argc_slot1304 = alloca i32
  store i32 %argc1303, i32* %argc_slot1304
  %argv_slot1302 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1301, { i32, [ 0 x i8* ] }** %argv_slot1302
  %array_ptr1305 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1306 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1305 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1307 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1308 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1307 to { i32, [ 0 x i32 ] }* 
  %index_ptr1309 = getelementptr { i32, [ 0 x i32 ] }* %array1308, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1309
  %index_ptr1310 = getelementptr { i32, [ 0 x i32 ] }* %array1308, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1310
  %index_ptr1311 = getelementptr { i32, [ 0 x i32 ] }* %array1308, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1311
  %index_ptr1312 = getelementptr { i32, [ 0 x i32 ] }* %array1308, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1312
  %index_ptr1313 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1306, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1308, { i32, [ 0 x i32 ] }** %index_ptr1313
  %array_ptr1314 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1315 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1314 to { i32, [ 0 x i32 ] }* 
  %index_ptr1316 = getelementptr { i32, [ 0 x i32 ] }* %array1315, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1316
  %index_ptr1317 = getelementptr { i32, [ 0 x i32 ] }* %array1315, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1317
  %index_ptr1318 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1306, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1315, { i32, [ 0 x i32 ] }** %index_ptr1318
  %array_ptr1319 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1320 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1319 to { i32, [ 0 x i32 ] }* 
  %index_ptr1321 = getelementptr { i32, [ 0 x i32 ] }* %array1320, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1321
  %index_ptr1322 = getelementptr { i32, [ 0 x i32 ] }* %array1320, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1322
  %index_ptr1323 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1306, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1320, { i32, [ 0 x i32 ] }** %index_ptr1323
  %array_ptr1324 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1325 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1324 to { i32, [ 0 x i32 ] }* 
  %index_ptr1326 = getelementptr { i32, [ 0 x i32 ] }* %array1325, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1326
  %index_ptr1327 = getelementptr { i32, [ 0 x i32 ] }* %array1325, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1327
  %index_ptr1328 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1306, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1325, { i32, [ 0 x i32 ] }** %index_ptr1328
  %arr1329 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1306, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1329
  %index_ptr1330 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1329, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs1332 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1329
  %len_ptr1333 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1332, i32 0, i32 0
  %len1334 = load i32* %len_ptr1333
  %len1335 = alloca i32
  store i32 %len1334, i32* %len1335
  %_lhs1336 = load i32* %len1335
  ret i32 %_lhs1336
}


