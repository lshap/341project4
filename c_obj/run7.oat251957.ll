declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2336 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2336.init
define void @oat_init (){

__fresh398:
  call void @arr2336.init(  )
  ret void
}


define i32 @program (i32 %argc2339, { i32, [ 0 x i8* ] }* %argv2337){

__fresh397:
  %argc_slot2340 = alloca i32
  store i32 %argc2339, i32* %argc_slot2340
  %argv_slot2338 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2337, { i32, [ 0 x i8* ] }** %argv_slot2338
  %index_ptr2343 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2336, i32 0
