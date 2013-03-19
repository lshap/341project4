declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str945 = global i8* zeroinitializer, align 4		; initialized by str945.init
define void @oat_init (){

__fresh363:
  call void @str945.init(  )
  ret void
}


define i32 @program (i32 %argc948, { i32, [ 0 x i8* ] }* %argv946){

__fresh362:
  %argc_slot949 = alloca i32
  store i32 %argc948, i32* %argc_slot949
  %argv_slot947 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv946, { i32, [ 0 x i8* ] }** %argv_slot947
  %_lhs950 = load i8** @str945
  call void @print_string( i8* %_lhs950 )
  ret i32 0
}


define void @str945.init (){

__fresh358:
  %array_ptr938 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array939 = bitcast { i32, [ 0 x i32 ] }* %array_ptr938 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr941
  br label %__compare355

__fresh359:
  br label %__compare355

__compare355:
  %comparison_result942 = icmp slt i32* %index_ptr941, 3
  br i1 %comparison_result942, label %__body356, label %__end357

__fresh360:
  br label %__body356

__body356:
  store i32* %index_ptr941, i32* %i943
  %index_ptr941 = add i32* %index_ptr941, 1
  br label %__compare355

__fresh361:
  br label %__end357

__end357:
  %ret944 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %array939 )
  store i8* %ret944, i8** @str945
  ret void
}


