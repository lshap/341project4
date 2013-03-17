declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2314 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2314.init
define void @oat_init (){

__fresh395:
  call void @arr2314.init(  )
  ret void
}


define i32 @program (i32 %argc2317, { i32, [ 0 x i8* ] }* %argv2315){

__fresh394:
  %argc_slot2318 = alloca i32
  store i32 %argc2317, i32* %argc_slot2318
  %argv_slot2316 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2315, { i32, [ 0 x i8* ] }** %argv_slot2316
  %index_ptr2319 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2314, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr2321 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2314, i32 3
  call void @oat_array_bounds_check( i32 0, i32 3 )
  %_lhs2323 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2314
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2323
}


define void @arr2314.init (){

__fresh393:
  %array_ptr2302 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2303 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2302 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2304 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2305 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2304 to { i32, [ 0 x i32 ] }* 
  %index_ptr2306 = getelementptr { i32, [ 0 x i32 ] }* %array2305, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2306
  %index_ptr2307 = getelementptr { i32, [ 0 x i32 ] }* %array2305, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2307
  %index_ptr2308 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2303, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2305, { i32, [ 0 x i32 ] }** %index_ptr2308
  %array_ptr2309 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2310 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2309 to { i32, [ 0 x i32 ] }* 
  %index_ptr2311 = getelementptr { i32, [ 0 x i32 ] }* %array2310, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2311
  %index_ptr2312 = getelementptr { i32, [ 0 x i32 ] }* %array2310, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2312
  %index_ptr2313 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2303, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2310, { i32, [ 0 x i32 ] }** %index_ptr2313
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2303, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2314
  ret void
}


