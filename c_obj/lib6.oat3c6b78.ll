declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11264 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11264.init
define void @oat_init (){

__fresh193:
  call void @arr11264.init(  )
  ret void
}


define i32 @program (i32 %argc1267, { i32, [ 0 x i8* ] }* %argv1265){

__fresh190:
  %argc_slot1268 = alloca i32
  store i32 %argc1267, i32* %argc_slot1268
  %argv_slot1266 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1265, { i32, [ 0 x i8* ] }** %argv_slot1266
  %_lhs1269 = load { i32, [ 0 x i32 ] }** @arr11264
  %ret1270 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1269 )
  %str1271 = alloca i8*
  store i8* %ret1270, i8** %str1271
  %_lhs1272 = load i8** %str1271
  %ret1273 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1272 )
  %arr21274 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1273, { i32, [ 0 x i32 ] }** %arr21274
  %s1275 = alloca i32
  store i32 0, i32* %s1275
  %i1276 = alloca i32
  store i32 0, i32* %i1276
  br label %__cond189

__cond189:
  %_lhs1277 = load i32* %i1276
  %bop1278 = icmp slt i32 %_lhs1277, 5
  br i1 %bop1278, label %__body188, label %__post187

__fresh191:
  br label %__body188

__body188:
  %_lhs1279 = load i32* %s1275
  %index_ptr1281 = getelementptr { i32, [ 0 x i32 ] }** %arr21274, i32 %_lhs1280
  %_lhs1280 = load i32* %i1276
  %_lhs1282 = load { i32, [ 0 x i32 ] }** %arr21274
  %bop1283 = add i32 %_lhs1279, %_lhs1282
  store i32 %bop1283, i32* %s1275
  %_lhs1284 = load i32* %i1276
  %bop1285 = add i32 %_lhs1284, 1
  store i32 %bop1285, i32* %i1276
  br label %__cond189

__fresh192:
  br label %__post187

__post187:
  %_lhs1286 = load i32* %s1275
  ret i32 %_lhs1286
}


define void @arr11264.init (){

__fresh186:
  %array_ptr1257 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1258 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1257 to { i32, [ 0 x i32 ] }* 
  %index_ptr1259 = getelementptr { i32, [ 0 x i32 ] }* %array1258, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1259
  %index_ptr1260 = getelementptr { i32, [ 0 x i32 ] }* %array1258, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1260
  %index_ptr1261 = getelementptr { i32, [ 0 x i32 ] }* %array1258, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1261
  %index_ptr1262 = getelementptr { i32, [ 0 x i32 ] }* %array1258, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1262
  %index_ptr1263 = getelementptr { i32, [ 0 x i32 ] }* %array1258, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1263
  store { i32, [ 0 x i32 ] }* %array1258, { i32, [ 0 x i32 ] }** @arr11264
  ret void
}


