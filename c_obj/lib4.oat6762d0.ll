declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1339 = global i8* zeroinitializer, align 4		; initialized by str1339.init
@_oat_string1337.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1337 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1337.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh178:
  call void @str1339.init(  )
  ret void
}


define i32 @program (i32 %argc1343, { i32, [ 0 x i8* ] }* %argv1341){

__fresh175:
  %argc_slot1344 = alloca i32
  store i32 %argc1343, i32* %argc_slot1344
  %argv_slot1342 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1341, { i32, [ 0 x i8* ] }** %argv_slot1342
  %_lhs1345 = load i8** @str1339
  %ret1346 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1345 )
  %arr1347 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1346, { i32, [ 0 x i32 ] }** %arr1347
  %s1348 = alloca i32
  store i32 0, i32* %s1348
  %i1349 = alloca i32
  store i32 0, i32* %i1349
  br label %__cond174

__cond174:
  %_lhs1350 = load i32* %i1349
  %bop1351 = icmp slt i32 %_lhs1350, 5
  br i1 %bop1351, label %__body173, label %__post172

__fresh176:
  br label %__body173

__body173:
  %_lhs1352 = load i32* %s1348
  %_lhs1353 = load i32* %i1349
  %index_ptr1354 = getelementptr { i32, [ 0 x i32 ] }** %arr1347, i32 %_lhs1353
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1353 )
  %_lhs1356 = load { i32, [ 0 x i32 ] }** %arr1347
  %bop1357 = add i32 %_lhs1352, %_lhs1356
  store i32 %bop1357, i32* %s1348
  %_lhs1358 = load i32* %i1349
  %bop1359 = add i32 %_lhs1358, 1
  store i32 %bop1359, i32* %i1349
  br label %__cond174

__fresh177:
  br label %__post172

__post172:
  %_lhs1360 = load i32* %s1348
  ret i32 %_lhs1360
}


define void @str1339.init (){

__fresh171:
  %strval1338 = load i8** @_oat_string1337
  store i8* %strval1338, i8** @str1339
  ret void
}


