declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs888 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs888.init
@_oat_string885.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string885 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string885.str., i32 0, i32 0), align 4
@_oat_string882.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string882 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string882.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh344:
  call void @strs888.init(  )
  ret void
}


define i32 @program (i32 %argc893, { i32, [ 0 x i8* ] }* %argv891){

__fresh343:
  %argc_slot894 = alloca i32
  store i32 %argc893, i32* %argc_slot894
  %argv_slot892 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv891, { i32, [ 0 x i8* ] }** %argv_slot892
  %index_ptr895 = getelementptr { i32, [ 0 x i8* ] }** @strs888, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs896 = load { i32, [ 0 x i8* ] }** @strs888
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs896 )
  ret i32 0
}


define void @strs888.init (){

__fresh342:
  %array_ptr880 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array881 = bitcast { i32, [ 0 x i32 ] }* %array_ptr880 to { i32, [ 0 x i8* ] }* 
  %strval883 = load i8** @_oat_string882
  %index_ptr884 = getelementptr { i32, [ 0 x i8* ] }* %array881, i32 0, i32 1, i32 0
  store i8* %strval883, i8** %index_ptr884
  %strval886 = load i8** @_oat_string885
  %index_ptr887 = getelementptr { i32, [ 0 x i8* ] }* %array881, i32 0, i32 1, i32 1
  store i8* %strval886, i8** %index_ptr887
  store { i32, [ 0 x i8* ] }* %array881, { i32, [ 0 x i8* ] }** @strs888
  ret void
}


