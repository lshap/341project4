declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh148:
  ret void
}


define i32 @program (i32 %argc367, { i32, [ 0 x i8* ] }* %argv365){

__fresh147:
  %argc_slot368 = alloca i32
  store i32 %argc367, i32* %argc_slot368
  %argv_slot366 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv365, { i32, [ 0 x i8* ] }** %argv_slot366
  %unop371 = sub i32 0, 3
  %unop370 = sub i32 0, 4
  %unop369 = sub i32 0, 5
  %ret372 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop369, i32 %unop370, i32 %unop371 )
  ret i32 %ret372
}


define i32 @f (i32 %x1348, i32 %x2346, i32 %x3344, i32 %x4342, i32 %x5340, i32 %x6338, i32 %x7336, i32 %x8334){

__fresh146:
  %x1_slot349 = alloca i32
  store i32 %x1348, i32* %x1_slot349
  %x2_slot347 = alloca i32
  store i32 %x2346, i32* %x2_slot347
  %x3_slot345 = alloca i32
  store i32 %x3344, i32* %x3_slot345
  %x4_slot343 = alloca i32
  store i32 %x4342, i32* %x4_slot343
  %x5_slot341 = alloca i32
  store i32 %x5340, i32* %x5_slot341
  %x6_slot339 = alloca i32
  store i32 %x6338, i32* %x6_slot339
  %x7_slot337 = alloca i32
  store i32 %x7336, i32* %x7_slot337
  %x8_slot335 = alloca i32
  store i32 %x8334, i32* %x8_slot335
  %_lhs350 = load i32* %x1_slot349
  %_lhs351 = load i32* %x2_slot347
  %bop352 = add i32 %_lhs350, %_lhs351
  %_lhs353 = load i32* %x3_slot345
  %bop354 = add i32 %bop352, %_lhs353
  %_lhs355 = load i32* %x4_slot343
  %bop356 = add i32 %bop354, %_lhs355
  %_lhs357 = load i32* %x5_slot341
  %bop358 = add i32 %bop356, %_lhs357
  %_lhs359 = load i32* %x6_slot339
  %bop360 = add i32 %bop358, %_lhs359
  %_lhs361 = load i32* %x7_slot337
  %bop362 = add i32 %bop360, %_lhs361
  %_lhs363 = load i32* %x8_slot335
  %bop364 = add i32 %bop362, %_lhs363
  ret i32 %bop364
}


