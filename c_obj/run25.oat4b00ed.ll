declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str934 = global i8* zeroinitializer, align 4		; initialized by str934.init
define void @oat_init (){

__fresh305:
  call void @str934.init(  )
  ret void
}


define i32 @program (i32 %argc937, { i32, [ 0 x i8* ] }* %argv935){

__fresh304:
  %argc_slot938 = alloca i32
  store i32 %argc937, i32* %argc_slot938
  %argv_slot936 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv935, { i32, [ 0 x i8* ] }** %argv_slot936
  %_lhs939 = load i8** @str934
  call void @print_string( i8* %_lhs939 )
  ret i32 0
}


define void @str934.init (){

__fresh300:
  %array_ptr927 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array928 = bitcast { i32, [ 0 x i32 ] }* %array_ptr927 to { i32, [ 0 x i32 ] }* 
  %index_ptr929 = getelementptr { i32, [ 0 x i32 ] }* %array928, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr929
  store i32 0, i32* %index_ptr930
  br label %__compare297

__fresh301:
  br label %__compare297

__compare297:
  %comparison_result931 = icmp slt i32* %index_ptr930, 3
  br i1 %comparison_result931, label %__body298, label %__end299

__fresh302:
  br label %__body298

__body298:
  store i32* %index_ptr930, i32 %i932
  %index_ptr930 = add i32* %index_ptr930, 1
  br label %__compare297

__fresh303:
  br label %__end299

__end299:
  %ret933 = call i8* @string_of_array ( i32** %array928 )
  store i8* %ret933, i8** @str934
  ret void
}


