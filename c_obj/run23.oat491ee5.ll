declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs843 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs843.init
@_oat_string839.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string839 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string839.str., i32 0, i32 0), align 4
@_oat_string836.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string836 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string836.str., i32 0, i32 0), align 4
@_oat_string830.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string830 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string830.str., i32 0, i32 0), align 4
@_oat_string827.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string827 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string827.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh224:
  call void @strs843.init(  )
  ret void
}


define i32 @program (i32 %argc850, { i32, [ 0 x i8* ] }* %argv848){

__fresh223:
  %argc_slot851 = alloca i32
  store i32 %argc850, i32* %argc_slot851
  %argv_slot849 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv848, { i32, [ 0 x i8* ] }** %argv_slot849
  %index_ptr852 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs843, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %index_ptr853 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs843, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs854 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs843
  call void @print_string( { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs854 )
  ret i32 0
}


define void @strs843.init (){

__fresh222:
  %array_ptr823 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array824 = bitcast { i32, [ 0 x i32 ] }* %array_ptr823 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr825 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array826 = bitcast { i32, [ 0 x i32 ] }* %array_ptr825 to { i32, [ 0 x i8* ] }* 
  %strval828 = load i8** @_oat_string827
  %index_ptr829 = getelementptr { i32, [ 0 x i8* ] }* %array826, i32 0, i32 1, i32 0
  store i8* %strval828, i8** %index_ptr829
  %strval831 = load i8** @_oat_string830
  %index_ptr832 = getelementptr { i32, [ 0 x i8* ] }* %array826, i32 0, i32 1, i32 1
  store i8* %strval831, i8** %index_ptr832
  %index_ptr833 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array824, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array826, { i32, [ 0 x i8* ] }** %index_ptr833
  %array_ptr834 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array835 = bitcast { i32, [ 0 x i32 ] }* %array_ptr834 to { i32, [ 0 x i8* ] }* 
  %strval837 = load i8** @_oat_string836
  %index_ptr838 = getelementptr { i32, [ 0 x i8* ] }* %array835, i32 0, i32 1, i32 0
  store i8* %strval837, i8** %index_ptr838
  %strval840 = load i8** @_oat_string839
  %index_ptr841 = getelementptr { i32, [ 0 x i8* ] }* %array835, i32 0, i32 1, i32 1
  store i8* %strval840, i8** %index_ptr841
  %index_ptr842 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array824, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array835, { i32, [ 0 x i8* ] }** %index_ptr842
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array824, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs843
  ret void
}


