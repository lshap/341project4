declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh111:
  ret void
}


define i32 @program (i32 %argc301, { i32, [ 0 x i8* ] }* %argv299){

__fresh110:
  %argc_slot302 = alloca i32
  store i32 %argc301, i32* %argc_slot302
  %argv_slot300 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv299, { i32, [ 0 x i8* ] }** %argv_slot300
  %_lhs303 = load i32* %argc_slot302
  %ret304 = call i32 @f1 ( i32 %_lhs303 )
  ret i32 %ret304
}


define i32 @f9 (i32 %i296){

__fresh109:
  %i_slot297 = alloca i32
  store i32 %i296, i32* %i_slot297
  %_lhs298 = load i32* %i_slot297
  ret i32 %_lhs298
}


define i32 @f8 (i32 %i292){

__fresh108:
  %i_slot293 = alloca i32
  store i32 %i292, i32* %i_slot293
  %_lhs294 = load i32* %i_slot293
  %ret295 = call i32 @f9 ( i32 %_lhs294 )
  ret i32 %ret295
}


define i32 @f7 (i32 %i288){

__fresh107:
  %i_slot289 = alloca i32
  store i32 %i288, i32* %i_slot289
  %_lhs290 = load i32* %i_slot289
  %ret291 = call i32 @f8 ( i32 %_lhs290 )
  ret i32 %ret291
}


define i32 @f6 (i32 %i284){

__fresh106:
  %i_slot285 = alloca i32
  store i32 %i284, i32* %i_slot285
  %_lhs286 = load i32* %i_slot285
  %ret287 = call i32 @f7 ( i32 %_lhs286 )
  ret i32 %ret287
}


define i32 @f5 (i32 %i280){

__fresh105:
  %i_slot281 = alloca i32
  store i32 %i280, i32* %i_slot281
  %_lhs282 = load i32* %i_slot281
  %ret283 = call i32 @f6 ( i32 %_lhs282 )
  ret i32 %ret283
}


define i32 @f4 (i32 %i276){

__fresh104:
  %i_slot277 = alloca i32
  store i32 %i276, i32* %i_slot277
  %_lhs278 = load i32* %i_slot277
  %ret279 = call i32 @f5 ( i32 %_lhs278 )
  ret i32 %ret279
}


define i32 @f3 (i32 %i272){

__fresh103:
  %i_slot273 = alloca i32
  store i32 %i272, i32* %i_slot273
  %_lhs274 = load i32* %i_slot273
  %ret275 = call i32 @f4 ( i32 %_lhs274 )
  ret i32 %ret275
}


define i32 @f2 (i32 %i268){

__fresh102:
  %i_slot269 = alloca i32
  store i32 %i268, i32* %i_slot269
  %_lhs270 = load i32* %i_slot269
  %ret271 = call i32 @f3 ( i32 %_lhs270 )
  ret i32 %ret271
}


define i32 @f1 (i32 %i264){

__fresh101:
  %i_slot265 = alloca i32
  store i32 %i264, i32* %i_slot265
  %_lhs266 = load i32* %i_slot265
  %ret267 = call i32 @f2 ( i32 %_lhs266 )
  ret i32 %ret267
}


