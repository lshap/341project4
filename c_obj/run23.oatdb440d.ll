declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs926 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs926.init
@_oat_string922.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string922 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string922.str., i32 0, i32 0), align 4
@_oat_string919.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string919 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string919.str., i32 0, i32 0), align 4
@_oat_string913.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string913 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string913.str., i32 0, i32 0), align 4
@_oat_string910.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string910 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string910.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh351:
  call void @strs926.init(  )
  ret void
}


define i32 @program (i32 %argc933, { i32, [ 0 x i8* ] }* %argv931){

__fresh350:
  %argc_slot934 = alloca i32
  store i32 %argc933, i32* %argc_slot934
  %argv_slot932 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv931, { i32, [ 0 x i8* ] }** %argv_slot932
  %index_ptr935 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs926, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr936 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs926, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs937 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs926
  call void @print_string( { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs937 )
  ret i32 0
}


define void @strs926.init (){

__fresh349:
  %array_ptr906 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array907 = bitcast { i32, [ 0 x i32 ] }* %array_ptr906 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr908 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array909 = bitcast { i32, [ 0 x i32 ] }* %array_ptr908 to { i32, [ 0 x i8* ] }* 
  %strval911 = load i8** @_oat_string910
  %index_ptr912 = getelementptr { i32, [ 0 x i8* ] }* %array909, i32 0, i32 1, i32 0
  store i8* %strval911, i8** %index_ptr912
  %strval914 = load i8** @_oat_string913
  %index_ptr915 = getelementptr { i32, [ 0 x i8* ] }* %array909, i32 0, i32 1, i32 1
  store i8* %strval914, i8** %index_ptr915
  %index_ptr916 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array907, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array909, { i32, [ 0 x i8* ] }** %index_ptr916
  %array_ptr917 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array918 = bitcast { i32, [ 0 x i32 ] }* %array_ptr917 to { i32, [ 0 x i8* ] }* 
  %strval920 = load i8** @_oat_string919
  %index_ptr921 = getelementptr { i32, [ 0 x i8* ] }* %array918, i32 0, i32 1, i32 0
  store i8* %strval920, i8** %index_ptr921
  %strval923 = load i8** @_oat_string922
  %index_ptr924 = getelementptr { i32, [ 0 x i8* ] }* %array918, i32 0, i32 1, i32 1
  store i8* %strval923, i8** %index_ptr924
  %index_ptr925 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array907, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array918, { i32, [ 0 x i8* ] }** %index_ptr925
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array907, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs926
  ret void
}


