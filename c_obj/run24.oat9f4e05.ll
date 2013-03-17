declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a150 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a150.init
define void @oat_init (){

__fresh36:
  call void @a150.init(  )
  ret void
}


define i32 @program (i32 %argc153, { i32, [ 0 x i8* ] }* %argv151){

__fresh35:
  %argc_slot154 = alloca i32
  store i32 %argc153, i32* %argc_slot154
  %argv_slot152 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv151, { i32, [ 0 x i8* ] }** %argv_slot152
  %index_ptr155 = getelementptr { i32, [ 0 x i32 ] }** @a150, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs157 = load { i32, [ 0 x i32 ] }** @a150
  ret { i32, [ 0 x i32 ] }* %_lhs157
}


define void @a150.init (){

__fresh34:
  %array_ptr140 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array141 = bitcast { i32, [ 0 x i32 ] }* %array_ptr140 to { i32, [ 0 x i32 ] }* 
  %bop142 = mul i32 12, 7
  %bop143 = add i32 %bop142, 13
  %bop144 = ashr i32 %bop143, 2
  %index_ptr145 = getelementptr { i32, [ 0 x i32 ] }* %array141, i32 0, i32 1, i32 0
  store i32 %bop144, i32* %index_ptr145
  %bop146 = sub i32 9, 4
  %index_ptr147 = getelementptr { i32, [ 0 x i32 ] }* %array141, i32 0, i32 1, i32 1
  store i32 %bop146, i32* %index_ptr147
  %bop148 = add i32 5, 5
  %index_ptr149 = getelementptr { i32, [ 0 x i32 ] }* %array141, i32 0, i32 1, i32 2
  store i32 %bop148, i32* %index_ptr149
  store { i32, [ 0 x i32 ] }* %array141, { i32, [ 0 x i32 ] }** @a150
  ret void
}


