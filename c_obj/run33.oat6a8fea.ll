declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh54:
  ret void
}


define i32 @program (i32 %argc160, { i32, [ 0 x i8* ] }* %argv158){

__fresh51:
  %argc_slot161 = alloca i32
  store i32 %argc160, i32* %argc_slot161
  %argv_slot159 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv158, { i32, [ 0 x i8* ] }** %argv_slot159
  %array_ptr162 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array163 = bitcast { i32, [ 0 x i32 ] }* %array_ptr162 to { i32, [ 0 x i1 ] }* 
  %index_ptr164 = getelementptr { i32, [ 0 x i1 ] }* %array163, i32 0, i32 1, i32 0
  store i1 1, i1* %index_ptr164
  %index_ptr165 = getelementptr { i32, [ 0 x i1 ] }* %array163, i32 0, i32 1, i32 1
  store i1 0, i1* %index_ptr165
  %b166 = alloca { i32, [ 0 x i1 ] }*
  store { i32, [ 0 x i1 ] }* %array163, { i32, [ 0 x i1 ] }** %b166
  %i167 = alloca i32
  store i32 0, i32* %i167
  %size_ptr169 = getelementptr { i32, [ 0 x i1 ] }* %b166, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr169, i32 0 )
  %index_ptr168 = getelementptr { i32, [ 0 x i1 ] }* %b166, i32 0, i32 1, i32 0
  %_lhs170 = load { i32, [ 0 x i1 ] }** %b166
  br { i32, [ 0 x i1 ] }* %_lhs170, label %__then50, label %__else49

__fresh52:
  br label %__then50

__then50:
  store i32 1, i32* %i167
  br label %__merge48

__fresh53:
  br label %__else49

__else49:
  br label %__merge48

__merge48:
  %_lhs171 = load i32* %i167
  ret i32 %_lhs171
}


