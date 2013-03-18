declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs814 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs814.init
@_oat_string811.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string811 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string811.str., i32 0, i32 0), align 4
@_oat_string808.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string808 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string808.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh221:
  call void @strs814.init(  )
  ret void
}


define i32 @program (i32 %argc819, { i32, [ 0 x i8* ] }* %argv817){

__fresh220:
  %argc_slot820 = alloca i32
  store i32 %argc819, i32* %argc_slot820
  %argv_slot818 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv817, { i32, [ 0 x i8* ] }** %argv_slot818
  %index_ptr821 = getelementptr { i32, [ 0 x i8* ] }** @strs814, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs822 = load { i32, [ 0 x i8* ] }** @strs814
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs822 )
  ret i32 0
}


define void @strs814.init (){

__fresh219:
  %array_ptr806 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array807 = bitcast { i32, [ 0 x i32 ] }* %array_ptr806 to { i32, [ 0 x i8* ] }* 
  %strval809 = load i8** @_oat_string808
  %index_ptr810 = getelementptr { i32, [ 0 x i8* ] }* %array807, i32 0, i32 1, i32 0
  store i8* %strval809, i8** %index_ptr810
  %strval812 = load i8** @_oat_string811
  %index_ptr813 = getelementptr { i32, [ 0 x i8* ] }* %array807, i32 0, i32 1, i32 1
  store i8* %strval812, i8** %index_ptr813
  store { i32, [ 0 x i8* ] }* %array807, { i32, [ 0 x i8* ] }** @strs814
  ret void
}


