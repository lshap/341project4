declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh209:
  ret void
}


define i32 @program (i32 %argc1458, { i32, [ 0 x i8* ] }* %argv1456){

__fresh206:
  %argc_slot1459 = alloca i32
  store i32 %argc1458, i32* %argc_slot1459
  %argv_slot1457 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1456, { i32, [ 0 x i8* ] }** %argv_slot1457
  %i1460 = alloca i32
  store i32 1, i32* %i1460
  br label %__cond205

__cond205:
  %_lhs1461 = load i32* %i1460
  %_lhs1462 = load i32* %argc_slot1459
  %bop1463 = icmp slt i32 %_lhs1461, %_lhs1462
  br i1 %bop1463, label %__body204, label %__post203

__fresh207:
  br label %__body204

__body204:
  %_lhs1464 = load i32* %i1460
  %index_ptr1465 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1457, i32 %_lhs1464
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1464 )
  %_lhs1467 = load { i32, [ 0 x i8* ] }** %argv_slot1457
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs1467 )
  %_lhs1468 = load i32* %i1460
  %bop1469 = add i32 %_lhs1468, 1
  store i32 %bop1469, i32* %i1460
  br label %__cond205

__fresh208:
  br label %__post203

__post203:
  %_lhs1470 = load i32* %argc_slot1459
  ret i32 %_lhs1470
}


