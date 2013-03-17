declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh235:
  ret void
}


define i32 @program (i32 %argc1424, { i32, [ 0 x i8* ] }* %argv1422){

__fresh234:
  %argc_slot1425 = alloca i32
  store i32 %argc1424, i32* %argc_slot1425
  %argv_slot1423 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1422, { i32, [ 0 x i8* ] }** %argv_slot1423
  %ret1426 = call i32 @f ( i32 5 )
  ret i32 %ret1426
}


define i32 @f (i32 %i1411){

__fresh231:
  %i_slot1412 = alloca i32
  store i32 %i1411, i32* %i_slot1412
  %r1413 = alloca i32
  store i32 0, i32* %r1413
  %_lhs1414 = load i32* %i_slot1412
  %bop1415 = icmp eq i32 %_lhs1414, 0
  br i1 %bop1415, label %__then230, label %__else229

__fresh232:
  br label %__then230

__then230:
  store i32 1, i32* %r1413
  br label %__merge228

__fresh233:
  br label %__else229

__else229:
  %_lhs1416 = load i32* %i_slot1412
  %_lhs1417 = load i32* %i_slot1412
  %bop1418 = sub i32 %_lhs1417, 1
  %ret1419 = call i32 @f ( i32 %bop1418 )
  %bop1420 = mul i32 %_lhs1416, %ret1419
  store i32 %bop1420, i32* %r1413
  br label %__merge228

__merge228:
  %_lhs1421 = load i32* %r1413
  ret i32 %_lhs1421
}


