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


define i32 @program (i32 %argc1328, { i32, [ 0 x i8* ] }* %argv1326){

__fresh206:
  %argc_slot1329 = alloca i32
  store i32 %argc1328, i32* %argc_slot1329
  %argv_slot1327 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1326, { i32, [ 0 x i8* ] }** %argv_slot1327
  %i1330 = alloca i32
  store i32 1, i32* %i1330
  br label %__cond205

__cond205:
  %_lhs1331 = load i32* %i1330
  %_lhs1332 = load i32* %argc_slot1329
  %bop1333 = icmp slt i32 %_lhs1331, %_lhs1332
  br i1 %bop1333, label %__body204, label %__post203

__fresh207:
  br label %__body204

__body204:
  %_lhs1334 = load i32* %i1330
  %index_ptr1335 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1327, i32 %_lhs1334
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1334 )
  %_lhs1336 = load { i32, [ 0 x i8* ] }** %argv_slot1327
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs1336 )
  %_lhs1337 = load i32* %i1330
  %bop1338 = add i32 %_lhs1337, 1
  store i32 %bop1338, i32* %i1330
  br label %__cond205

__fresh208:
  br label %__post203

__post203:
  %_lhs1339 = load i32* %argc_slot1329
  ret i32 %_lhs1339
}


