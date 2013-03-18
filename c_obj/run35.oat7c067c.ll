declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a236 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by a236.init
define void @oat_init (){

__fresh68:
  call void @a236.init(  )
  ret void
}


define i32 @program (i32 %argc239, { i32, [ 0 x i8* ] }* %argv237){

__fresh63:
  %argc_slot240 = alloca i32
  store i32 %argc239, i32* %argc_slot240
  %argv_slot238 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv237, { i32, [ 0 x i8* ] }** %argv_slot238
  %s241 = alloca i32
  store i32 0, i32* %s241
  %i242 = alloca i32
  store i32 0, i32* %i242
  br label %__cond59

__cond59:
  %_lhs243 = load i32* %i242
  %bop244 = icmp slt i32 %_lhs243, 3
  br i1 %bop244, label %__body58, label %__post57

__fresh64:
  br label %__body58

__body58:
  %j245 = alloca i32
  store i32 0, i32* %j245
  br label %__cond62

__cond62:
  %_lhs246 = load i32* %j245
  %bop247 = icmp slt i32 %_lhs246, 4
  br i1 %bop247, label %__body61, label %__post60

__fresh65:
  br label %__body61

__body61:
  %_lhs248 = load i32* %s241
  %_lhs249 = load i32* %j245
  %_lhs250 = load i32* %i242
  %index_ptr251 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a236, i32 %_lhs250
  call void @oat_array_bounds_check( i32 0, i32 %_lhs250 )
  %index_ptr252 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a236, i32 %_lhs249
  call void @oat_array_bounds_check( i32 0, i32 %_lhs249 )
  %_lhs253 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a236
  %bop254 = add i32 %_lhs248, %_lhs253
  store i32 %bop254, i32* %s241
  %_lhs255 = load i32* %j245
  %bop256 = add i32 %_lhs255, 1
  store i32 %bop256, i32* %j245
  br label %__cond62

__fresh66:
  br label %__post60

__post60:
  %_lhs257 = load i32* %i242
  %bop258 = add i32 %_lhs257, 1
  store i32 %bop258, i32* %i242
  br label %__cond59

__fresh67:
  br label %__post57

__post57:
  %_lhs259 = load i32* %s241
  ret i32 %_lhs259
}


define void @a236.init (){

__fresh56:
  %array_ptr213 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array214 = bitcast { i32, [ 0 x i32 ] }* %array_ptr213 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr215 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array216 = bitcast { i32, [ 0 x i32 ] }* %array_ptr215 to { i32, [ 0 x i32 ] }* 
  %index_ptr217 = getelementptr { i32, [ 0 x i32 ] }* %array216, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr217
  %index_ptr218 = getelementptr { i32, [ 0 x i32 ] }* %array216, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr218
  %index_ptr219 = getelementptr { i32, [ 0 x i32 ] }* %array216, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr219
  %index_ptr220 = getelementptr { i32, [ 0 x i32 ] }* %array216, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr220
  %index_ptr221 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array214, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array216, { i32, [ 0 x i32 ] }** %index_ptr221
  %array_ptr222 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array223 = bitcast { i32, [ 0 x i32 ] }* %array_ptr222 to { i32, [ 0 x i32 ] }* 
  %index_ptr224 = getelementptr { i32, [ 0 x i32 ] }* %array223, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr224
  %index_ptr225 = getelementptr { i32, [ 0 x i32 ] }* %array223, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr225
  %index_ptr226 = getelementptr { i32, [ 0 x i32 ] }* %array223, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr226
  %index_ptr227 = getelementptr { i32, [ 0 x i32 ] }* %array223, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr227
  %index_ptr228 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array214, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array223, { i32, [ 0 x i32 ] }** %index_ptr228
  %array_ptr229 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array230 = bitcast { i32, [ 0 x i32 ] }* %array_ptr229 to { i32, [ 0 x i32 ] }* 
  %index_ptr231 = getelementptr { i32, [ 0 x i32 ] }* %array230, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr231
  %index_ptr232 = getelementptr { i32, [ 0 x i32 ] }* %array230, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr232
  %index_ptr233 = getelementptr { i32, [ 0 x i32 ] }* %array230, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr233
  %index_ptr234 = getelementptr { i32, [ 0 x i32 ] }* %array230, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr234
  %index_ptr235 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array214, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array230, { i32, [ 0 x i32 ] }** %index_ptr235
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array214, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a236
  ret void
}


