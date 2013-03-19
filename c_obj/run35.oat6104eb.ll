declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a227 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by a227.init
define void @oat_init (){

__fresh78:
  call void @a227.init(  )
  ret void
}


define i32 @program (i32 %argc230, { i32, [ 0 x i8* ] }* %argv228){

__fresh73:
  %argc_slot231 = alloca i32
  store i32 %argc230, i32* %argc_slot231
  %argv_slot229 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv228, { i32, [ 0 x i8* ] }** %argv_slot229
  %s232 = alloca i32
  store i32 0, i32* %s232
  %i233 = alloca i32
  store i32 0, i32* %i233
  br label %__cond69

__cond69:
  %_lhs234 = load i32* %i233
  %bop235 = icmp slt i32 %_lhs234, 3
  br i1 %bop235, label %__body68, label %__post67

__fresh74:
  br label %__body68

__body68:
  %j236 = alloca i32
  store i32 0, i32* %j236
  br label %__cond72

__cond72:
  %_lhs237 = load i32* %j236
  %bop238 = icmp slt i32 %_lhs237, 4
  br i1 %bop238, label %__body71, label %__post70

__fresh75:
  br label %__body71

__body71:
  %_lhs239 = load i32* %s232
  %_lhs240 = load i32* %j236
  %_lhs241 = load i32* %i233
  %index_ptr242 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a227, i32 %_lhs241
  call void @oat_array_bounds_check( i32 0, i32 %_lhs241 )
  %index_ptr243 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a227, i32 %_lhs240
  call void @oat_array_bounds_check( i32 0, i32 %_lhs240 )
  %_lhs244 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a227
  %bop245 = add i32 %_lhs239, %_lhs244
  store i32 %bop245, i32* %s232
  %_lhs246 = load i32* %j236
  %bop247 = add i32 %_lhs246, 1
  store i32 %bop247, i32* %j236
  br label %__cond72

__fresh76:
  br label %__post70

__post70:
  %_lhs248 = load i32* %i233
  %bop249 = add i32 %_lhs248, 1
  store i32 %bop249, i32* %i233
  br label %__cond69

__fresh77:
  br label %__post67

__post67:
  %_lhs250 = load i32* %s232
  ret i32 %_lhs250
}


define void @a227.init (){

__fresh66:
  %array_ptr204 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array205 = bitcast { i32, [ 0 x i32 ] }* %array_ptr204 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr206 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array207 = bitcast { i32, [ 0 x i32 ] }* %array_ptr206 to { i32, [ 0 x i32 ] }* 
  %index_ptr208 = getelementptr { i32, [ 0 x i32 ] }* %array207, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr208
  %index_ptr209 = getelementptr { i32, [ 0 x i32 ] }* %array207, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr209
  %index_ptr210 = getelementptr { i32, [ 0 x i32 ] }* %array207, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr210
  %index_ptr211 = getelementptr { i32, [ 0 x i32 ] }* %array207, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr211
  %index_ptr212 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array205, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array207, { i32, [ 0 x i32 ] }** %index_ptr212
  %array_ptr213 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array214 = bitcast { i32, [ 0 x i32 ] }* %array_ptr213 to { i32, [ 0 x i32 ] }* 
  %index_ptr215 = getelementptr { i32, [ 0 x i32 ] }* %array214, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr215
  %index_ptr216 = getelementptr { i32, [ 0 x i32 ] }* %array214, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr216
  %index_ptr217 = getelementptr { i32, [ 0 x i32 ] }* %array214, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr217
  %index_ptr218 = getelementptr { i32, [ 0 x i32 ] }* %array214, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr218
  %index_ptr219 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array205, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array214, { i32, [ 0 x i32 ] }** %index_ptr219
  %array_ptr220 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array221 = bitcast { i32, [ 0 x i32 ] }* %array_ptr220 to { i32, [ 0 x i32 ] }* 
  %index_ptr222 = getelementptr { i32, [ 0 x i32 ] }* %array221, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr222
  %index_ptr223 = getelementptr { i32, [ 0 x i32 ] }* %array221, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr223
  %index_ptr224 = getelementptr { i32, [ 0 x i32 ] }* %array221, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr224
  %index_ptr225 = getelementptr { i32, [ 0 x i32 ] }* %array221, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr225
  %index_ptr226 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array205, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array221, { i32, [ 0 x i32 ] }** %index_ptr226
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array205, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a227
  ret void
}


