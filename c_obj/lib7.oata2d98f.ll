declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh200:
  ret void
}


define i32 @program (i32 %argc1289, { i32, [ 0 x i8* ] }* %argv1287){

__fresh197:
  %argc_slot1290 = alloca i32
  store i32 %argc1289, i32* %argc_slot1290
  %argv_slot1288 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1287, { i32, [ 0 x i8* ] }** %argv_slot1288
  %array_ptr1291 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1292 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1291 to { i32, [ 0 x i32 ] }* 
  %index_ptr1293 = getelementptr { i32, [ 0 x i32 ] }* %array1292, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1293
  %index_ptr1294 = getelementptr { i32, [ 0 x i32 ] }* %array1292, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1294
  %index_ptr1295 = getelementptr { i32, [ 0 x i32 ] }* %array1292, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1295
  %index_ptr1296 = getelementptr { i32, [ 0 x i32 ] }* %array1292, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1296
  %index_ptr1297 = getelementptr { i32, [ 0 x i32 ] }* %array1292, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1297
  %arr11298 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1292, { i32, [ 0 x i32 ] }** %arr11298
  %_lhs1299 = load { i32, [ 0 x i32 ] }** %arr11298
  %ret1300 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1299 )
  %str1301 = alloca i8*
  store i8* %ret1300, i8** %str1301
  %_lhs1302 = load i8** %str1301
  %ret1303 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1302 )
  %arr21304 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1303, { i32, [ 0 x i32 ] }** %arr21304
  %s1305 = alloca i32
  store i32 0, i32* %s1305
  %i1306 = alloca i32
  store i32 0, i32* %i1306
  br label %__cond196

__cond196:
  %_lhs1307 = load i32* %i1306
  %bop1308 = icmp slt i32 %_lhs1307, 5
  br i1 %bop1308, label %__body195, label %__post194

__fresh198:
  br label %__body195

__body195:
  %_lhs1309 = load i32* %s1305
  %_lhs1310 = load i32* %i1306
  %index_ptr1311 = getelementptr { i32, [ 0 x i32 ] }** %arr21304, i32 %_lhs1310
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1310 )
  %_lhs1312 = load { i32, [ 0 x i32 ] }** %arr21304
  %bop1313 = add i32 %_lhs1309, %_lhs1312
  store i32 %bop1313, i32* %s1305
  %_lhs1314 = load i32* %i1306
  %bop1315 = add i32 %_lhs1314, 1
  store i32 %bop1315, i32* %i1306
  br label %__cond196

__fresh199:
  br label %__post194

__post194:
  %_lhs1316 = load i32* %s1305
  ret i32 %_lhs1316
}


