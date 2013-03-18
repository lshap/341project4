declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2113 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr2113.init
define void @oat_init (){

__fresh392:
  call void @arr2113.init(  )
  ret void
}


define i32 @program (i32 %argc2116, { i32, [ 0 x i8* ] }* %argv2114){

__fresh391:
  %argc_slot2117 = alloca i32
  store i32 %argc2116, i32* %argc_slot2117
  %argv_slot2115 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2114, { i32, [ 0 x i8* ] }** %argv_slot2115
  %index_ptr2118 = getelementptr { i32, [ 0 x i32 ] }** @arr2113, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs2119 = load { i32, [ 0 x i32 ] }** @arr2113
  ret { i32, [ 0 x i32 ] }* %_lhs2119
}


define void @arr2113.init (){

__fresh390:
  %array_ptr2109 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2110 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2109 to { i32, [ 0 x i32 ] }* 
  %index_ptr2111 = getelementptr { i32, [ 0 x i32 ] }* %array2110, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2111
  %index_ptr2112 = getelementptr { i32, [ 0 x i32 ] }* %array2110, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2112
  store { i32, [ 0 x i32 ] }* %array2110, { i32, [ 0 x i32 ] }** @arr2113
  ret void
}


