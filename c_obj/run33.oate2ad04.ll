declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh43:
  ret void
}


define i32 @program (i32 %argc155, { i32, [ 0 x i8* ] }* %argv153){

__fresh40:
  %argc_slot156 = alloca i32
  store i32 %argc155, i32* %argc_slot156
  %argv_slot154 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv153, { i32, [ 0 x i8* ] }** %argv_slot154
  %array_ptr157 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array158 = bitcast { i32, [ 0 x i32 ] }* %array_ptr157 to { i32, [ 0 x i1 ] }* 
  %index_ptr159 = getelementptr { i32, [ 0 x i1 ] }* %array158, i32 0, i32 1, i32 0
  store i1 1, i1* %index_ptr159
  %index_ptr160 = getelementptr { i32, [ 0 x i1 ] }* %array158, i32 0, i32 1, i32 1
  store i1 0, i1* %index_ptr160
  %b161 = alloca { i32, [ 0 x i1 ] }*
  store { i32, [ 0 x i1 ] }* %array158, { i32, [ 0 x i1 ] }** %b161
  %i162 = alloca i32
  store i32 0, i32* %i162
  %index_ptr163 = getelementptr { i32, [ 0 x i1 ] }** %b161, i32 0
  %_lhs164 = load { i32, [ 0 x i1 ] }** %b161
  br { i32, [ 0 x i1 ] }* %_lhs164, label %__then39, label %__else38

__fresh41:
  br label %__then39

__then39:
  store i32 1, i32* %i162
  br label %__merge37

__fresh42:
  br label %__else38

__else38:
  br label %__merge37

__merge37:
  %_lhs165 = load i32* %i162
  ret i32 %_lhs165
}


