declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh90:
  ret void
}


define i32 @program (i32 %argc310, { i32, [ 0 x i8* ] }* %argv308){

__fresh89:
  %argc_slot311 = alloca i32
  store i32 %argc310, i32* %argc_slot311
  %argv_slot309 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv308, { i32, [ 0 x i8* ] }** %argv_slot309
  %_lhs312 = load i32* %argc_slot311
  %ret313 = call i32 @f1 ( i32 %_lhs312 )
  ret i32 %ret313
}


define i32 @f9 (i32 %i305){

__fresh88:
  %i_slot306 = alloca i32
  store i32 %i305, i32* %i_slot306
  %_lhs307 = load i32* %i_slot306
  ret i32 %_lhs307
}


define i32 @f8 (i32 %i301){

__fresh87:
  %i_slot302 = alloca i32
  store i32 %i301, i32* %i_slot302
  %_lhs303 = load i32* %i_slot302
  %ret304 = call i32 @f9 ( i32 %_lhs303 )
  ret i32 %ret304
}


define i32 @f7 (i32 %i297){

__fresh86:
  %i_slot298 = alloca i32
  store i32 %i297, i32* %i_slot298
  %_lhs299 = load i32* %i_slot298
  %ret300 = call i32 @f8 ( i32 %_lhs299 )
  ret i32 %ret300
}


define i32 @f6 (i32 %i293){

__fresh85:
  %i_slot294 = alloca i32
  store i32 %i293, i32* %i_slot294
  %_lhs295 = load i32* %i_slot294
  %ret296 = call i32 @f7 ( i32 %_lhs295 )
  ret i32 %ret296
}


define i32 @f5 (i32 %i289){

__fresh84:
  %i_slot290 = alloca i32
  store i32 %i289, i32* %i_slot290
  %_lhs291 = load i32* %i_slot290
  %ret292 = call i32 @f6 ( i32 %_lhs291 )
  ret i32 %ret292
}


define i32 @f4 (i32 %i285){

__fresh83:
  %i_slot286 = alloca i32
  store i32 %i285, i32* %i_slot286
  %_lhs287 = load i32* %i_slot286
  %ret288 = call i32 @f5 ( i32 %_lhs287 )
  ret i32 %ret288
}


define i32 @f3 (i32 %i281){

__fresh82:
  %i_slot282 = alloca i32
  store i32 %i281, i32* %i_slot282
  %_lhs283 = load i32* %i_slot282
  %ret284 = call i32 @f4 ( i32 %_lhs283 )
  ret i32 %ret284
}


define i32 @f2 (i32 %i277){

__fresh81:
  %i_slot278 = alloca i32
  store i32 %i277, i32* %i_slot278
  %_lhs279 = load i32* %i_slot278
  %ret280 = call i32 @f3 ( i32 %_lhs279 )
  ret i32 %ret280
}


define i32 @f1 (i32 %i273){

__fresh80:
  %i_slot274 = alloca i32
  store i32 %i273, i32* %i_slot274
  %_lhs275 = load i32* %i_slot274
  %ret276 = call i32 @f2 ( i32 %_lhs275 )
  ret i32 %ret276
}


