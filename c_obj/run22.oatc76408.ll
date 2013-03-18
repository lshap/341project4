declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs886 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs886.init
@_oat_string883.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string883 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string883.str., i32 0, i32 0), align 4
@_oat_string880.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string880 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string880.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh293:
  call void @strs886.init(  )
  ret void
}


define i32 @program (i32 %argc891, { i32, [ 0 x i8* ] }* %argv889){

__fresh292:
  %argc_slot892 = alloca i32
  store i32 %argc891, i32* %argc_slot892
  %argv_slot890 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv889, { i32, [ 0 x i8* ] }** %argv_slot890
  %index_ptr893 = getelementptr { i32, [ 0 x i8* ] }** @strs886, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs894 = load { i32, [ 0 x i8* ] }** @strs886
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs894 )
  ret i32 0
}


define void @strs886.init (){

__fresh291:
  %array_ptr878 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array879 = bitcast { i32, [ 0 x i32 ] }* %array_ptr878 to { i32, [ 0 x i8* ] }* 
  %strval881 = load i8** @_oat_string880
  %index_ptr882 = getelementptr { i32, [ 0 x i8* ] }* %array879, i32 0, i32 1, i32 0
  store i8* %strval881, i8** %index_ptr882
  %strval884 = load i8** @_oat_string883
  %index_ptr885 = getelementptr { i32, [ 0 x i8* ] }* %array879, i32 0, i32 1, i32 1
  store i8* %strval884, i8** %index_ptr885
  store { i32, [ 0 x i8* ] }* %array879, { i32, [ 0 x i8* ] }** @strs886
  ret void
}


