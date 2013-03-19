declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs971 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs971.init
@_oat_string967.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string967 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string967.str., i32 0, i32 0), align 4
@_oat_string964.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string964 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string964.str., i32 0, i32 0), align 4
@_oat_string958.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string958 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string958.str., i32 0, i32 0), align 4
@_oat_string955.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string955 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string955.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh419:
  call void @strs971.init(  )
  ret void
}


define i32 @program (i32 %argc978, { i32, [ 0 x i8* ] }* %argv976){

__fresh418:
  %argc_slot979 = alloca i32
  store i32 %argc978, i32* %argc_slot979
  %argv_slot977 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv976, { i32, [ 0 x i8* ] }** %argv_slot977
  %size_ptr981 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs971, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr981, i32 1 )
  %index_ptr980 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs971, i32 0, i32 1, i32 1
  %size_ptr983 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs971, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr983, i32 1 )
  %index_ptr982 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs971, i32 0, i32 1, i32 1
  %_lhs984 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs971
  call void @print_string( { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs984 )
  ret i32 0
}


define void @strs971.init (){

__fresh417:
  %array_ptr951 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array952 = bitcast { i32, [ 0 x i32 ] }* %array_ptr951 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr953 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array954 = bitcast { i32, [ 0 x i32 ] }* %array_ptr953 to { i32, [ 0 x i8* ] }* 
  %strval956 = load i8** @_oat_string955
  %index_ptr957 = getelementptr { i32, [ 0 x i8* ] }* %array954, i32 0, i32 1, i32 0
  store i8* %strval956, i8** %index_ptr957
  %strval959 = load i8** @_oat_string958
  %index_ptr960 = getelementptr { i32, [ 0 x i8* ] }* %array954, i32 0, i32 1, i32 1
  store i8* %strval959, i8** %index_ptr960
  %index_ptr961 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array952, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array954, { i32, [ 0 x i8* ] }** %index_ptr961
  %array_ptr962 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array963 = bitcast { i32, [ 0 x i32 ] }* %array_ptr962 to { i32, [ 0 x i8* ] }* 
  %strval965 = load i8** @_oat_string964
  %index_ptr966 = getelementptr { i32, [ 0 x i8* ] }* %array963, i32 0, i32 1, i32 0
  store i8* %strval965, i8** %index_ptr966
  %strval968 = load i8** @_oat_string967
  %index_ptr969 = getelementptr { i32, [ 0 x i8* ] }* %array963, i32 0, i32 1, i32 1
  store i8* %strval968, i8** %index_ptr969
  %index_ptr970 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array952, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array963, { i32, [ 0 x i8* ] }** %index_ptr970
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array952, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs971
  ret void
}


