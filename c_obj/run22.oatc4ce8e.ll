declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs897 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs897.init
@_oat_string894.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string894 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string894.str., i32 0, i32 0), align 4
@_oat_string891.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string891 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string891.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh345:
  call void @strs897.init(  )
  ret void
}


define i32 @program (i32 %argc902, { i32, [ 0 x i8* ] }* %argv900){

__fresh344:
  %argc_slot903 = alloca i32
  store i32 %argc902, i32* %argc_slot903
  %argv_slot901 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv900, { i32, [ 0 x i8* ] }** %argv_slot901
  %index_ptr904 = getelementptr { i32, [ 0 x i8* ] }** @strs897, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs905 = load { i32, [ 0 x i8* ] }** @strs897
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs905 )
  ret i32 0
}


define void @strs897.init (){

__fresh343:
  %array_ptr889 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array890 = bitcast { i32, [ 0 x i32 ] }* %array_ptr889 to { i32, [ 0 x i8* ] }* 
  %strval892 = load i8** @_oat_string891
  %index_ptr893 = getelementptr { i32, [ 0 x i8* ] }* %array890, i32 0, i32 1, i32 0
  store i8* %strval892, i8** %index_ptr893
  %strval895 = load i8** @_oat_string894
  %index_ptr896 = getelementptr { i32, [ 0 x i8* ] }* %array890, i32 0, i32 1, i32 1
  store i8* %strval895, i8** %index_ptr896
  store { i32, [ 0 x i8* ] }* %array890, { i32, [ 0 x i8* ] }** @strs897
  ret void
}


