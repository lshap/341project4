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

__fresh305:
  call void @str945.init(  )
  ret void
}


define i32 @program (i32 %argc948, { i32, [ 0 x i8* ] }* %argv946){

__fresh304:
  %argc_slot949 = alloca i32
  store i32 %argc948, i32* %argc_slot949
  %argv_slot947 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv946, { i32, [ 0 x i8* ] }** %argv_slot947
  %_lhs950 = load i8** @str945
  call void @print_string( i8* %_lhs950 )
  ret i32 0
}


define void @str945.init (){

__fresh300:
  %array_ptr938 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array939 = bitcast { i32, [ 0 x i32 ] }* %array_ptr938 to { i32, [ 0 x i32 ] }* 
  %index_ptr940 = getelementptr { i32, [ 0 x i32 ] }* %array939, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr940
  store i32 0, i32* %index_ptr941
  br label %__compare297

__fresh301:
  br label %__compare297

__compare297:
  %comparison_result942 = icmp slt i32* %index_ptr941, 3
  br i1 %comparison_result942, label %__body298, label %__end299

__fresh302:
  br label %__body298

__body298:
  store i32* %index_ptr941, i32* %i943
  %index_ptr941 = add i32* %index_ptr941, 1
  br label %__compare297

__fresh303:
  br label %__end299

__end299:
  %ret944 = call i8* @string_of_array ( i32** %array939 )
  store i8* %ret944, i8** @str945
  ret void
}


