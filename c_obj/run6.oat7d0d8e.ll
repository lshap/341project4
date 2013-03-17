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
  %index_ptr2321 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2314, i32 3
