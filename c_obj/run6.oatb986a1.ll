declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3119 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3119.init
define void @oat_init (){

__fresh1049:
  call void @arr3119.init(  )
  ret void
}


define i32 @program (i32 %argc3122, { i32, [ 0 x i8* ] }* %argv3120){

__fresh1048:
  %argc_slot3123 = alloca i32
  store i32 %argc3122, i32* %argc_slot3123
  %argv_slot3121 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3120, { i32, [ 0 x i8* ] }** %argv_slot3121
  %size_ptr3125 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3119, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3125, i32 1 )
  %index_ptr3124 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3119, i32 0, i32 1, i32 1
  %size_ptr3127 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3119, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3127, i32 3 )
  %index_ptr3126 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3119, i32 0, i32 1, i32 3
  %_lhs3128 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3119
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3128
}


define void @arr3119.init (){

__fresh1047:
  %array_ptr3107 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3108 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3107 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3109 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3110 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3109 to { i32, [ 0 x i32 ] }* 
  %index_ptr3111 = getelementptr { i32, [ 0 x i32 ] }* %array3110, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3111
  %index_ptr3112 = getelementptr { i32, [ 0 x i32 ] }* %array3110, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3112
  %index_ptr3113 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3108, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3110, { i32, [ 0 x i32 ] }** %index_ptr3113
  %array_ptr3114 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3115 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3114 to { i32, [ 0 x i32 ] }* 
  %index_ptr3116 = getelementptr { i32, [ 0 x i32 ] }* %array3115, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3116
  %index_ptr3117 = getelementptr { i32, [ 0 x i32 ] }* %array3115, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3117
  %index_ptr3118 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3108, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3115, { i32, [ 0 x i32 ] }** %index_ptr3118
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3108, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3119
  ret void
}


