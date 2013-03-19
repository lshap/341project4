declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1315:
  ret void
}


define i32 @program (i32 %argc3196, { i32, [ 0 x i8* ] }* %argv3194){

__fresh1314:
  %argc_slot3197 = alloca i32
  store i32 %argc3196, i32* %argc_slot3197
  %argv_slot3195 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3194, { i32, [ 0 x i8* ] }** %argv_slot3195
  %array_ptr3198 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3199 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3198 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3200 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3201 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3200 to { i32, [ 0 x i32 ] }* 
  %index_ptr3202 = getelementptr { i32, [ 0 x i32 ] }* %array3201, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3202
  %index_ptr3203 = getelementptr { i32, [ 0 x i32 ] }* %array3201, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3203
  %index_ptr3204 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3199, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3201, { i32, [ 0 x i32 ] }** %index_ptr3204
  %array_ptr3205 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3206 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3205 to { i32, [ 0 x i32 ] }* 
  %index_ptr3207 = getelementptr { i32, [ 0 x i32 ] }* %array3206, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3207
  %index_ptr3208 = getelementptr { i32, [ 0 x i32 ] }* %array3206, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3208
  %index_ptr3209 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3199, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3206, { i32, [ 0 x i32 ] }** %index_ptr3209
  %a3210 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3199, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3210
  %size_ptr3212 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3210, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3212, i32 1 )
  %index_ptr3211 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3210, i32 0, i32 1, i32 1
  %size_ptr3214 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3210, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3214, i32 3 )
  %index_ptr3213 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3210, i32 0, i32 1, i32 3
  %_lhs3215 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3210
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3215
}


