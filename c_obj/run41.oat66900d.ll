declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh130:
  ret void
}


define i32 @program (i32 %argc357, { i32, [ 0 x i8* ] }* %argv355){

__fresh129:
  %argc_slot358 = alloca i32
  store i32 %argc357, i32* %argc_slot358
  %argv_slot356 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv355, { i32, [ 0 x i8* ] }** %argv_slot356
  %unop361 = sub i32 0, 3
  %unop360 = sub i32 0, 4
  %unop359 = sub i32 0, 5
  %ret362 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop359, i32 %unop360, i32 %unop361 )
  ret i32 %ret362
}


define i32 @f (i32 %x1338, i32 %x2336, i32 %x3334, i32 %x4332, i32 %x5330, i32 %x6328, i32 %x7326, i32 %x8324){

__fresh128:
  %x1_slot339 = alloca i32
  store i32 %x1338, i32* %x1_slot339
  %x2_slot337 = alloca i32
  store i32 %x2336, i32* %x2_slot337
  %x3_slot335 = alloca i32
  store i32 %x3334, i32* %x3_slot335
  %x4_slot333 = alloca i32
  store i32 %x4332, i32* %x4_slot333
  %x5_slot331 = alloca i32
  store i32 %x5330, i32* %x5_slot331
  %x6_slot329 = alloca i32
  store i32 %x6328, i32* %x6_slot329
  %x7_slot327 = alloca i32
  store i32 %x7326, i32* %x7_slot327
  %x8_slot325 = alloca i32
  store i32 %x8324, i32* %x8_slot325
  %_lhs340 = load i32* %x1_slot339
  %_lhs341 = load i32* %x2_slot337
  %bop342 = add i32 %_lhs340, %_lhs341
  %_lhs343 = load i32* %x3_slot335
  %bop344 = add i32 %bop342, %_lhs343
  %_lhs345 = load i32* %x4_slot333
  %bop346 = add i32 %bop344, %_lhs345
  %_lhs347 = load i32* %x5_slot331
  %bop348 = add i32 %bop346, %_lhs347
  %_lhs349 = load i32* %x6_slot329
  %bop350 = add i32 %bop348, %_lhs349
  %_lhs351 = load i32* %x7_slot327
  %bop352 = add i32 %bop350, %_lhs351
  %_lhs353 = load i32* %x8_slot325
  %bop354 = add i32 %bop352, %_lhs353
  ret i32 %bop354
}


