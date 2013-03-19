declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3141 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3141.init
define void @oat_init (){

__fresh1287:
  call void @arr3141.init(  )
  ret void
}


define i32 @program (i32 %argc3144, { i32, [ 0 x i8* ] }* %argv3142){

__fresh1286:
  %argc_slot3145 = alloca i32
  store i32 %argc3144, i32* %argc_slot3145
  %argv_slot3143 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3142, { i32, [ 0 x i8* ] }** %argv_slot3143
  %size_ptr3147 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3141, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3147, i32 3 )
  %index_ptr3146 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3141, i32 0, i32 1, i32 3
  %size_ptr3149 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3141, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3149, i32 0 )
  %index_ptr3148 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3141, i32 0, i32 1, i32 0
  %_lhs3150 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3141
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3150
}


define void @arr3141.init (){

__fresh1285:
  %array_ptr3129 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3130 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3129 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3131 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3132 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3131 to { i32, [ 0 x i32 ] }* 
  %index_ptr3133 = getelementptr { i32, [ 0 x i32 ] }* %array3132, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3133
  %index_ptr3134 = getelementptr { i32, [ 0 x i32 ] }* %array3132, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3134
  %index_ptr3135 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3130, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3132, { i32, [ 0 x i32 ] }** %index_ptr3135
  %array_ptr3136 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3137 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3136 to { i32, [ 0 x i32 ] }* 
  %index_ptr3138 = getelementptr { i32, [ 0 x i32 ] }* %array3137, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3138
  %index_ptr3139 = getelementptr { i32, [ 0 x i32 ] }* %array3137, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3139
  %index_ptr3140 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3130, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3137, { i32, [ 0 x i32 ] }** %index_ptr3140
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3130, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3141
  ret void
}


