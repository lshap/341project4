declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a244 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by a244.init
define void @oat_init (){

__fresh68:
  call void @a244.init(  )
  ret void
}


define i32 @program (i32 %argc247, { i32, [ 0 x i8* ] }* %argv245){

__fresh63:
  %argc_slot248 = alloca i32
  store i32 %argc247, i32* %argc_slot248
  %argv_slot246 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv245, { i32, [ 0 x i8* ] }** %argv_slot246
  %s249 = alloca i32
  store i32 0, i32* %s249
  %i250 = alloca i32
  store i32 0, i32* %i250
  br label %__cond59

__cond59:
  %_lhs251 = load i32* %i250
  %bop252 = icmp slt i32 %_lhs251, 3
  br i1 %bop252, label %__body58, label %__post57

__fresh64:
  br label %__body58

__body58:
  %j253 = alloca i32
  store i32 0, i32* %j253
  br label %__cond62

__cond62:
  %_lhs254 = load i32* %j253
  %bop255 = icmp slt i32 %_lhs254, 4
  br i1 %bop255, label %__body61, label %__post60

__fresh65:
  br label %__body61

__body61:
  %_lhs256 = load i32* %s249
  %_lhs257 = load i32* %j253
  %_lhs258 = load i32* %i250
  %index_ptr259 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a244, i32 %_lhs258
  call void @oat_array_bounds_check( i32 0, i32 %_lhs258 )
  %index_ptr261 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a244, i32 %_lhs257
  call void @oat_array_bounds_check( i32 0, i32 %_lhs257 )
  %_lhs263 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a244
  %bop264 = add i32 %_lhs256, %_lhs263
  store i32 %bop264, i32* %s249
  %_lhs265 = load i32* %j253
  %bop266 = add i32 %_lhs265, 1
  store i32 %bop266, i32* %j253
  br label %__cond62

__fresh66:
  br label %__post60

__post60:
  %_lhs267 = load i32* %i250
  %bop268 = add i32 %_lhs267, 1
  store i32 %bop268, i32* %i250
  br label %__cond59

__fresh67:
  br label %__post57

__post57:
  %_lhs269 = load i32* %s249
  ret i32 %_lhs269
}


define void @a244.init (){

__fresh56:
  %array_ptr221 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array222 = bitcast { i32, [ 0 x i32 ] }* %array_ptr221 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr223 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array224 = bitcast { i32, [ 0 x i32 ] }* %array_ptr223 to { i32, [ 0 x i32 ] }* 
  %index_ptr225 = getelementptr { i32, [ 0 x i32 ] }* %array224, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr225
  %index_ptr226 = getelementptr { i32, [ 0 x i32 ] }* %array224, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr226
  %index_ptr227 = getelementptr { i32, [ 0 x i32 ] }* %array224, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr227
  %index_ptr228 = getelementptr { i32, [ 0 x i32 ] }* %array224, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr228
  %index_ptr229 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array222, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array224, { i32, [ 0 x i32 ] }** %index_ptr229
  %array_ptr230 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array231 = bitcast { i32, [ 0 x i32 ] }* %array_ptr230 to { i32, [ 0 x i32 ] }* 
  %index_ptr232 = getelementptr { i32, [ 0 x i32 ] }* %array231, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr232
  %index_ptr233 = getelementptr { i32, [ 0 x i32 ] }* %array231, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr233
  %index_ptr234 = getelementptr { i32, [ 0 x i32 ] }* %array231, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr234
  %index_ptr235 = getelementptr { i32, [ 0 x i32 ] }* %array231, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr235
  %index_ptr236 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array222, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array231, { i32, [ 0 x i32 ] }** %index_ptr236
  %array_ptr237 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array238 = bitcast { i32, [ 0 x i32 ] }* %array_ptr237 to { i32, [ 0 x i32 ] }* 
  %index_ptr239 = getelementptr { i32, [ 0 x i32 ] }* %array238, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr239
  %index_ptr240 = getelementptr { i32, [ 0 x i32 ] }* %array238, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr240
  %index_ptr241 = getelementptr { i32, [ 0 x i32 ] }* %array238, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr241
  %index_ptr242 = getelementptr { i32, [ 0 x i32 ] }* %array238, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr242
  %index_ptr243 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array222, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array238, { i32, [ 0 x i32 ] }** %index_ptr243
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array222, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a244
  ret void
}


