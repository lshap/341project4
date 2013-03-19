declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh129:
  ret void
}


define i32 @program (i32 %argc348, { i32, [ 0 x i8* ] }* %argv346){

__fresh128:
  %argc_slot349 = alloca i32
  store i32 %argc348, i32* %argc_slot349
  %argv_slot347 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv346, { i32, [ 0 x i8* ] }** %argv_slot347
  %unop352 = sub i32 0, 3
  %unop351 = sub i32 0, 4
  %unop350 = sub i32 0, 5
  %ret353 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop350, i32 %unop351, i32 %unop352 )
  ret i32 %ret353
}


define i32 @f (i32 %x1329, i32 %x2327, i32 %x3325, i32 %x4323, i32 %x5321, i32 %x6319, i32 %x7317, i32 %x8315){

__fresh127:
  %x1_slot330 = alloca i32
  store i32 %x1329, i32* %x1_slot330
  %x2_slot328 = alloca i32
  store i32 %x2327, i32* %x2_slot328
  %x3_slot326 = alloca i32
  store i32 %x3325, i32* %x3_slot326
  %x4_slot324 = alloca i32
  store i32 %x4323, i32* %x4_slot324
  %x5_slot322 = alloca i32
  store i32 %x5321, i32* %x5_slot322
  %x6_slot320 = alloca i32
  store i32 %x6319, i32* %x6_slot320
  %x7_slot318 = alloca i32
  store i32 %x7317, i32* %x7_slot318
  %x8_slot316 = alloca i32
  store i32 %x8315, i32* %x8_slot316
  %_lhs331 = load i32* %x1_slot330
  %_lhs332 = load i32* %x2_slot328
  %bop333 = add i32 %_lhs331, %_lhs332
  %_lhs334 = load i32* %x3_slot326
  %bop335 = add i32 %bop333, %_lhs334
  %_lhs336 = load i32* %x4_slot324
  %bop337 = add i32 %bop335, %_lhs336
  %_lhs338 = load i32* %x5_slot322
  %bop339 = add i32 %bop337, %_lhs338
  %_lhs340 = load i32* %x6_slot320
  %bop341 = add i32 %bop339, %_lhs340
  %_lhs342 = load i32* %x7_slot318
  %bop343 = add i32 %bop341, %_lhs342
  %_lhs344 = load i32* %x8_slot316
  %bop345 = add i32 %bop343, %_lhs344
  ret i32 %bop345
}


