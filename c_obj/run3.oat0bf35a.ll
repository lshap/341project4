declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr496 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr496.init
define void @oat_init (){

__fresh129:
  call void @arr496.init(  )
  ret void
}


define i32 @program (i32 %argc499, { i32, [ 0 x i8* ] }* %argv497){

__fresh128:
  %argc_slot500 = alloca i32
  store i32 %argc499, i32* %argc_slot500
  %argv_slot498 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv497, { i32, [ 0 x i8* ] }** %argv_slot498
  %index_ptr501 = getelementptr { i32, [ 0 x i32 ] }** @arr496, i32 1
  %_lhs502 = load { i32, [ 0 x i32 ] }** @arr496
  ret { i32, [ 0 x i32 ] }* %_lhs502
}


define void @arr496.init (){

__fresh127:
  %array_ptr492 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array493 = bitcast { i32, [ 0 x i32 ] }* %array_ptr492 to { i32, [ 0 x i32 ] }* 
  %index_ptr494 = getelementptr { i32, [ 0 x i32 ] }* %array493, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr494
  %index_ptr495 = getelementptr { i32, [ 0 x i32 ] }* %array493, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr495
  store { i32, [ 0 x i32 ] }* %array493, { i32, [ 0 x i32 ] }** @arr496
  ret void
}


