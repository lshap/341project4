declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs718 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs718.init
@_oat_string715.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string715 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string715.str., i32 0, i32 0), align 4
@_oat_string712.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string712 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string712.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh151:
  call void @strs718.init(  )
  ret void
}


define i32 @program (i32 %argc723, { i32, [ 0 x i8* ] }* %argv721){

__fresh150:
  %argc_slot724 = alloca i32
  store i32 %argc723, i32* %argc_slot724
  %argv_slot722 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv721, { i32, [ 0 x i8* ] }** %argv_slot722
  %index_ptr725 = getelementptr { i32, [ 0 x i8* ] }** @strs718, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs727 = load { i32, [ 0 x i8* ] }** @strs718
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs727 )
  ret i32 0
}


define void @strs718.init (){

__fresh149:
  %array_ptr710 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array711 = bitcast { i32, [ 0 x i32 ] }* %array_ptr710 to { i32, [ 0 x i8* ] }* 
  %strval713 = load i8** @_oat_string712
  %index_ptr714 = getelementptr { i32, [ 0 x i8* ] }* %array711, i32 0, i32 1, i32 0
  store i8* %strval713, i8** %index_ptr714
  %strval716 = load i8** @_oat_string715
  %index_ptr717 = getelementptr { i32, [ 0 x i8* ] }* %array711, i32 0, i32 1, i32 1
  store i8* %strval716, i8** %index_ptr717
  store { i32, [ 0 x i8* ] }* %array711, { i32, [ 0 x i8* ] }** @strs718
  ret void
}


