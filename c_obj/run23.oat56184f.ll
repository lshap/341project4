declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs748 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs748.init
@_oat_string744.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string744 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string744.str., i32 0, i32 0), align 4
@_oat_string741.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string741 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string741.str., i32 0, i32 0), align 4
@_oat_string735.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string735 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string735.str., i32 0, i32 0), align 4
@_oat_string732.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string732 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string732.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh154:
  call void @strs748.init(  )
  ret void
}


define i32 @program (i32 %argc755, { i32, [ 0 x i8* ] }* %argv753){

__fresh153:
  %argc_slot756 = alloca i32
  store i32 %argc755, i32* %argc_slot756
  %argv_slot754 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv753, { i32, [ 0 x i8* ] }** %argv_slot754
  %index_ptr757 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs748, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr759 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs748, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs761 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs748
  call void @print_string( { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs761 )
  ret i32 0
}


define void @strs748.init (){

__fresh152:
  %array_ptr728 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array729 = bitcast { i32, [ 0 x i32 ] }* %array_ptr728 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr730 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array731 = bitcast { i32, [ 0 x i32 ] }* %array_ptr730 to { i32, [ 0 x i8* ] }* 
  %strval733 = load i8** @_oat_string732
  %index_ptr734 = getelementptr { i32, [ 0 x i8* ] }* %array731, i32 0, i32 1, i32 0
  store i8* %strval733, i8** %index_ptr734
  %strval736 = load i8** @_oat_string735
  %index_ptr737 = getelementptr { i32, [ 0 x i8* ] }* %array731, i32 0, i32 1, i32 1
  store i8* %strval736, i8** %index_ptr737
  %index_ptr738 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array729, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array731, { i32, [ 0 x i8* ] }** %index_ptr738
  %array_ptr739 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array740 = bitcast { i32, [ 0 x i32 ] }* %array_ptr739 to { i32, [ 0 x i8* ] }* 
  %strval742 = load i8** @_oat_string741
  %index_ptr743 = getelementptr { i32, [ 0 x i8* ] }* %array740, i32 0, i32 1, i32 0
  store i8* %strval742, i8** %index_ptr743
  %strval745 = load i8** @_oat_string744
  %index_ptr746 = getelementptr { i32, [ 0 x i8* ] }* %array740, i32 0, i32 1, i32 1
  store i8* %strval745, i8** %index_ptr746
  %index_ptr747 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array729, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array740, { i32, [ 0 x i8* ] }** %index_ptr747
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array729, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs748
  ret void
}


