declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2294 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr2294.init
define void @oat_init (){

__fresh392:
  call void @arr2294.init(  )
  ret void
}


define i32 @program (i32 %argc2297, { i32, [ 0 x i8* ] }* %argv2295){

__fresh391:
  %argc_slot2298 = alloca i32
  store i32 %argc2297, i32* %argc_slot2298
  %argv_slot2296 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2295, { i32, [ 0 x i8* ] }** %argv_slot2296
  %index_ptr2299 = getelementptr { i32, [ 0 x i32 ] }** @arr2294, i32 2
