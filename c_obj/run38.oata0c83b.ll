declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh110:
  ret void
}


define i32 @program (i32 %argc280, { i32, [ 0 x i8* ] }* %argv278){

__fresh109:
  %argc_slot281 = alloca i32
  store i32 %argc280, i32* %argc_slot281
  %argv_slot279 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv278, { i32, [ 0 x i8* ] }** %argv_slot279
  %ret282 = call i32 @f1 (  )
  ret i32 %ret282
}


define i32 @f9 (){

__fresh108:
  ret i32 31
}


define i32 @f8 (){

__fresh107:
  %ret277 = call i32 @f9 (  )
  ret i32 %ret277
}


define i32 @f7 (){

__fresh106:
  %ret276 = call i32 @f8 (  )
  ret i32 %ret276
}


define i32 @f6 (){

__fresh105:
  %ret275 = call i32 @f7 (  )
  ret i32 %ret275
}


define i32 @f5 (){

__fresh104:
  %ret274 = call i32 @f6 (  )
  ret i32 %ret274
}


define i32 @f4 (){

__fresh103:
  %ret273 = call i32 @f5 (  )
  ret i32 %ret273
}


define i32 @f3 (){

__fresh102:
  %ret272 = call i32 @f4 (  )
  ret i32 %ret272
}


define i32 @f2 (){

__fresh101:
  %ret271 = call i32 @f3 (  )
  ret i32 %ret271
}


define i32 @f1 (){

__fresh100:
  %ret270 = call i32 @f2 (  )
  ret i32 %ret270
}


