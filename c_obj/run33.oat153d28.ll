declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh52:
  ret void
}


define i32 @program (i32 %argc146, { i32, [ 0 x i8* ] }* %argv144){

__fresh49:
  %argc_slot147 = alloca i32
  store i32 %argc146, i32* %argc_slot147
  %argv_slot145 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv144, { i32, [ 0 x i8* ] }** %argv_slot145
  %array_ptr148 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array149 = bitcast { i32, [ 0 x i32 ] }* %array_ptr148 to { i32, [ 0 x i1 ] }* 
  %index_ptr150 = getelementptr { i32, [ 0 x i1 ] }* %array149, i32 0, i32 1, i32 0
  store i1 1, i1* %index_ptr150
  %index_ptr151 = getelementptr { i32, [ 0 x i1 ] }* %array149, i32 0, i32 1, i32 1
  store i1 0, i1* %index_ptr151
  %b152 = alloca { i32, [ 0 x i1 ] }*
  store { i32, [ 0 x i1 ] }* %array149, { i32, [ 0 x i1 ] }** %b152
  %i153 = alloca i32
  store i32 0, i32* %i153
  %index_ptr154 = getelementptr { i32, [ 0 x i1 ] }** %b152, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs155 = load { i32, [ 0 x i1 ] }** %b152
  br { i32, [ 0 x i1 ] }* %_lhs155, label %__then48, label %__else47

__fresh50:
  br label %__then48

__then48:
  store i32 1, i32* %i153
  br label %__merge46

__fresh51:
  br label %__else47

__else47:
  br label %__merge46

__merge46:
  %_lhs156 = load i32* %i153
  ret i32 %_lhs156
}


