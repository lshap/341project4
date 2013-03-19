declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh114:
  ret void
}


define i32 @program (i32 %argc320, { i32, [ 0 x i8* ] }* %argv318){

__fresh113:
  %argc_slot321 = alloca i32
  store i32 %argc320, i32* %argc_slot321
  %argv_slot319 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv318, { i32, [ 0 x i8* ] }** %argv_slot319
  %_lhs322 = load i32* %argc_slot321
  %ret323 = call i32 @f1 ( i32 %_lhs322 )
  ret i32 %ret323
}


define i32 @f9 (i32 %i315){

__fresh112:
  %i_slot316 = alloca i32
  store i32 %i315, i32* %i_slot316
  %_lhs317 = load i32* %i_slot316
  ret i32 %_lhs317
}


define i32 @f8 (i32 %i311){

__fresh111:
  %i_slot312 = alloca i32
  store i32 %i311, i32* %i_slot312
  %_lhs313 = load i32* %i_slot312
  %ret314 = call i32 @f9 ( i32 %_lhs313 )
  ret i32 %ret314
}


define i32 @f7 (i32 %i307){

__fresh110:
  %i_slot308 = alloca i32
  store i32 %i307, i32* %i_slot308
  %_lhs309 = load i32* %i_slot308
  %ret310 = call i32 @f8 ( i32 %_lhs309 )
  ret i32 %ret310
}


define i32 @f6 (i32 %i303){

__fresh109:
  %i_slot304 = alloca i32
  store i32 %i303, i32* %i_slot304
  %_lhs305 = load i32* %i_slot304
  %ret306 = call i32 @f7 ( i32 %_lhs305 )
  ret i32 %ret306
}


define i32 @f5 (i32 %i299){

__fresh108:
  %i_slot300 = alloca i32
  store i32 %i299, i32* %i_slot300
  %_lhs301 = load i32* %i_slot300
  %ret302 = call i32 @f6 ( i32 %_lhs301 )
  ret i32 %ret302
}


define i32 @f4 (i32 %i295){

__fresh107:
  %i_slot296 = alloca i32
  store i32 %i295, i32* %i_slot296
  %_lhs297 = load i32* %i_slot296
  %ret298 = call i32 @f5 ( i32 %_lhs297 )
  ret i32 %ret298
}


define i32 @f3 (i32 %i291){

__fresh106:
  %i_slot292 = alloca i32
  store i32 %i291, i32* %i_slot292
  %_lhs293 = load i32* %i_slot292
  %ret294 = call i32 @f4 ( i32 %_lhs293 )
  ret i32 %ret294
}


define i32 @f2 (i32 %i287){

__fresh105:
  %i_slot288 = alloca i32
  store i32 %i287, i32* %i_slot288
  %_lhs289 = load i32* %i_slot288
  %ret290 = call i32 @f3 ( i32 %_lhs289 )
  ret i32 %ret290
}


define i32 @f1 (i32 %i283){

__fresh104:
  %i_slot284 = alloca i32
  store i32 %i283, i32* %i_slot284
  %_lhs285 = load i32* %i_slot284
  %ret286 = call i32 @f2 ( i32 %_lhs285 )
  ret i32 %ret286
}


