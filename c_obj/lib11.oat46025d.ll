declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1358.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1358 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1358.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh224:
  ret void
}


define i32 @program (i32 %argc1356, { i32, [ 0 x i8* ] }* %argv1354){

__fresh219:
  %argc_slot1357 = alloca i32
  store i32 %argc1356, i32* %argc_slot1357
  %argv_slot1355 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1354, { i32, [ 0 x i8* ] }** %argv_slot1355
  %strval1359 = load i8** @_oat_string1358
  %ret1360 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1359 )
  %arr1361 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1360, { i32, [ 0 x i32 ] }** %arr1361
  %sum1362 = alloca i32
  store i32 0, i32* %sum1362
  %i1363 = alloca i32
  store i32 0, i32* %i1363
  br label %__cond215

__cond215:
  %_lhs1364 = load i32* %i1363
  %bop1365 = icmp slt i32 %_lhs1364, 10
  br i1 %bop1365, label %__body214, label %__post213

__fresh220:
  br label %__body214

__body214:
  %index_ptr1367 = getelementptr { i32, [ 0 x i32 ] }** %arr1361, i32 %_lhs1366
  %_lhs1366 = load i32* %i1363
  %_lhs1368 = load i32* %i1363
  store i32 %_lhs1368, { i32, [ 0 x i32 ] }** %arr1361
  %_lhs1369 = load i32* %i1363
  %bop1370 = add i32 %_lhs1369, 1
  store i32 %bop1370, i32* %i1363
  br label %__cond215

__fresh221:
  br label %__post213

__post213:
  %i1371 = alloca i32
  store i32 0, i32* %i1371
  br label %__cond218

__cond218:
  %_lhs1372 = load i32* %i1371
  %bop1373 = icmp slt i32 %_lhs1372, 10
  br i1 %bop1373, label %__body217, label %__post216

__fresh222:
  br label %__body217

__body217:
  %_lhs1374 = load i32* %sum1362
  %index_ptr1376 = getelementptr { i32, [ 0 x i32 ] }** %arr1361, i32 %_lhs1375
  %_lhs1375 = load i32* %i1371
  %_lhs1377 = load { i32, [ 0 x i32 ] }** %arr1361
  %bop1378 = add i32 %_lhs1374, %_lhs1377
  store i32 %bop1378, i32* %sum1362
  %_lhs1379 = load i32* %i1371
  %bop1380 = add i32 %_lhs1379, 1
  store i32 %bop1380, i32* %i1371
  br label %__cond218

__fresh223:
  br label %__post216

__post216:
  %_lhs1381 = load i32* %sum1362
  ret i32 %_lhs1381
}


