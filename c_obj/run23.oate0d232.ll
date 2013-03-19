declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs917 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs917.init
@_oat_string913.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string913 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string913.str., i32 0, i32 0), align 4
@_oat_string910.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string910 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string910.str., i32 0, i32 0), align 4
@_oat_string904.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string904 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string904.str., i32 0, i32 0), align 4
@_oat_string901.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string901 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string901.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh350:
  call void @strs917.init(  )
  ret void
}


define i32 @program (i32 %argc924, { i32, [ 0 x i8* ] }* %argv922){

__fresh349:
  %argc_slot925 = alloca i32
  store i32 %argc924, i32* %argc_slot925
  %argv_slot923 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv922, { i32, [ 0 x i8* ] }** %argv_slot923
  %index_ptr926 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs917, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr927 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs917, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs928 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs917
  call void @print_string( { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs928 )
  ret i32 0
}


define void @strs917.init (){

__fresh348:
  %array_ptr897 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array898 = bitcast { i32, [ 0 x i32 ] }* %array_ptr897 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr899 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array900 = bitcast { i32, [ 0 x i32 ] }* %array_ptr899 to { i32, [ 0 x i8* ] }* 
  %strval902 = load i8** @_oat_string901
  %index_ptr903 = getelementptr { i32, [ 0 x i8* ] }* %array900, i32 0, i32 1, i32 0
  store i8* %strval902, i8** %index_ptr903
  %strval905 = load i8** @_oat_string904
  %index_ptr906 = getelementptr { i32, [ 0 x i8* ] }* %array900, i32 0, i32 1, i32 1
  store i8* %strval905, i8** %index_ptr906
  %index_ptr907 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array898, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array900, { i32, [ 0 x i8* ] }** %index_ptr907
  %array_ptr908 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array909 = bitcast { i32, [ 0 x i32 ] }* %array_ptr908 to { i32, [ 0 x i8* ] }* 
  %strval911 = load i8** @_oat_string910
  %index_ptr912 = getelementptr { i32, [ 0 x i8* ] }* %array909, i32 0, i32 1, i32 0
  store i8* %strval911, i8** %index_ptr912
  %strval914 = load i8** @_oat_string913
  %index_ptr915 = getelementptr { i32, [ 0 x i8* ] }* %array909, i32 0, i32 1, i32 1
  store i8* %strval914, i8** %index_ptr915
  %index_ptr916 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array898, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array909, { i32, [ 0 x i8* ] }** %index_ptr916
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array898, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs917
  ret void
}


