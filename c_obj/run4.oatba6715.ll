declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3099 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3099.init
define void @oat_init (){

__fresh1272:
  call void @arr3099.init(  )
  ret void
}


define i32 @program (i32 %argc3102, { i32, [ 0 x i8* ] }* %argv3100){

__fresh1271:
  %argc_slot3103 = alloca i32
  store i32 %argc3102, i32* %argc_slot3103
  %argv_slot3101 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3100, { i32, [ 0 x i8* ] }** %argv_slot3101
  %size_ptr3105 = getelementptr { i32, [ 0 x i32 ] }* @arr3099, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3105, i32 2 )
  %index_ptr3104 = getelementptr { i32, [ 0 x i32 ] }* @arr3099, i32 0, i32 1, i32 2
  %_lhs3106 = load { i32, [ 0 x i32 ] }** @arr3099
  ret { i32, [ 0 x i32 ] }* %_lhs3106
}


define void @arr3099.init (){

__fresh1270:
  %array_ptr3095 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3096 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3095 to { i32, [ 0 x i32 ] }* 
  %index_ptr3097 = getelementptr { i32, [ 0 x i32 ] }* %array3096, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3097
  %index_ptr3098 = getelementptr { i32, [ 0 x i32 ] }* %array3096, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3098
  store { i32, [ 0 x i32 ] }* %array3096, { i32, [ 0 x i32 ] }** @arr3099
  ret void
}


