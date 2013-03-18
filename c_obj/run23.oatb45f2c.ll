declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs915 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs915.init
@_oat_string911.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string911 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string911.str., i32 0, i32 0), align 4
@_oat_string908.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string908 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string908.str., i32 0, i32 0), align 4
@_oat_string902.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string902 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string902.str., i32 0, i32 0), align 4
@_oat_string899.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string899 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string899.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh296:
  call void @strs915.init(  )
  ret void
}


define i32 @program (i32 %argc922, { i32, [ 0 x i8* ] }* %argv920){

__fresh295:
  %argc_slot923 = alloca i32
  store i32 %argc922, i32* %argc_slot923
  %argv_slot921 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv920, { i32, [ 0 x i8* ] }** %argv_slot921
  %index_ptr924 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs915, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr925 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs915, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs926 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs915
  call void @print_string( { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs926 )
  ret i32 0
}


define void @strs915.init (){

__fresh294:
  %array_ptr895 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array896 = bitcast { i32, [ 0 x i32 ] }* %array_ptr895 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr897 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array898 = bitcast { i32, [ 0 x i32 ] }* %array_ptr897 to { i32, [ 0 x i8* ] }* 
  %strval900 = load i8** @_oat_string899
  %index_ptr901 = getelementptr { i32, [ 0 x i8* ] }* %array898, i32 0, i32 1, i32 0
  store i8* %strval900, i8** %index_ptr901
  %strval903 = load i8** @_oat_string902
  %index_ptr904 = getelementptr { i32, [ 0 x i8* ] }* %array898, i32 0, i32 1, i32 1
  store i8* %strval903, i8** %index_ptr904
  %index_ptr905 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array896, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array898, { i32, [ 0 x i8* ] }** %index_ptr905
  %array_ptr906 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array907 = bitcast { i32, [ 0 x i32 ] }* %array_ptr906 to { i32, [ 0 x i8* ] }* 
  %strval909 = load i8** @_oat_string908
  %index_ptr910 = getelementptr { i32, [ 0 x i8* ] }* %array907, i32 0, i32 1, i32 0
  store i8* %strval909, i8** %index_ptr910
  %strval912 = load i8** @_oat_string911
  %index_ptr913 = getelementptr { i32, [ 0 x i8* ] }* %array907, i32 0, i32 1, i32 1
  store i8* %strval912, i8** %index_ptr913
  %index_ptr914 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array896, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array907, { i32, [ 0 x i8* ] }** %index_ptr914
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array896, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs915
  ret void
}


