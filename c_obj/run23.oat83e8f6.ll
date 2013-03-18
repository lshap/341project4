declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs716 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs716.init
@_oat_string712.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string712 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string712.str., i32 0, i32 0), align 4
@_oat_string709.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string709 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string709.str., i32 0, i32 0), align 4
@_oat_string703.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string703 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string703.str., i32 0, i32 0), align 4
@_oat_string700.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string700 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string700.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh154:
  call void @strs716.init(  )
  ret void
}


define i32 @program (i32 %argc723, { i32, [ 0 x i8* ] }* %argv721){

__fresh153:
  %argc_slot724 = alloca i32
  store i32 %argc723, i32* %argc_slot724
  %argv_slot722 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv721, { i32, [ 0 x i8* ] }** %argv_slot722
  %index_ptr725 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs716, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr726 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs716, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs727 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs716
  call void @print_string( { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs727 )
  ret i32 0
}


define void @strs716.init (){

__fresh152:
  %array_ptr696 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array697 = bitcast { i32, [ 0 x i32 ] }* %array_ptr696 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr698 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array699 = bitcast { i32, [ 0 x i32 ] }* %array_ptr698 to { i32, [ 0 x i8* ] }* 
  %strval701 = load i8** @_oat_string700
  %index_ptr702 = getelementptr { i32, [ 0 x i8* ] }* %array699, i32 0, i32 1, i32 0
  store i8* %strval701, i8** %index_ptr702
  %strval704 = load i8** @_oat_string703
  %index_ptr705 = getelementptr { i32, [ 0 x i8* ] }* %array699, i32 0, i32 1, i32 1
  store i8* %strval704, i8** %index_ptr705
  %index_ptr706 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array697, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array699, { i32, [ 0 x i8* ] }** %index_ptr706
  %array_ptr707 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array708 = bitcast { i32, [ 0 x i32 ] }* %array_ptr707 to { i32, [ 0 x i8* ] }* 
  %strval710 = load i8** @_oat_string709
  %index_ptr711 = getelementptr { i32, [ 0 x i8* ] }* %array708, i32 0, i32 1, i32 0
  store i8* %strval710, i8** %index_ptr711
  %strval713 = load i8** @_oat_string712
  %index_ptr714 = getelementptr { i32, [ 0 x i8* ] }* %array708, i32 0, i32 1, i32 1
  store i8* %strval713, i8** %index_ptr714
  %index_ptr715 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array697, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array708, { i32, [ 0 x i8* ] }** %index_ptr715
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array697, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs716
  ret void
}


