declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1365.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1365 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1365.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh185:
  ret void
}


define i32 @program (i32 %argc1363, { i32, [ 0 x i8* ] }* %argv1361){

__fresh182:
  %argc_slot1364 = alloca i32
  store i32 %argc1363, i32* %argc_slot1364
  %argv_slot1362 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1361, { i32, [ 0 x i8* ] }** %argv_slot1362
  %strval1366 = load i8** @_oat_string1365
  %str1367 = alloca i8*
  store i8* %strval1366, i8** %str1367
  %_lhs1368 = load i8** %str1367
  %ret1369 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1368 )
  %arr1370 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1369, { i32, [ 0 x i32 ] }** %arr1370
  %s1371 = alloca i32
  store i32 0, i32* %s1371
  %i1372 = alloca i32
  store i32 0, i32* %i1372
  br label %__cond181

__cond181:
  %_lhs1373 = load i32* %i1372
  %bop1374 = icmp slt i32 %_lhs1373, 5
  br i1 %bop1374, label %__body180, label %__post179

__fresh183:
  br label %__body180

__body180:
  %_lhs1375 = load i32* %s1371
  %_lhs1376 = load i32* %i1372
  %index_ptr1377 = getelementptr { i32, [ 0 x i32 ] }** %arr1370, i32 %_lhs1376
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1376 )
  %_lhs1379 = load { i32, [ 0 x i32 ] }** %arr1370
  %bop1380 = add i32 %_lhs1375, %_lhs1379
  store i32 %bop1380, i32* %s1371
  %_lhs1381 = load i32* %i1372
  %bop1382 = add i32 %_lhs1381, 1
  store i32 %bop1382, i32* %i1372
  br label %__cond181

__fresh184:
  br label %__post179

__post179:
  %_lhs1383 = load i32* %s1371
  ret i32 %_lhs1383
}


