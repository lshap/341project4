declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str862 = global i8* zeroinitializer, align 4		; initialized by str862.init
define void @oat_init (){

__fresh233:
  call void @str862.init(  )
  ret void
}


define i32 @program (i32 %argc865, { i32, [ 0 x i8* ] }* %argv863){

__fresh232:
  %argc_slot866 = alloca i32
  store i32 %argc865, i32* %argc_slot866
  %argv_slot864 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv863, { i32, [ 0 x i8* ] }** %argv_slot864
  %_lhs867 = load i8** @str862
  call void @print_string( i8* %_lhs867 )
  ret i32 0
}


define void @str862.init (){

__fresh228:
  %array_ptr855 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array856 = bitcast { i32, [ 0 x i32 ] }* %array_ptr855 to { i32, [ 0 x i32 ] }* 
  %index_ptr857 = getelementptr { i32, [ 0 x i32 ] }* %array856, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr857
  store i32 0, i32* %index_ptr858
  br label %__compare225

__fresh229:
  br label %__compare225

__compare225:
  %comparison_result859 = icmp slt i32* %index_ptr858, 3
  br i1 %comparison_result859, label %__body226, label %__end227

__fresh230:
  br label %__body226

__body226:
  store i32* %index_ptr858, i32 %i860
  %index_ptr858 = add i32* %index_ptr858, 1
  br label %__compare225

__fresh231:
  br label %__end227

__end227:
  %ret861 = call i8* @string_of_array ( i32** %array856 )
  store i8* %ret861, i8** @str862
  ret void
}


