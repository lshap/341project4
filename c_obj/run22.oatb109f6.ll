declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs687 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs687.init
@_oat_string684.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string684 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string684.str., i32 0, i32 0), align 4
@_oat_string681.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string681 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string681.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh151:
  call void @strs687.init(  )
  ret void
}


define i32 @program (i32 %argc692, { i32, [ 0 x i8* ] }* %argv690){

__fresh150:
  %argc_slot693 = alloca i32
  store i32 %argc692, i32* %argc_slot693
  %argv_slot691 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv690, { i32, [ 0 x i8* ] }** %argv_slot691
  %index_ptr694 = getelementptr { i32, [ 0 x i8* ] }** @strs687, i32 0
  %_lhs695 = load { i32, [ 0 x i8* ] }** @strs687
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs695 )
  ret i32 0
}


define void @strs687.init (){

__fresh149:
  %array_ptr679 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array680 = bitcast { i32, [ 0 x i32 ] }* %array_ptr679 to { i32, [ 0 x i8* ] }* 
  %strval682 = load i8** @_oat_string681
  %index_ptr683 = getelementptr { i32, [ 0 x i8* ] }* %array680, i32 0, i32 1, i32 0
  store i8* %strval682, i8** %index_ptr683
  %strval685 = load i8** @_oat_string684
  %index_ptr686 = getelementptr { i32, [ 0 x i8* ] }* %array680, i32 0, i32 1, i32 1
  store i8* %strval685, i8** %index_ptr686
  store { i32, [ 0 x i8* ] }* %array680, { i32, [ 0 x i8* ] }** @strs687
  ret void
}


