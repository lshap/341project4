declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs941 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs941.init
@_oat_string938.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string938 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string938.str., i32 0, i32 0), align 4
@_oat_string935.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string935 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string935.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh356:
  call void @strs941.init(  )
  ret void
}


define i32 @program (i32 %argc946, { i32, [ 0 x i8* ] }* %argv944){

__fresh355:
  %argc_slot947 = alloca i32
  store i32 %argc946, i32* %argc_slot947
  %argv_slot945 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv944, { i32, [ 0 x i8* ] }** %argv_slot945
  %size_ptr949 = getelementptr { i32, [ 0 x i8* ] }* @strs941, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr949, i32 0 )
  %index_ptr948 = getelementptr { i32, [ 0 x i8* ] }* @strs941, i32 0, i32 1, i32 0
  %_lhs950 = load { i32, [ 0 x i8* ] }** @strs941
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs950 )
  ret i32 0
}


define void @strs941.init (){

__fresh354:
  %array_ptr933 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array934 = bitcast { i32, [ 0 x i32 ] }* %array_ptr933 to { i32, [ 0 x i8* ] }* 
  %strval936 = load i8** @_oat_string935
  %index_ptr937 = getelementptr { i32, [ 0 x i8* ] }* %array934, i32 0, i32 1, i32 0
  store i8* %strval936, i8** %index_ptr937
  %strval939 = load i8** @_oat_string938
  %index_ptr940 = getelementptr { i32, [ 0 x i8* ] }* %array934, i32 0, i32 1, i32 1
  store i8* %strval939, i8** %index_ptr940
  store { i32, [ 0 x i8* ] }* %array934, { i32, [ 0 x i8* ] }** @strs941
  ret void
}


